import 'package:bloc/bloc.dart';

class TimerObserver extends BlocObserver {
  const TimerObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    print('${bloc.runtimeType} $change');
    super.onChange(bloc, change);
  }
}
