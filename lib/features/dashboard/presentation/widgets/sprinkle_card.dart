import 'package:flutter/material.dart';

class SprinkleCard extends StatelessWidget {
  const SprinkleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16, left: 16, bottom: 20),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      height: 52,
      decoration: BoxDecoration(
        color: const Color(0xFF90B77B),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset("assets/icons/rain.png"),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                height: 24,
                child: const VerticalDivider(
                  color: Colors.white,
                  thickness: 1,
                ),
              ),
              const Text(
                "Cek tanaman anda sekarang!",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(70, 22),
              padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 2),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text(
              "Siram",
              style: TextStyle(fontSize: 10, color: Color(0xFF384F2B)),
            ),
          )
        ],
      ),
    );
  }
}
