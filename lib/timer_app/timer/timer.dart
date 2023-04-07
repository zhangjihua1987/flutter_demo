import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_demo/timer_app/timer/bloc/timer_bloc.dart';

export 'bloc/timer_bloc.dart';
export 'view/timer_page.dart';

class MyActions extends StatelessWidget {
  const MyActions({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      buildWhen: (previous, current) => previous.runtimeType != current.runtimeType,
      builder: (context, state) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          if (state is TimerInitial) ...[
            FloatingActionButton(
              child: Icon(Icons.play_arrow),
              onPressed: () => context
                  .read<TimerBloc>()
                  .add(TimerStarted(duration: state.duration)),
            )
          ],
          if (state is TimerRunInProgress) ...[
            FloatingActionButton(
              child: Icon(Icons.pause),
              onPressed: () => context.read<TimerBloc>().add(TimerPaused()),
            ),
            FloatingActionButton(
              child: Icon(Icons.replay),
              onPressed: () => context.read<TimerBloc>().add(TimerReset()),
            )
          ],
          if (state is TimerRunPause) ...[
            FloatingActionButton(
                child: Icon(Icons.play_arrow),
                onPressed: () => context.read<TimerBloc>().add(TimerResumed())),
            FloatingActionButton(
                child: Icon(Icons.replay),
                onPressed: () => context.read<TimerBloc>().add(TimerReset()))
          ],
          if (state is TimerRunComplete) ...[
            FloatingActionButton(
              child: Icon(Icons.replay),
              onPressed: () => context.read<TimerBloc>().add(TimerReset()),
            )
          ]
        ],
      );
    });
  }
}

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.blue.shade50, Colors.blue.shade500])),
    );
  }
}
