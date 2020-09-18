import 'package:bloc/bloc.dart';

/// {@template page_cubit}
/// A [Cubit] which manages an [String] as its state.
/// {@endtemplate}
class PageCubit extends Cubit<String> {
  /// {@macro Page_cubit}
  PageCubit() : super('home');

  /// Change the current state.
  void page1() => emit('page1');

  /// Change the current state.
  void page2() => emit('page2');

  /// Change the current state.
  void page3() => emit('page3');

  /// Change the current state.
  void page4() => emit('page4');
}
