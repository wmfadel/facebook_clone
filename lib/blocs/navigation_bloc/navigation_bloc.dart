import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:facebook_clone/enums/tabs_enum.dart';
import 'package:meta/meta.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationInitial(Tabs.home));

  @override
  Stream<NavigationState> mapEventToState(
    NavigationEvent event,
  ) async* {
    if (event is ChangeTabEvent) {
      yield NavigationChange(event.targetTab);
    }
  }
}
