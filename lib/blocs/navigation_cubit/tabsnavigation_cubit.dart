import 'package:bloc/bloc.dart';
import 'package:facebook_clone/enums/tabs_enum.dart';
import 'package:meta/meta.dart';

part 'tabsnavigation_state.dart';

class TabsnavigationCubit extends Cubit<TabsnavigationState> {
  TabsnavigationCubit() : super(TabsnavigationInitial());

  Tabs currentTab = Tabs.home;

  change(Tabs targetTab) {
    currentTab = targetTab;
    emit(TabsnavigationChange(currentTab));
  }
}
