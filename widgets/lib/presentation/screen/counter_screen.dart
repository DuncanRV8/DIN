import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets/presentation/providers/counter_providers.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int cuenta = ref.watch(counterProvider);
    return  Scaffold(
      body: Center(child: Text('Valor: $cuenta', style: Theme.of(context).textTheme.titleLarge,)),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.plus_one),
          onPressed: () {
            ref.read(counterProvider.notifier).state++;
          },
      ),
    );
  }
}
