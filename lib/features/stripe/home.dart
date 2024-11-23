import 'package:flutter/material.dart';

class HomePageStripe extends StatefulWidget {
  const HomePageStripe({super.key});

  @override
  State<HomePageStripe> createState() => _HomePageStripeState();
}

class _HomePageStripeState extends State<HomePageStripe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Stripe Home Page'),
      ),
      body: const Column(
        children: [],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     await StripeSingleton().makePayment(
      //       amount: 1000.0,
      //       successAcknowledgement: (p0) {},
      //       errorAcknowledgement: (p0) {},
      //     );
      //   },
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
