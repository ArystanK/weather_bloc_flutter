// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) => $checkedCreate(
      'Location',
      json,
      ($checkedConvert) {
        final val = Location(
          title: $checkedConvert('title', (v) => v as String),
          locationType: $checkedConvert(
              'location_type', (v) => _$enumDecode(_$LocationTypeEnumMap, v)),
          latLng: $checkedConvert('latt_long',
              (v) => const LatLngConverter().fromJson(v as String)),
          woeid: $checkedConvert('woeid', (v) => v as int),
        );
        return val;
      },
      fieldKeyMap: const {
        'locationType': 'location_type',
        'latLng': 'latt_long'
      },
    );

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

const _$LocationTypeEnumMap = {
  LocationType.city: 'City',
  LocationType.region: 'Region',
  LocationType.state: 'State',
  LocationType.province: 'Province',
  LocationType.country: 'Country',
  LocationType.continent: 'Continent',
};
