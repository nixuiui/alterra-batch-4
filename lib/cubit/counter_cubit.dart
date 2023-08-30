import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_state.dart';

class CounterCubit extends Cubit<CoutnerState> {
  CounterCubit() : super(CoutnerState());

  void increment() => emit(state);
  void decrement() => emit(state);
}