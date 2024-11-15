// lib/app/repositories.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greword/features/greword/data/repositories/gre_repository.dart';

import '../core/serivices/apis/dio_client.dart';

class Repositories extends StatelessWidget {
  final Widget child;
  const Repositories({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioClient(),
        ),
        // RepositoryProvider(
        //   create: (context) => TodoRepository(
        //     context.read<DioClient>(),
        //   ),
        // ),
        // RepositoryProvider(
        //   create: (context) => MockTodoRepository(),
        // ),
        RepositoryProvider(
          create: (context) => GreWordRepository(context.read<DioClient>()),
        ),
      ],
      child: child,
    );
  }
}
