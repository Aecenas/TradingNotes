# TradingNotes

交易复盘记录 App（Flutter 单代码库，iOS/Android）。

## Tech Stack
- Flutter
- Riverpod
- go_router
- Drift + SQLCipher (`sqlcipher_flutter_libs`)
- flutter_secure_storage
- image_picker

## Quick Start
```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter analyze
flutter test
flutter run
```

## Route Contract
- `/trades`
- `/trades/new`
- `/trades/:id`
- `/trades/:id/edit`
- `/legs/new?tradeId=...`
- `/legs/:id/edit`
- `/events/new?tradeId=...&scope=...`
- `/events/:id/edit`
- `/trades/:id/close`
- `/trades/:id/review`
- `/stats`
- `/settings`

## Docs
- `docs/manual_regression_checklist.md`
- `docs/release_notes_v1.0.0.md`
- `docs/rollback_plan.md`
