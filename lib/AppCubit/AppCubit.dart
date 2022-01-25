import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'AppStates.dart';

class AppCubit extends Cubit<AppState>
{
  AppCubit() : super(AppInitialState());

static AppCubit get (context)
{
  return BlocProvider.of(context);
}

}