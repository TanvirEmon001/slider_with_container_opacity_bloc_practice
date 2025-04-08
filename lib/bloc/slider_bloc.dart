import 'package:bloc/bloc.dart';
import 'package:slider_bloc_practice/bloc/slider_event.dart';
import 'package:slider_bloc_practice/bloc/slider_state.dart';


class SliderBloc extends Bloc<SliderEvents, SliderState>{
  SliderBloc(): super(const SliderState()){
    on<SliderValueEvent>(_sliderValueEvent);
  }

  void _sliderValueEvent(SliderValueEvent event, Emitter<SliderState> emit){
    emit(state.copyWith(sliderValue: event.sliderValue));
  }

}