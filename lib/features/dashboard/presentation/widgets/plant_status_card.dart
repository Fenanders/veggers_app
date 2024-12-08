import 'package:flutter/material.dart';

class PlantStatusCard extends StatelessWidget {
  const PlantStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 12),
          height: 100,
          width: 230,
          decoration: BoxDecoration(
            color: const Color(0xFFECECEC),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      height: 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Image.asset("assets/icons/calendar-love.png"),
                          const SizedBox(width: 4),
                          const Text(
                            "24 hari",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff384F2B)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      height: 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Image.asset("assets/icons/droplet-mini.png"),
                          const SizedBox(width: 4),
                          const Text(
                            "95%",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff384F2B)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      height: 18,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white),
                      child: Row(
                        children: [
                          Image.asset("assets/icons/eco-power.png"),
                          const SizedBox(width: 4),
                          const Text(
                            "12 hari lagi",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff384F2B)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Pohon Tomat",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff384F2B)),
                    ),
                    Text(
                      "(Estimasi panen dalam 30 hari)",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Color(0xffACACAC)),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
            right: 12,
            bottom: 2,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
              ),
              child: Image.asset(
                "assets/images/plant-fill.png",
                fit: BoxFit.cover,
              ),
            )),
      ],
    );
  }
}
