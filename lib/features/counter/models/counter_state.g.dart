// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CounterState _$CounterStateFromJson(Map<String, dynamic> json) =>
    _CounterState(
      count: (json['count'] as num?)?.toInt() ?? 0,
      isLoading: json['isLoading'] as bool? ?? false,
      errorMessage: json['errorMessage'] as String?,
    );

Map<String, dynamic> _$CounterStateToJson(_CounterState instance) =>
    <String, dynamic>{
      'count': instance.count,
      'isLoading': instance.isLoading,
      'errorMessage': instance.errorMessage,
    };
