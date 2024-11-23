// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:training/features/complexe_ui/mini_curved_card.dart';


class ComplexeUiPage extends StatefulWidget {
  const ComplexeUiPage({super.key});

  @override
  State<ComplexeUiPage> createState() => _ComplexeUiPageState();
}

class _ComplexeUiPageState extends State<ComplexeUiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 60,
                width: double.infinity,
                color: Colors.red,
              ),
              Container(
                height: 150,
                width: double.infinity,
                color: Colors.amber,
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.2,
                  mainAxisSpacing: 5.5,
                  childAspectRatio: 1.1,
                  physics: const NeverScrollableScrollPhysics(),
                  children: List.generate(
                    cardData.length,
                    (index) {
                      MiniCardDataModel data = cardData[index];
                      return Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        child: MiniCurvedCard(
                          width: 100,
                          color: data.color,
                          radius: 20,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: const BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<MiniCardDataModel> cardData = [
  MiniCardDataModel(
    title: "230k",
    subtitle: "Sales",
    icon: Icons.circle,
    color: Colors.yellow.shade800,
  ),
  MiniCardDataModel(
    title: "230k",
    subtitle: "Sales",
    icon: Icons.circle,
    color: Colors.green.shade700,
  ),
  MiniCardDataModel(
    title: "230k",
    subtitle: "Sales",
    icon: Icons.circle,
    color: Colors.pink.shade800,
  ),
  MiniCardDataModel(
    title: "230k",
    subtitle: "Sales",
    icon: Icons.circle,
    color: Colors.blue.shade800,
  ),
];

class MiniCardDataModel {
  final String title;
  final String subtitle;
  final IconData icon;
  final Color color;

  MiniCardDataModel({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.color,
  });
}
