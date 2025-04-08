import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slider_bloc_practice/bloc/slider_bloc.dart';
import 'package:slider_bloc_practice/bloc/slider_event.dart';
import 'package:slider_bloc_practice/bloc/slider_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider Example"),
        backgroundColor: Colors.yellowAccent,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<SliderBloc,SliderState>(builder: (context,state){
                return Container(
                  margin: EdgeInsets.only(top: 20),
                  width: 300,
                  height: 150,
                  decoration: BoxDecoration(
                      color: Colors.red.withOpacity(state.sliderValue)
                  ),
                );
              }),
              const SizedBox(height: 10,),
            ],
          ),
          BlocBuilder<SliderBloc, SliderState>(builder: (context,state){
            return Slider(value: state.sliderValue, onChanged: (value){
              context.read<SliderBloc>().add(SliderValueEvent(sliderValue: value));
            });
          }),
        ],
      ),
    );
  }
}
