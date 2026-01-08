import 'package:chattapp/features/common/domain/usecases/splash_time.dart';
import 'package:chattapp/features/chat/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/splash_bloc.dart';
import '../bloc/splash_event.dart';
import '../bloc/splash_state.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashBloc(SplashTime())..add(SplashStarted()),
      child: BlocListener<SplashBloc, SplashState>(
        listener: (context, state) {
          if (state is SplashDone) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => HomePage()),
            );
          }
        },
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Text("Chat App"),
                SizedBox(height: 16),
                Image.asset("assets/images/splash.png"),
                SizedBox(height: 16),
                Text("Kirim Pesan Mudah"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
