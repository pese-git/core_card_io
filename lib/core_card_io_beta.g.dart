// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_card_io_beta.dart';

// **************************************************************************
// DataClassGenerator
// **************************************************************************

mixin _$CoreCardIoResponse {
  CoreCardIoCardType get cardType;
  String? get cardholderName;
  String? get cardNumber;
  String? get redactedCardNumber;
  int? get expiryMonth;
  int? get expiryYear;
  String? get cvv;
  String? get postalCode;
  bool operator ==(other) {
    if (identical(this, other)) return true;
    if (other is! CoreCardIoResponse) return false;

    return true &&
        this.cardType == other.cardType &&
        this.cardholderName == other.cardholderName &&
        this.cardNumber == other.cardNumber &&
        this.redactedCardNumber == other.redactedCardNumber &&
        this.expiryMonth == other.expiryMonth &&
        this.expiryYear == other.expiryYear &&
        this.cvv == other.cvv &&
        this.postalCode == other.postalCode;
  }

  int get hashCode {
    return mapPropsToHashCode([
      cardType,
      cardholderName,
      cardNumber,
      redactedCardNumber,
      expiryMonth,
      expiryYear,
      cvv,
      postalCode
    ]);
  }

  String toString() {
    return 'CoreCardIoResponse(cardType=${this.cardType},cardholderName=${this.cardholderName},cardNumber=${this.cardNumber},redactedCardNumber=${this.redactedCardNumber},expiryMonth=${this.expiryMonth},expiryYear=${this.expiryYear},cvv=${this.cvv},postalCode=${this.postalCode})';
  }

  CoreCardIoResponse copyWith(
      {CoreCardIoCardType? cardType,
      String? cardholderName,
      String? cardNumber,
      String? redactedCardNumber,
      int? expiryMonth,
      int? expiryYear,
      String? cvv,
      String? postalCode}) {
    return CoreCardIoResponse(
      cardType: cardType ?? this.cardType,
      cardholderName: cardholderName ?? this.cardholderName,
      cardNumber: cardNumber ?? this.cardNumber,
      redactedCardNumber: redactedCardNumber ?? this.redactedCardNumber,
      expiryMonth: expiryMonth ?? this.expiryMonth,
      expiryYear: expiryYear ?? this.expiryYear,
      cvv: cvv ?? this.cvv,
      postalCode: postalCode ?? this.postalCode,
    );
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CoreCardIoResponse _$CoreCardIoResponseFromJson(Map<String, dynamic> json) {
  return CoreCardIoResponse(
    cardType: _$enumDecode(_$CoreCardIoCardTypeEnumMap, json['cardType']),
    cardholderName: json['cardholderName'] as String?,
    cardNumber: json['cardNumber'] as String?,
    redactedCardNumber: json['redactedCardNumber'] as String?,
    expiryMonth: json['expiryMonth'] as int?,
    expiryYear: json['expiryYear'] as int?,
    cvv: json['cvv'] as String?,
    postalCode: json['postalCode'] as String?,
  );
}

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

const _$CoreCardIoCardTypeEnumMap = {
  CoreCardIoCardType.unknown: 'unknown',
  CoreCardIoCardType.amex: 'amex',
  CoreCardIoCardType.dinersClub: 'dinersClub',
  CoreCardIoCardType.discover: 'discover',
  CoreCardIoCardType.jcb: 'jcb',
  CoreCardIoCardType.masterCard: 'masterCard',
  CoreCardIoCardType.visa: 'visa',
  CoreCardIoCardType.maestro: 'maestro',
};
