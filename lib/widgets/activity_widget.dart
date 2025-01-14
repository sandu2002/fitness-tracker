import 'package:fitness_tracker/constants/colors.dart';
import 'package:fitness_tracker/data/health_detials_data.dart';
import 'package:fitness_tracker/utils/responsive.dart';
import 'package:fitness_tracker/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HealthModelData = HealthDetails();
    final bool isMobile = Responsive.isMobile(context);
    return GridView.builder(
      itemCount: HealthModelData.healthData.length,
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile ? 2 : 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12,
      ),
      itemBuilder: (context, index) {
        return CustomCard(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                HealthModelData.healthData[index].icon,
                width: 30,
                height: 30,
                //fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 1),
                child: Text(
                  HealthModelData.healthData[index].value,
                  style: TextStyle(
                    color: secondaryColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Text(
                HealthModelData.healthData[index].title,
                style: TextStyle(
                  color: greyColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
