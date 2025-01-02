import '../models/sensor_data.dart';

abstract class DashboardState {}

class SensorInitial extends DashboardState {}

class SensorConnecting extends DashboardState {}

class SensorConnected extends DashboardState {}

class SensorDisconnected extends DashboardState {}

class SensorDataUpdated extends DashboardState {
  final SensorData data;
  SensorDataUpdated(this.data);
}
