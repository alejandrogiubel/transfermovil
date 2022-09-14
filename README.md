[![Codacy Badge](https://api.codacy.com/project/badge/Grade/f38942eda5d54ffc87b583c2b2442dc1)](https://app.codacy.com/gh/alejandrogiubel/transfermovil?utm_source=github.com&utm_medium=referral&utm_content=alejandrogiubel/transfermovil&utm_campaign=Badge_Grade_Settings)
[![Codacy Badge](https://app.codacy.com/project/badge/Grade/590b7e2d25444c04b339842c9162c6cb)](https://www.codacy.com/gh/alejandrogiubel/transfermovil/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=alejandrogiubel/transfermovil&amp;utm_campaign=Badge_Grade)

A Flutter package to use Transfermóvil online payment method.

## Features

Open Transfermovil Android App in online payment view.

## Usage

Just add this to your `pubspec.yaml`:

```yaml
  dependencies:
    transfermovil: ^1.0.0
```

Or

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
