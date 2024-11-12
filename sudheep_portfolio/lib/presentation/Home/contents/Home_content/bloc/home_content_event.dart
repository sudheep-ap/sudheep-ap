// ignore_for_file: prefer_typing_uninitialized_variables

part of 'home_content_bloc.dart';

abstract class HomeContentEvent extends Equatable {}

class OnHoverEvent extends HomeContentEvent {
  final onProfileHover;
  final onWorksHover;
  final onContactsHover;
  OnHoverEvent({this.onProfileHover, this.onWorksHover, this.onContactsHover});
  @override
  List<Object?> get props => [onProfileHover, onWorksHover, onContactsHover];
}
