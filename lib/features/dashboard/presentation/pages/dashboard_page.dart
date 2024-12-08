import 'package:flutter/material.dart';
import 'package:veggers_app/features/dashboard/presentation/widgets/plant_status_card.dart';
import 'package:veggers_app/features/dashboard/presentation/widgets/sprinkle_card.dart';
import 'package:veggers_app/features/dashboard/presentation/widgets/weather_status_card.dart';

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
        child: Column(
          children: [
            const WeatherStatusCard(),
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
            // TODO CARD Rekomendasi Teman Hijau
          ],
        ),
      ),
    );
  }
}
