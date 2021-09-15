part of 'navigation_bloc.dart';

@immutable
abstract class NavigationEvent {}

class ChangeTabEvent extends NavigationEvent {
  final Tabs targetTab;
  ChangeTabEvent(this.targetTab);
}
