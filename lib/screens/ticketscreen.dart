import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickethotel/screens/ticketview.dart';
import 'package:tickethotel/utilis/applayout.dart';
import 'package:tickethotel/utilis/applistinfo.dart';
import 'package:tickethotel/utilis/appstyles.dart';
import 'package:tickethotel/widget/columnlayout.dart';
import 'package:tickethotel/widget/tickettabs.dart';
import 'package:barcode_widget/barcode_widget.dart';
import '../widget/layoutbuilderwidget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.symmetric(
                horizontal: AppLayout.getHeight(20),
                vertical: AppLayout.getHeight(20)),
            children: [
              Gap(AppLayout.getHeight(40)),
              Text("Liste des Tickets", style: Styles.headLineStyle1),
              Gap(AppLayout.getHeight(20)),
              const AppTicketTab(firstTab: "A Venir", secondTab: "Parties"),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(10)),
                child: TicketView(
                  ticket: ticketList[0],
                  isColor: true,
                ),
              ),
              const SizedBox(height: 1),
              Container(
                color: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                margin: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "Flutter BD",
                          secondText: "Passagers",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: "A032 7568",
                          secondText: "Passport",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilder(
                        sections: 15, isColor: false, width: 5),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        AppColumnLayout(
                          firstText: "356232 36986254",
                          secondText: "Numéro de E-ticket",
                          alignment: CrossAxisAlignment.start,
                          isColor: false,
                        ),
                        AppColumnLayout(
                          firstText: "A6C78E",
                          secondText: "Code de Réservation",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    Gap(AppLayout.getHeight(20)),
                    const AppLayoutBuilder(
                        sections: 15, isColor: false, width: 5),
                    Gap(AppLayout.getHeight(20)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/images/visa.png",
                                    scale: 11),
                                Text("*** 3684", style: Styles.headLineStyle3),
                              ],
                            ),
                            const Gap(5),
                            Text("Type de Payement",
                                style: Styles.headLineStyle4),
                          ],
                        ),
                        const AppColumnLayout(
                          firstText: "300 275FCFA",
                          secondText: "Prix Billet",
                          alignment: CrossAxisAlignment.end,
                          isColor: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: 1),
                    Gap(AppLayout.getHeight(20)),
                  ],
                ),
              ),

              /* 
              Bar Code
              */
              const SizedBox(height: 1),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(AppLayout.getHeight(21)),
                    bottomLeft: Radius.circular(AppLayout.getHeight(21)),
                  ),
                ),
                margin: EdgeInsets.only(
                    left: AppLayout.getHeight(12),
                    right: AppLayout.getHeight(12)),
                padding: EdgeInsets.only(
                    top: AppLayout.getHeight(12),
                    bottom: AppLayout.getHeight(12)),
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(AppLayout.getHeight(15)),
                    child: BarcodeWidget(
                      barcode: Barcode.code128(),
                      data: 'https://github.com/martinovovo',
                      drawText: false,
                      color: Styles.textColor,
                      width: double.infinity,
                      height: 70,
                    ),
                  ),
                ),
              ),
              Gap(AppLayout.getHeight(20)),
              Container(
                padding: EdgeInsets.only(left: AppLayout.getHeight(10)),
                child: TicketView(
                  ticket: ticketList[0],
                ),
              ),
            ],
          ),
          Positioned(
            left: AppLayout.getHeight(14),
            top: AppLayout.getHeight(245),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 5,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
          Positioned(
            right: AppLayout.getHeight(14),
            top: AppLayout.getHeight(245),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Styles.textColor, width: 2)),
              child: CircleAvatar(
                maxRadius: 4,
                backgroundColor: Styles.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
