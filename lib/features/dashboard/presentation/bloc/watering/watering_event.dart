abstract class WateringEvent {}

class PublishPumpControl extends WateringEvent {
  final bool pumpState;
  
  PublishPumpControl(this.pumpState);
}
