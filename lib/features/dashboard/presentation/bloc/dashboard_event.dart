import 'package:veggers_app/features/dashboard/presentation/models/sensor_data.dart';

abstract class DashboardEvent {}

class ConnectMqtt extends DashboardEvent {}
class DisconnectMqtt extends DashboardEvent {}
class UpdateSensorData extends DashboardEvent {
  final SensorData data;
  UpdateSensorData(this.data);
}
