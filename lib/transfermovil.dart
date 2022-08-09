library transfermovil;

import 'dart:convert';
import 'dart:io';

import 'package:android_intent_plus/android_intent.dart';

/// Transfermóvil online payment method. Work only in Android device
class Transfermovil {
  /// Open Transfermóvil app in online payment view.
  static Future<void> makeOnlinePayment({
    required int transactionId,
    required double amount,
    required Currency currency,
    required int providerNumber,
  }) async {
    final jsonData = {
      "id_transaccion": transactionId,
      "importe": amount,
      "moneda": currency.name.toUpperCase(),
      "numero_proveedor": providerNumber,
      "version": ""
    };
    final jsonString = json.encode(jsonData);

    if (Platform.isAndroid) {
      final intent = AndroidIntent(
        package: 'cu.etecsa.cubacel.tr.tm',
        action: 'android.intent.action.SEND',
        arguments: {
          'android.intent.extra.TEXT': jsonString,
        },
        type: 'text/plain',
      );
      final canResolve = await intent.canResolveActivity();
      if (canResolve != null && canResolve) {
        intent.launch();
      } else {
        throw Exception('Transfermóvil application not found');
      }
    } else {
      throw Exception('Target OS is not Android');
    }
  }
}

enum Currency {
  cup,
  cuc,
  usd,
}
