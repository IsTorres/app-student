# AGENTS.md

## Project Structure

- `flutter_application_1/` — Flutter app root
- `lib/main.dart` — App entry point; `MyApp` widget tree
- `test/widget_test.dart` — Default smoke test

## Commands

```bash
# Lint and analyze
flutter analyze

# Run all tests
flutter test

# Run on connected device/emulator
flutter run

# Build for a platform
flutter build apk        # Android
flutter build ios        # iOS (macOS only)
flutter build web        # Web
```

## Configuration

- `pubspec.yaml` — SDK constraint: `^3.11.5`, dependencies, assets
- `analysis_options.yaml` — Uses `package:flutter_lints/flutter.yaml`
- `.metadata` — Flutter channel `stable`, revision `cc0734ac716fbb8b90f3f9db8020958b1553afa7`

## Notes

- `flutter pub get` must be run after modifying `pubspec.yaml`
- Tests run with `flutter_test` SDK; no external test runner needed
- The default `main.dart` has a known bug: `ColorScheme.fromSeed` and `MainAxisAlignment.center` are missing their class prefixes — fix if encountered
