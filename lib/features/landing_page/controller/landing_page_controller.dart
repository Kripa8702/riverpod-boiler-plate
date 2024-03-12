import 'package:equatable/equatable.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'landing_page_state.dart';

final landingPageControllerProvider = StateNotifierProvider<LandingPageController, LandingPageState>(
  (ref) => LandingPageController(),
);

class LandingPageController extends StateNotifier<LandingPageState> {
  LandingPageController() : super(const LandingPageState());

  onChangeTabIndex(int index) {
    state = state.copyWith(tabIndex: index);
  }

}