import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study_jam_25/counter/provider.dart';

/// stateless
class CounterWithState extends ConsumerWidget {
  const CounterWithState({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    /// using the provider to get the value of the counter
    final counter = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(title: Text("Counter with State Mgt.")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            Text('$counter', style: Theme.of(context).textTheme.headlineMedium),
            Text(
              'Helo Flutter',
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          /// for updating the value of the counter
          ref.read(counterProvider.notifier).state = (counter + 1);
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

/// stateful
class ConsumerWithState2 extends ConsumerStatefulWidget {
  const ConsumerWithState2({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ConsumerWithState2State();
}

class _ConsumerWithState2State extends ConsumerState<ConsumerWithState2> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
