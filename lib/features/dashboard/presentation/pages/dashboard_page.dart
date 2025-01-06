import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:veggers_app/features/dashboard/presentation/bloc/dashboard_bloc.dart';
import 'package:veggers_app/features/dashboard/presentation/bloc/dashboard_state.dart';
import 'package:veggers_app/features/dashboard/presentation/widgets/plant_status_card.dart';
import 'package:veggers_app/features/dashboard/presentation/widgets/sprinkle_card.dart';
import 'package:veggers_app/features/dashboard/presentation/widgets/weather_status_card.dart';

import '../widgets/plant_recomendation_card.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Selamat Pagi',
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color(0xFFACACAC)),
            ),
            Text(
              'Yandi Fenanda',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF384F2B)),
            ),
          ],
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: CircleAvatar(
            backgroundColor: const Color(0xFFB4E5BC),
            child: Image.asset(
              'assets/images/profile.png',
              height: 30,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEEF7EF),
                  shape: const CircleBorder(),
                  elevation: 0),
              onPressed: () {},
              child: Image.asset("assets/icons/notification.png"),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: BlocBuilder<DashboardBloc, DashboardState>(
            builder: (context, state) {
          if (state is SensorConnecting) {
            return const CircularProgressIndicator();
          }
          if (state is SensorDataUpdated) {
            return Column(
              children: [
                WeatherStatusCard(sensorData: state.data),
                const SprinkleCard(),
                Container(
                  margin: const EdgeInsets.only(left: 16),
                  height: 131,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Teman Hijau Milikmu",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF384F2B),
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 102,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              PlantStatusCard(),
                              PlantStatusCard(),
                              PlantStatusCard(),
                            ],
                          ),
                        )
                      ]),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 16, top: 20),
                  height: 150,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Rekomendasi Teman Hijau",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF384F2B),
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          height: 120,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              PlantRecomendationCard(
                                  plantName: "Tomat",
                                  plantScientificName: "Solanum lycopersicum",
                                  plantImage: "assets/images/tomat.png"),
                              PlantRecomendationCard(
                                  plantName: "Pakcoy",
                                  plantScientificName:
                                      "Brassica rapa subsp. chinensis",
                                  plantImage: "assets/images/pokcoy.png"),
                              PlantRecomendationCard(
                                  plantName: "Sawi Putih",
                                  plantScientificName:
                                      "Brassica rapa subsp. pekinensis",
                                  plantImage: "assets/images/sawi-putih.png"),
                            ],
                          ),
                        )
                      ]),
                ),
              ],
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        }),
      ),
    );
  }
}
