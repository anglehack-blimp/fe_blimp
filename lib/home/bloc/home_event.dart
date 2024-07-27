part of 'home_bloc.dart';


sealed class HomeEvent {}

final class HistoryPageSelected extends HomeEvent{}

final class HomePageSelected extends HomeEvent{}

final class BottomMenuSelected extends HomeEvent{

  final int pageIndex;

  BottomMenuSelected({required this.pageIndex});

}