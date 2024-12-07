import 'package:flutter/material.dart';

class WeatherStatusCard extends StatelessWidget {
  const WeatherStatusCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      height: 140,
      width: MediaQuery.of(context).size.width - 32,
      decoration: BoxDecoration(
        color: const Color(0xFF628B4B),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 0, top: 16, bottom: 4),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/cloud.png"),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Rabu, 20 Nov 2024",
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFF0F0F0)),
                    ),
                    Text(
                      "29°C",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                  ],
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Divider(
              color: Color(0xFF749961),
              thickness: 1,
            ),
          ),
          Container(
            // color: Colors.blue,
            height: 34,
            margin:
                const EdgeInsets.only(right: 20, left: 20, top: 4, bottom: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/uv.png"),
                      const SizedBox(width: 8),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "8",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            "UV Index",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFF0F0F0)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const VerticalDivider(
                  color: Color(0xFF749961),
                  thickness: 1,
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/droplet.png"),
                      const SizedBox(width: 8),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "78%",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            "Humidity",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFF0F0F0)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                const VerticalDivider(
                  color: Color(0xFF749961),
                  thickness: 1,
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Image.asset("assets/icons/soil.png"),
                      const SizedBox(width: 8),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "60%",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                          Text(
                            "Soil",
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFFF0F0F0)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
