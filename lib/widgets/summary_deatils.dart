import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class SummaryDetails extends StatelessWidget {
  const SummaryDetails({super.key});

  @override
  Widget build(BuildContext context) {
    Widget buildDetails(String key, String value) {
      return Column(
        children: [
          Text(
            key,
            style: const TextStyle(
              fontSize: 11,
              color: whiteColor,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            value,
            style: const TextStyle(fontSize: 14, color: greyColor),
          ),
        ],
      );
    }

    return CustomCard(
      color: limeColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildDetails('Cal', '305'),
          buildDetails('Steps', '10983'),
          buildDetails('Distance', '7km'),
          buildDetails('Sleep', '7hr'),
        ],
      ),
    );
  }
}
