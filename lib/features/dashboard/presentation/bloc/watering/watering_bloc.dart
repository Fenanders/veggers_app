import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:veggers_app/features/dashboard/presentation/bloc/watering/watering_event.dart';
import 'package:veggers_app/features/dashboard/presentation/bloc/watering/watering_state.dart';
import 'package:veggers_app/services/mqtt_service.dart';

class WateringBloc extends Bloc<WateringEvent, WateringState> {
  // late MqttClient client;
  final MqttService mqttService;

 WateringBloc({required this.mqttService}) : super(WateringInitialState()) {
    // ... other event handlers ...

    on<PublishPumpControl>((event, emit) async {
      try {
        final client = await mqttService.connect();

        final builder = MqttClientPayloadBuilder();
        print(event.pumpState);
        builder.addString(event.pumpState ? "nyala" : "mati");
        
        client.publishMessage(
          'veggers/pump', 
          MqttQos.atLeastOnce,
          builder.payload!
        );
      } catch (e) {
        emit(WateringErrorState(e.toString()));
      }
    });
  }
}
