import 'package:flutter/material.dart';

class PlantRecomendationCard extends StatelessWidget {
  final String plantName;
  final String plantScientificName;
  final String plantImage;

  const PlantRecomendationCard(
      {super.key,
      required this.plantName,
      required this.plantScientificName,
      required this.plantImage});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 12),
          height: 120,
          width: 120,
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      plantName,
                      style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff384F2B)),
                    ),
                    Text(
                      "($plantScientificName)",
                      style: const TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        overflow: TextOverflow.ellipsis,
                        color: Color(0xffACACAC),
                      ),
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
                plantImage,
                fit: BoxFit.cover,
                height: 60,
              ),
            )),
      ],
    );
  }
}
