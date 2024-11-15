import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:greword/features/greword/data/models/gre_word_model.dart';
import 'package:greword/features/greword/data/repositories/gre_repository.dart';
import 'package:greword/features/greword/presentation/bloc/getword_bloc.dart';
import 'package:greword/features/greword/presentation/bloc/getword_event.dart';
import 'package:greword/features/greword/presentation/bloc/getword_state.dart';

class GreWordPage extends StatelessWidget {
  const GreWordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GreWordBloc(
        context.read<GreWordRepository>(),
      )..add(LoadGreWord()),
      child: const GreWordView(),
    );
  }
}

class GreWordView extends StatelessWidget {
  const GreWordView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GreWordBloc, GreWordState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('GRE Word'),
            centerTitle: true,
          ),
          body: _buildBody(context, state),
        );
      },
    );
  }

  Widget _buildBody(BuildContext context, GreWordState state) {
    if (state is GreWordLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (state is GreWordError) {
      return Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline,
                size: 48,
                color: Colors.red,
              ),
              const SizedBox(height: 16),
              Text(
                state.message,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () {
                  context.read<GreWordBloc>().add(LoadGreWord());
                },
                icon: const Icon(Icons.refresh),
                label: const Text('Try Again'),
              ),
            ],
          ),
        ),
      );
    }

    if (state is GreWordLoaded) {
      return _WordCard(word: state.word);
    }

    return const SizedBox.shrink();
  }
}

class _WordCard extends StatelessWidget {
  final GreWordData word; // 改用 GreWordData

  const _WordCard({
    required this.word,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: GestureDetector(
          onTap: () {
            context.read<GreWordBloc>().add(PlayWordSound(word.word));
          },
          child: Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    word.word,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).primaryColor,
                        ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    word.meaning,
                    style: Theme.of(context).textTheme.bodyLarge,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  // ... 剩餘代碼保持不變
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
