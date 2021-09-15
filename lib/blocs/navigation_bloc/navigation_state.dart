part of 'navigation_bloc.dart';

@immutable
abstract class NavigationState {
  final Tabs tab;
  const NavigationState(this.tab);
}

class NavigationInitial extends NavigationState {
  const NavigationInitial(Tabs tab) : super(tab);
}

class NavigationChange extends NavigationState {
  const NavigationChange(Tabs tab) : super(tab);
}
