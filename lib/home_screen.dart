import 'package:digital_wallet_ui/my_button.dart';
import 'package:digital_wallet_ui/my_cards.dart';
import 'package:digital_wallet_ui/my_lists.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1d2630),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "My",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Wallet",
                          style: TextStyle(
                            fontSize: 28,
                            // fontWeight: FontWeight.bold,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child: Icon(Icons.notifications),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 200,
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCard(
                      balance: 5485.54,
                      cardNumber: 5476300186372,
                      expiredMonth: 10,
                      expiredYear: 24,
                      cardType: "assets/visa.png",
                    ),
                    MyCard(
                      balance: 548454,
                      cardNumber: 67092389,
                      expiredMonth: 10,
                      expiredYear: 26,
                      cardType: "assets/mastercard.png",
                    ),
                    MyCard(
                      balance: 1253.54,
                      cardNumber: 5476300186372,
                      expiredMonth: 12,
                      expiredYear: 26,
                      cardType: "assets/visa.png",
                    ),
                    MyCard(
                      balance: 213,
                      cardNumber: 67092389,
                      expiredMonth: 05,
                      expiredYear: 30,
                      cardType: "assets/mastercard.png",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15),
              SmoothPageIndicator(
                controller: pageController,
                count: 4,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                  dotWidth: 14,
                  dotHeight: 14,
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyButton(
                      iconPath: "assets/sendmoney.png",
                      textButton: "send",
                    ),
                    MyButton(
                      iconPath: "assets/bill.png",
                      textButton: "Receive",
                    ),
                    MyButton(
                      iconPath: "assets/card.png",
                      textButton: "Pay",
                    ),
                    MyButton(
                      iconPath: "assets/bill.png",
                      textButton: "Bills",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  children: [
                    MyLists(
                      iconPath: "assets/statistics.png",
                      title: "Statistics",
                      subtitle: "Payment & Income",
                    ),
                    MyLists(
                      iconPath: "assets/transaction.png",
                      title: "Transactions",
                      subtitle: "Payment & Income",
                    ),
                    MyLists(
                      iconPath: "assets/bill.png",
                      title: "Bills History",
                      subtitle: "Payment & Income",
                    ),
                    MyLists(
                      iconPath: "assets/card.png",
                      title: "Payment History",
                      subtitle: "Payment & Income",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
