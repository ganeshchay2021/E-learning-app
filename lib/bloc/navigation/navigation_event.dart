part of 'navigation_bloc.dart';

sealed class NavigationEvent {}

class NavigateToTab extends NavigationEvent {
  final int index;

  NavigateToTab({required this.index});
}
