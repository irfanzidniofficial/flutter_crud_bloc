part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  UserState(this.allUsers);

  List<User> allUsers;

  @override
  List<Object> get props => [allUsers];
}

class UserInitial extends UserState {
  UserInitial(super.allUsers);
}
