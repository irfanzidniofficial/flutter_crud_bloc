part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class AddUserEvent extends UserEvent {
  const AddUserEvent(this.user);
  final User user;
}

class EditUserEvent extends UserEvent {
  const EditUserEvent(this.user);
  final User user;
}

class DeleteUserEvent extends UserEvent {
  const DeleteUserEvent(this.user);
  final User user;
}
