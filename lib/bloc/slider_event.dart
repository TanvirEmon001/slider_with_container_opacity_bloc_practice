import 'package:equatable/equatable.dart';

abstract class SliderEvents extends Equatable{
  const SliderEvents();

  @override
  List<Object> get props => []; 
}

class SliderValueEvent extends SliderEvents{
  final double sliderValue;
  SliderValueEvent({
    required this.sliderValue
  });

  @override
  List<Object> get porps => [sliderValue];
}