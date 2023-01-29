import 'package:equatable/equatable.dart';
import 'package:flutter_crud_bloc/bloc/export.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  // Gaboleh dikasih const karena data ini bakal berubah2
  UserBloc() : super(UserInitial([])) {
    // UserBloc() : super(UserInitial(const [])) {
    // ADD USER
    on<AddUserEvent>((event, emit) {
      try {
        emit(UserLoading(state.allUsers));
        state.allUsers.add(event.user);
        emit(UserFinish(state.allUsers));
      } catch (e) {
        emit(UserError(state.allUsers));
      }
    });
     // DELETE USER

     on<DeleteUserEvent>((event, emit) {
      try {
        emit(UserLoading(state.allUsers));
        state.allUsers.removeWhere((element) => element == event.user);
        emit(UserFinish(state.allUsers));
      } catch (e) {
        emit(UserError(state.allUsers));
      }
    });
  }
   
   
  }

