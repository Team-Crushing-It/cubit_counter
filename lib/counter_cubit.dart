import 'package:bloc/bloc.dart';

/// {@template counter_cubit}
/// A [Cubit] which manages an [String] as its state.
/// {@endtemplate}
class CounterCubit extends Cubit<String> {
  /// {@macro counter_cubit}
  CounterCubit() : super('home');

  /// Add 1 to the current state.
  void increment() => emit('string1');

  /// Subtract 1 from the current state.
  void decrement() => emit('string2');

  /// Add 1 to the current state.
  void page1() => emit('page1');

  /// Add 1 to the current state.
  void page2() => emit('page2');

  /// Add 1 to the current state.
  void page3() => emit('page3');

  /// Add 1 to the current state.
  void page4() => emit('page4');
}
