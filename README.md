A Flutter package to use Transfermóvil online payment method.

## Features

Open Transfermovil Android App in online payment view.

## Usage

Just add this to your `pubspec.yaml`:

```yaml
  dependencies:
    transfermovil:
      git: https://github.com/alejandrogiubel/transfermovil
```

```dart
Transfermovil.makeOnlinePayment(
  transactionId: 1,
  amount: 1,
  currency: Currency.cuc,
  providerNumber: 1,
);
```

## Additional information

PR are welcome.
