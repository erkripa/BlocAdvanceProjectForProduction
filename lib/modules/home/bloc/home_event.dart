part of 'home_bloc.dart';

abstract class HomeEvent extends Equatable {
  const HomeEvent();

  @override
  List<Object> get props => [];
}

class BannerChange extends HomeEvent {
  final int index;
  const BannerChange({required this.index});
}
