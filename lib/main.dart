import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'page_cubit.dart';

class PageObserver extends BlocObserver {
  @override
  void onChange(Cubit cubit, Change change) {
    print('${cubit.runtimeType} $change');
    super.onChange(cubit, change);
  }
}

void main() {
  Bloc.observer = PageObserver();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (_) => PageCubit(),
        child: CounterView(),
      ),
    );
  }
}

/// {@template counter_view}
/// A [StatelessWidget] which reacts to the provided
/// [PageCubit] state and notifies it in response to user input.
/// {@endtemplate}
class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(title: const Text('Page')),
      body: Center(
        child: BlocBuilder<PageCubit, String>(
          builder: (context, state) {
            if (state == 'page2') {
              return Column(
                children: [
                  Text('$state', style: textTheme.headline2),
                  Text('$state', style: textTheme.headline2),
                ],
              );
            } else {
              Text('$state', style: textTheme.headline2);
            }
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              key: const Key('counterView_increment_floatingActionButton'),
              child: const Text('A'),
              onPressed: () => context.bloc<PageCubit>().page1(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              key: const Key('PageView_decrement_floatingActionButton'),
              child: const Text('B'),
              onPressed: () => context.bloc<PageCubit>().page2(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              key: const Key('PageView_decrement_floatingActionButton'),
              child: const Text('C'),
              onPressed: () => context.bloc<PageCubit>().page3(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton(
              key: const Key('PageView_decrement_floatingActionButton'),
              child: const Text('D'),
              onPressed: () => context.bloc<PageCubit>().page4(),
            ),
          ),
        ],
      ),
    );
  }
}
