import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:veggers_app/features/dashboard/presentation/bloc/dashboard_event.dart';
import 'package:veggers_app/features/dashboard/presentation/bloc/dashboard_state.dart';
import 'package:veggers_app/features/dashboard/presentation/models/sensor_data.dart';

import '../../../../services/mqtt_service.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  final MqttService mqttService;
  
  DashboardBloc({required this.mqttService}) : super(SensorInitial()) {
    on<ConnectMqtt>(_onConnect);
    on<DisconnectMqtt>(_onDisconnect);
    on<UpdateSensorData>(_onUpdateData);
  }

  Future<void> _onConnect(ConnectMqtt event, Emitter<DashboardState> emit) async {
    emit(SensorConnecting());
    
    try {
      final client = await mqttService.connect();
      
      // Subscribe to your topic
      const topic = 'veggers/sensors';
      client.subscribe(topic, MqttQos.atLeastOnce);

      client.updates?.listen((List<MqttReceivedMessage<MqttMessage>> messages) {
        final recMess = messages[0].payload as MqttPublishMessage;
        final payload = MqttPublishPayload.bytesToStringAsString(recMess.payload.message);
        
        // Parse the JSON data
        final data = SensorData.fromJson(jsonDecode(payload));
        add(UpdateSensorData(data));
      });

      emit(SensorConnected());
    } catch (e) {
      emit(SensorDisconnected());
    }
  }

  void _onDisconnect(DisconnectMqtt event, Emitter<DashboardState> emit) {
    mqttService.disconnect();
    emit(SensorDisconnected());
  }

  void _onUpdateData(UpdateSensorData event, Emitter<DashboardState> emit) {
    emit(SensorDataUpdated(event.data));
  }
}
