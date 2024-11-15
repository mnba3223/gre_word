# greword

greword Flutter project.

有使用fvm flutter 版本為 3.24.3



## Getting Started
 啟動時請帶入參數為 --dart-define-from-file=env/dev.json，讀取環境變數。




# command

flutter packages pub run build_runner build --delete-conflicting-outputs


# 目錄結構
lib/
  ├── app/
  │   ├── app.dart
  │   ├── bloc_observer.dart
  │   └── repositories.dart
  │
  ├── config/
  │   ├── environment.dart
  │   └── router/
  │       └── app_router.dart
  │
  ├── core/
  │   └── services/
  │       └── apis/
  │           └── dio_client.dart
  │
  ├── features/
  │   ├── greword/
  │   │   ├── data/
  │   │   │   ├── models/
  │   │   │   │   └── gre_word_model.dart
  │   │   │   └── repositories/
  │   │   │       └── gre_repository.dart
  │   │   └── presentation/
  │   │       ├── bloc/
  │   │       │   ├── getword_bloc.dart
  │   │       │   ├── getword_event.dart
  │   │       │   └── getword_state.dart
  │   │       └── pages/
  │   │           └── gre_word_page.dart
  │   └── home/
  │       └── presentation/
  │           └── pages/
  │               └── home_page.dart
  │
  ├── shared/
  │   ├── utils/
  │   │   └── csv_asset_loader.dart
  │   └── widgets/
  │       └── main.dart
  │
  └── main.dart


