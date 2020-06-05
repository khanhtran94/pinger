import 'package:flutter/material.dart';
import 'package:pinger/assets.dart';
import 'package:pinger/extensions.dart';
import 'package:pinger/resources.dart';

class IntroPage extends StatefulWidget {
  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final _indicatorColor = ColorTween(
    begin: R.colors.secondary,
    end: R.colors.grayLight,
  );
  final _bottomContentHeight = 160.0;
  final _nextButtonSize = 64.0;
  final _pageProgress = ValueNotifier(0.0);
  final _itemCount = 4;
  int _currentItem = 0;
  double _pageWidth;
  PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentItem)
      ..addListener(_updateProgress);
  }

  @override
  void dispose() {
    _pageController.dispose();
    _pageProgress.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _pageWidth = MediaQuery.of(context).size.width;
    _updateProgress();
  }

  void _updateProgress() {
    if (_pageController.hasClients) {
      _pageProgress.value = _pageController.offset / _pageWidth;
    }
  }

  void _onNextPressed() => _moveToPage(_currentItem + 1);

  void _moveToPage(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: <Widget>[
          Positioned.fill(
            child: _buildItemsPager(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _buildItemsIndicator(),
                  SizedBox(height: 16.0),
                  _buildButtons(),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  Widget _buildItemsPager() {
    return PageView(
      controller: _pageController,
      onPageChanged: (it) => _currentItem = it,
      children: <Widget>[
        _buildItem(
          0,
          Images.undrawSearching,
          "Select host",
          "Either pick one of the search results or enter your own host and confirm your choice",
        ),
        _buildItem(
          1,
          Images.undrawSettings,
          "Adjust settings",
          "Change host monitoring preferences and behavior of entire application",
        ),
        _buildItem(
          2,
          Images.undrawSignalSearching,
          "Ping host",
          "Either perform a quick ping by long pressing play button or tap it to start ping session",
        ),
        _buildItem(
          3,
          Images.undrawCollecting,
          "Save results",
          "Archive ping results to review them later and compare them with rest of the world",
        ),
      ],
    );
  }

  Widget _buildItem(
      int index, AssetImage image, String title, String description) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(bottom: _bottomContentHeight),
        padding: const EdgeInsets.fromLTRB(32.0, 0.0, 32.0, 16.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Spacer(),
            _buildItemImage(index, image),
            Spacer(),
            Text(
              title,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Container(height: 16.0),
            Text(
              description,
              style: TextStyle(fontSize: 18.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildItemImage(int index, AssetImage image) {
    return ValueListenableBuilder<double>(
      valueListenable: _pageProgress,
      builder: (_, progress, child) {
        final relativeProgress = (progress - index).clamp(-1.0, 1.0).abs();
        return Opacity(
          opacity: 1 - relativeProgress,
          child: FractionalTranslation(
            translation: Offset(relativeProgress, 0.0),
            child: child,
          ),
        );
      },
      child: Image(image: image, width: 200.0, height: 200.0),
    );
  }

  Widget _buildItemsIndicator() {
    return ValueListenableBuilder<double>(
      valueListenable: _pageProgress,
      builder: (_, progress, __) => Row(
        mainAxisSize: MainAxisSize.min,
        children: List<Widget>.generate(
          _itemCount,
          (index) {
            final relativeProgress = (progress - index).clamp(-1.0, 1.0).abs();
            return GestureDetector(
              onTap: () => _moveToPage(index),
              child: Container(
                margin: const EdgeInsets.all(8.0),
                height: 16.0,
                width: 32.0 - 16.0 * relativeProgress,
                decoration: BoxDecoration(
                  color: _indicatorColor.transform(relativeProgress),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildButtons() {
    return ValueListenableBuilder<double>(
      valueListenable: _pageProgress,
      builder: (_, progress, __) => SizedBox(
        height: _nextButtonSize,
        child: Align(
          alignment: Alignment.center,
          child: TweenAnimationBuilder<double>(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            tween: Tween(
              begin: 0.0,
              end: progress > _itemCount - 1.5 ? 1.0 : 0.0,
            ),
            builder: (_, expansion, __) => SizedBox(
              height: _nextButtonSize,
              child: Stack(children: <Widget>[
                _buildSkipButton(expansion),
                _buildNextButton(expansion),
              ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSkipButton(double value) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Opacity(
        opacity: 1.0 - value,
        child: ButtonTheme.fromButtonThemeData(
          data: R.themes.flatButton,
          child: FlatButton(
            child: Text("SKIP"),
            onPressed: value < 1.0 ? pop : null,
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton(double expansion) {
    final raisedButtonWidth =
        (R.themes.raisedButton.minWidth - _nextButtonSize) * expansion +
            _nextButtonSize;
    return Align(
      alignment: Alignment(1.0 - expansion, 0.0),
      child: SizedBox(
        height: _nextButtonSize - 16.0 * expansion,
        child: ButtonTheme.fromButtonThemeData(
          data: R.themes.raisedButton.copyWith(
            minWidth: raisedButtonWidth,
          ),
          child: RaisedButton(
            padding: EdgeInsets.only(
              left: 20.0 * expansion,
              right: 12.0 * expansion,
            ),
            onPressed: expansion > 0.5 ? pop : _onNextPressed,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ClipRect(
                  child: Align(
                    widthFactor: expansion,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Opacity(
                        opacity: expansion,
                        child: Text("Get started"),
                      ),
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  size: _nextButtonSize / 2 - 8.0 * expansion,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
