// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'ping_session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

PingHost _$PingHostFromJson(Map<String, dynamic> json) {
  return _PingHost.fromJson(json);
}

mixin _$PingHost {
  String get name;
  String get ip;
  String get avatarUrl;

  PingHost copyWith({String name, String ip, String avatarUrl});

  Map<String, dynamic> toJson();
}

class _$PingHostTearOff {
  const _$PingHostTearOff();

  _PingHost call(
      {@required String name,
      @required String ip,
      @required String avatarUrl}) {
    return _PingHost(
      name: name,
      ip: ip,
      avatarUrl: avatarUrl,
    );
  }
}

const $PingHost = _$PingHostTearOff();

@JsonSerializable()
class _$_PingHost implements _PingHost {
  _$_PingHost(
      {@required this.name, @required this.ip, @required this.avatarUrl})
      : assert(name != null),
        assert(ip != null),
        assert(avatarUrl != null);

  factory _$_PingHost.fromJson(Map<String, dynamic> json) =>
      _$_$_PingHostFromJson(json);

  @override
  final String name;
  @override
  final String ip;
  @override
  final String avatarUrl;

  @override
  String toString() {
    return 'PingHost(name: $name, ip: $ip, avatarUrl: $avatarUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PingHost &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.ip, ip) ||
                const DeepCollectionEquality().equals(other.ip, ip)) &&
            (identical(other.avatarUrl, avatarUrl) ||
                const DeepCollectionEquality()
                    .equals(other.avatarUrl, avatarUrl)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(ip) ^
      const DeepCollectionEquality().hash(avatarUrl);

  @override
  _$_PingHost copyWith({
    Object name = freezed,
    Object ip = freezed,
    Object avatarUrl = freezed,
  }) {
    return _$_PingHost(
      name: name == freezed ? this.name : name as String,
      ip: ip == freezed ? this.ip : ip as String,
      avatarUrl: avatarUrl == freezed ? this.avatarUrl : avatarUrl as String,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PingHostToJson(this);
  }
}

abstract class _PingHost implements PingHost {
  factory _PingHost(
      {@required String name,
      @required String ip,
      @required String avatarUrl}) = _$_PingHost;

  factory _PingHost.fromJson(Map<String, dynamic> json) = _$_PingHost.fromJson;

  @override
  String get name;
  @override
  String get ip;
  @override
  String get avatarUrl;

  @override
  _PingHost copyWith({String name, String ip, String avatarUrl});
}

PingSession _$PingSessionFromJson(Map<String, dynamic> json) {
  return _PingSession.fromJson(json);
}

mixin _$PingSession {
  int get id;
  PingHost get host;
  DateTime get timestamp;
  Duration get duration;
  PingResults get results;
  PingSettings get settings;

  PingSession copyWith(
      {int id,
      PingHost host,
      DateTime timestamp,
      Duration duration,
      PingResults results,
      PingSettings settings});

  Map<String, dynamic> toJson();
}

class _$PingSessionTearOff {
  const _$PingSessionTearOff();

  _PingSession call(
      {@required int id,
      @required PingHost host,
      @required DateTime timestamp,
      @required Duration duration,
      @required PingResults results,
      @required PingSettings settings}) {
    return _PingSession(
      id: id,
      host: host,
      timestamp: timestamp,
      duration: duration,
      results: results,
      settings: settings,
    );
  }
}

const $PingSession = _$PingSessionTearOff();

@JsonSerializable()
class _$_PingSession implements _PingSession {
  _$_PingSession(
      {@required this.id,
      @required this.host,
      @required this.timestamp,
      @required this.duration,
      @required this.results,
      @required this.settings})
      : assert(id != null),
        assert(host != null),
        assert(timestamp != null),
        assert(duration != null),
        assert(results != null),
        assert(settings != null);

  factory _$_PingSession.fromJson(Map<String, dynamic> json) =>
      _$_$_PingSessionFromJson(json);

  @override
  final int id;
  @override
  final PingHost host;
  @override
  final DateTime timestamp;
  @override
  final Duration duration;
  @override
  final PingResults results;
  @override
  final PingSettings settings;

  @override
  String toString() {
    return 'PingSession(id: $id, host: $host, timestamp: $timestamp, duration: $duration, results: $results, settings: $settings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PingSession &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)) &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.settings, settings) ||
                const DeepCollectionEquality()
                    .equals(other.settings, settings)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(host) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(duration) ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(settings);

  @override
  _$_PingSession copyWith({
    Object id = freezed,
    Object host = freezed,
    Object timestamp = freezed,
    Object duration = freezed,
    Object results = freezed,
    Object settings = freezed,
  }) {
    return _$_PingSession(
      id: id == freezed ? this.id : id as int,
      host: host == freezed ? this.host : host as PingHost,
      timestamp: timestamp == freezed ? this.timestamp : timestamp as DateTime,
      duration: duration == freezed ? this.duration : duration as Duration,
      results: results == freezed ? this.results : results as PingResults,
      settings: settings == freezed ? this.settings : settings as PingSettings,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PingSessionToJson(this);
  }
}

abstract class _PingSession implements PingSession {
  factory _PingSession(
      {@required int id,
      @required PingHost host,
      @required DateTime timestamp,
      @required Duration duration,
      @required PingResults results,
      @required PingSettings settings}) = _$_PingSession;

  factory _PingSession.fromJson(Map<String, dynamic> json) =
      _$_PingSession.fromJson;

  @override
  int get id;
  @override
  PingHost get host;
  @override
  DateTime get timestamp;
  @override
  Duration get duration;
  @override
  PingResults get results;
  @override
  PingSettings get settings;

  @override
  _PingSession copyWith(
      {int id,
      PingHost host,
      DateTime timestamp,
      Duration duration,
      PingResults results,
      PingSettings settings});
}

PingResults _$PingResultsFromJson(Map<String, dynamic> json) {
  return _PingResults.fromJson(json);
}

mixin _$PingResults {
  List<double> get values;
  PingStats get stats;

  PingResults copyWith({List<double> values, PingStats stats});

  Map<String, dynamic> toJson();
}

class _$PingResultsTearOff {
  const _$PingResultsTearOff();

  _PingResults call(
      {@required List<double> values, @required PingStats stats}) {
    return _PingResults(
      values: values,
      stats: stats,
    );
  }
}

const $PingResults = _$PingResultsTearOff();

@JsonSerializable()
class _$_PingResults implements _PingResults {
  _$_PingResults({@required this.values, @required this.stats})
      : assert(values != null),
        assert(stats != null);

  factory _$_PingResults.fromJson(Map<String, dynamic> json) =>
      _$_$_PingResultsFromJson(json);

  @override
  final List<double> values;
  @override
  final PingStats stats;

  @override
  String toString() {
    return 'PingResults(values: $values, stats: $stats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PingResults &&
            (identical(other.values, values) ||
                const DeepCollectionEquality().equals(other.values, values)) &&
            (identical(other.stats, stats) ||
                const DeepCollectionEquality().equals(other.stats, stats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(values) ^
      const DeepCollectionEquality().hash(stats);

  @override
  _$_PingResults copyWith({
    Object values = freezed,
    Object stats = freezed,
  }) {
    return _$_PingResults(
      values: values == freezed ? this.values : values as List<double>,
      stats: stats == freezed ? this.stats : stats as PingStats,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PingResultsToJson(this);
  }
}

abstract class _PingResults implements PingResults {
  factory _PingResults(
      {@required List<double> values,
      @required PingStats stats}) = _$_PingResults;

  factory _PingResults.fromJson(Map<String, dynamic> json) =
      _$_PingResults.fromJson;

  @override
  List<double> get values;
  @override
  PingStats get stats;

  @override
  _PingResults copyWith({List<double> values, PingStats stats});
}

PingStats _$PingStatsFromJson(Map<String, dynamic> json) {
  return _PingStats.fromJson(json);
}

mixin _$PingStats {
  double get min;
  double get max;
  double get mean;

  PingStats copyWith({double min, double max, double mean});

  Map<String, dynamic> toJson();
}

class _$PingStatsTearOff {
  const _$PingStatsTearOff();

  _PingStats call(
      {@required double min, @required double max, @required double mean}) {
    return _PingStats(
      min: min,
      max: max,
      mean: mean,
    );
  }
}

const $PingStats = _$PingStatsTearOff();

@JsonSerializable()
class _$_PingStats implements _PingStats {
  _$_PingStats({@required this.min, @required this.max, @required this.mean})
      : assert(min != null),
        assert(max != null),
        assert(mean != null);

  factory _$_PingStats.fromJson(Map<String, dynamic> json) =>
      _$_$_PingStatsFromJson(json);

  @override
  final double min;
  @override
  final double max;
  @override
  final double mean;

  @override
  String toString() {
    return 'PingStats(min: $min, max: $max, mean: $mean)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PingStats &&
            (identical(other.min, min) ||
                const DeepCollectionEquality().equals(other.min, min)) &&
            (identical(other.max, max) ||
                const DeepCollectionEquality().equals(other.max, max)) &&
            (identical(other.mean, mean) ||
                const DeepCollectionEquality().equals(other.mean, mean)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(min) ^
      const DeepCollectionEquality().hash(max) ^
      const DeepCollectionEquality().hash(mean);

  @override
  _$_PingStats copyWith({
    Object min = freezed,
    Object max = freezed,
    Object mean = freezed,
  }) {
    return _$_PingStats(
      min: min == freezed ? this.min : min as double,
      max: max == freezed ? this.max : max as double,
      mean: mean == freezed ? this.mean : mean as double,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PingStatsToJson(this);
  }
}

abstract class _PingStats implements PingStats {
  factory _PingStats(
      {@required double min,
      @required double max,
      @required double mean}) = _$_PingStats;

  factory _PingStats.fromJson(Map<String, dynamic> json) =
      _$_PingStats.fromJson;

  @override
  double get min;
  @override
  double get max;
  @override
  double get mean;

  @override
  _PingStats copyWith({double min, double max, double mean});
}
