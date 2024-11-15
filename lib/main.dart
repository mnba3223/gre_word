import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greword/app/app.dart';
import 'package:greword/app/bloc_observer.dart';
import 'package:greword/app/repositories.dart';
import 'package:greword/shared/utils/csv_asset_loader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // 初始化本地化
  await EasyLocalization.ensureInitialized();

  // 設置 Bloc Observer
  Bloc.observer = AppBlocObserver();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('zh', 'TW'),
        Locale('zh', 'CN'),
        Locale('ja', 'JP')
      ],
      path: 'assets/translations',
      fallbackLocale: const Locale('zh', 'TW'),
      startLocale: const Locale('zh', 'TW'),
      assetLoader: const CsvAssetLoader(),
      child: const Repositories(
        child: MyApp(),
      ),
    ),
  );
}
