class SensorData {
  final double temperature;
  final double humidity;
  final String status;
  final int uvIndex;

  SensorData({
    required this.temperature,
    required this.humidity,
    required this.status,
    required this.uvIndex,
  });

  factory SensorData.fromJson(Map<String, dynamic> json) {
    return SensorData(
      temperature: json['t']?.toDouble() ?? 0.0,
      humidity: json['h']?.toDouble() ?? 0.0,
      status: json['s'] ?? '',
      uvIndex: json['uv']?.toInt() ?? 0,
    );
  }
}
