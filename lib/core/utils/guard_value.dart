import 'package:pokedex/core/utils/log.dart';

T? valueGuardian<T>(dynamic data) {
  if (data == null) {
    return null;
  }

  if (data is T) {
    return data;
  }

  if (T == int) {
    return int.tryParse(data.toString()) as T?;
  } else if (T == double) {
    return double.tryParse(data.toString()) as T?;
  } else if (T == BigInt) {
    return BigInt.tryParse(data.toString()) as T?;
  } else if (T == String) {
    return data.toString() as T;
  } else if (T == bool) {
    final str = data.toString().toLowerCase();
    if (str == 'true' || str == '1') return true as T;
    if (str == 'false' || str == '0') return false as T;
    return null;
  } else if (T == DateTime) {
    return DateTime.tryParse(data.toString()) as T?;
  }

  return null;
}

BigInt toBigInt(
  dynamic value,
) {
  if (value is BigInt) {
    return value;
  }

  if (value is String) {
    try {
      if (value.trim().startsWith('0x')) {
        return BigInt.parse(value.trim().substring(2), radix: 16);
      } else {
        return BigInt.parse(value.trim());
      }
    } catch (e) {
      printLog('Error parsing string to BigInt: $e');
      return BigInt.zero;
    }
  }

  if (value is int) {
    return BigInt.from(value);
  }

  if (value is double) {
    return BigInt.from(value.toInt());
  }

  printLog('Error parsing string to BigInt');
  return BigInt.zero;
}
