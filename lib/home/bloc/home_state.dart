part of 'home_bloc.dart';

@immutable
abstract class HomeState {

  final int pageIndex;

  const HomeState({required this.pageIndex});

}

final class HomeInitial extends HomeState {
  HomeInitial({required super.pageIndex});

}

