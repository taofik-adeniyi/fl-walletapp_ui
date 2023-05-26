import 'package:flutter/material.dart';

class WalletCard extends StatelessWidget {
  final double balance;
  final String cardNumber;
  final String expiryMonth;
  final String expiryYear;
  final color;
  const WalletCard(
      {super.key,
      required this.balance,
      required this.cardNumber,
      required this.expiryMonth,
      required this.expiryYear,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: 300,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Balance', style: TextStyle(color: Colors.white)),
                Image.asset(
                  'lib/icons/visa.png',
                  height: 50,
                )
              ],
            ),
            const SizedBox(height: 20),
            Text('\$ ${balance.toString()}',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 36.0,
                    fontWeight: FontWeight.w900)),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // card number
                Text(cardNumber.toString(),
                    style: const TextStyle(color: Colors.white)),
                // card expiry
                Text('${expiryMonth.toString()} / ${expiryYear.toString()}',
                    style: const TextStyle(color: Colors.white))
              ],
            )
          ],
        ),
      ),
    );
  }
}
