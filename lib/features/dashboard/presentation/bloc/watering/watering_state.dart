abstract class WateringState{}

class WateringInitialState extends WateringState{}

class WateringConnectingState extends WateringState{}

class WateringConnectedState extends WateringState{
  final bool isPumpOn;
  
  WateringConnectedState({this.isPumpOn = false});
}

class WateringDisconnectedState extends WateringState{}

class WateringErrorState extends WateringState{
  final String message;
  
  WateringErrorState(this.message);
}
