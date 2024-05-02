import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class HomePageStripe extends StatelessWidget {
  const HomePageStripe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stripe Home Page'),
      ),
      body: Center(
        child: Stripe.buildPaymentRequestButton(
          paymentRequestCreateOptions:
              const PlatformPayWebPaymentRequestCreateOptions(
            country: 'US',
            currency: 'usd',
            total: PlatformPayWebPaymentItem(
              label: 'Total',
              amount: 1000,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
