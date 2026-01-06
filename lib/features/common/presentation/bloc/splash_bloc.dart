import 'package:chattapp/features/common/domain/usecases/splash_time.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'splash_event.dart';
import 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  final SplashTime startSplash;

  SplashBloc(this.startSplash) : super(SplashInitial()) {
    on<SplashStarted>(_onStarted);
  }

  Future<void> _onStarted(
    SplashStarted event,
    Emitter<SplashState> emit,
  ) async {
    await startSplash();
    emit(SplashDone());
  }
}
