part of 'tabsnavigation_cubit.dart';

@immutable
abstract class TabsnavigationState {}

class TabsnavigationInitial extends TabsnavigationState {}

class TabsnavigationChange extends TabsnavigationState {
  final Tabs tab;
  TabsnavigationChange(this.tab);
}
