import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:veggers_app/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:veggers_app/features/dashboard/presentation/bloc/dashboard_event.dart';
import 'package:veggers_app/features/dashboard/presentation/bloc/watering/watering_bloc.dart';
import 'package:veggers_app/services/mqtt_service.dart';

import 'features/core/routes/router.dart';

void main() {
  final mqttService = MqttService(
    broker: const String.fromEnvironment('broker'),
    clientId: const String.fromEnvironment('clientId'),
    username: const String.fromEnvironment('username'),
    password: const String.fromEnvironment('password'),
  );
  
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DashboardBloc(mqttService: mqttService)..add(ConnectMqtt()),
        ),
        BlocProvider(
          create: (context) => WateringBloc(mqttService: mqttService),
        ),
      ],
      child: const MyApp(),
    ),);
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      title: 'Train Timetable',
      debugShowCheckedModeBanner: false,
    );
  }
}
