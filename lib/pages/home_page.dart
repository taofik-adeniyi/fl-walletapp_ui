import 'package:flutter/material.dart';
import 'package:walletappui/util/card_btn.dart';
import 'package:walletappui/util/list_tile.dart';
import 'package:walletappui/util/wallet_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:fluentui_icons/fluentui_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //pagecontroller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade200,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.home,
                    size: 32,
                    color: Colors.pink,
                  )),
              IconButton(
                  onPressed: () {},
                  icon:
                      const Icon(Icons.settings, size: 32, color: Colors.grey))
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(
          Icons.monetization_on,
          size: 32,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
          child: ListView(children: [
        Column(
          children: [
            // app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        'My',
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' Cards',
                        style: TextStyle(fontSize: 28),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    decoration: const BoxDecoration(
                        color: Colors.grey, shape: BoxShape.circle),
                    child: const Icon(Icons.add),
                  )
                ],
              ),
            ),
            // cards
            const SizedBox(
              height: 25.0,
            ),
            Container(
              height: 238,
              color: Colors.transparent,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  WalletCard(
                    color: Colors.deepPurpleAccent.shade400,
                    balance: 5250.20,
                    cardNumber: '10233456',
                    expiryMonth: '10',
                    expiryYear: '24',
                  ),
                  const WalletCard(
                    color: Colors.lightBlueAccent,
                    balance: 5250.20,
                    cardNumber: '10233456',
                    expiryMonth: '10',
                    expiryYear: '24',
                  ),
                  const WalletCard(
                    color: Colors.lightGreenAccent,
                    balance: 5250.20,
                    cardNumber: '10233456',
                    expiryMonth: '10',
                    expiryYear: '24',
                  ),
                ],
              ),
            ),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade800),
            ),

            const SizedBox(
              height: 35,
            ),

            //  3 buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CardBtn(
                      btnText: 'Send',
                      icon: FluentSystemIcons.ic_fluent_movies_and_tv_filled,
                      iconColor: Colors.deepPurpleAccent.shade400),
                  const CardBtn(
                      btnText: 'Pay',
                      icon: FluentSystemIcons.ic_fluent_camera_switch_filled,
                      iconColor: Colors.lightBlueAccent),
                  const CardBtn(
                      btnText: 'Bill',
                      icon: FluentSystemIcons.ic_fluent_bank_filled,
                      iconColor: Colors.lightGreenAccent),
                ],
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            // columns -> stats + transactions

            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Column(
                children: [
                  MyListTile(
                      title: 'Statistics',
                      description: 'Payments and income',
                      icon: Icons.ad_units_sharp),
                  MyListTile(
                      title: 'Transactions',
                      description: 'Transactions History',
                      icon: Icons.transit_enterexit_rounded)
                ],
              ),
            )
          ],
        ),
      ])),
    );
  }
}
