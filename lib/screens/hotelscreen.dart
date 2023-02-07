import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickethotel/utilis/applayout.dart';
import 'package:tickethotel/utilis/appstyles.dart';

class HotelScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;
  const HotelScreen({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height: AppLayout.getHeight(340),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 20,
            spreadRadius: 10,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(200),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: Styles.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${hotel['image']}"),
              ),
            ),
          ),
          const Gap(10),
          Text(
            hotel['place'],
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
          const Gap(10),
          Text(
            hotel['destination'],
            style: Styles.headLineStyle2.copyWith(color: Colors.white),
          ),
          Text(
            '${hotel['price']}FCFA/Nuit',
            style: Styles.headLineStyle2.copyWith(color: Styles.kakiColor),
          ),
        ],
      ),
    );
  }
}
