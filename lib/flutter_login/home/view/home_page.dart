import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/flutter_login/authentication/bloc/authentication_bloc.dart';
import 'package:flutter_demo/flutter_login/login/bloc/login_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Builder(builder: (context) {
              final userId = context
                  .select((AuthenticationBloc bloc) => bloc.state.user.id);
              return Text('UserID: $userId');
            }),
            ElevatedButton(onPressed: () => context.read<AuthenticationBloc>().add(AuthenticationLogoutRequeted()), child: const Text('Logout'))
          ],
        ),
      ),
    );
  }
}
