import 'package:flutter/material.dart';
import 'package:musketeer_app/Widgets/header_widget.dart';
import '../Dashboard/dashboard_1.dart';
import '../styles/colors.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderWidget(title: 'Checkout'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Pickup fulfilment Method',
              style: TextStyle(fontSize: 28, color: AppColors.borderGrey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 10,
            ),
            //coles
            Container(
              width: 140,
              height: 200,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: AppColors.lightRed,
              ),
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 400,
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: AppColors.widgetGrey,
                  ),
                  child: Row(
                    //coles container
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 90,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Image.asset(
                          'lib/Icons/Retailers/Coles.png',
                          height: 50,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/Icons/Home Page/Piggy Bank Empty.png',
                            height: 24,
                            width: 24,
                          ),
                          const Text(
                            'Savings',
                            style: TextStyle(
                              fontSize: 8,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Center(
                          child: Text(
                            '10.00',
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/Icons/Watchlist/Cart.png',
                            height: 24,
                            width: 24,
                          ),
                          const Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 8,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Center(
                          child: Text(
                            '10.00',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 10),
                //pickup method container
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 400,
                  height: 120,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  // Shop buttons
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const DashboardScreen()),
                              );
                            },
                            child: Image.asset('')),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: 100,
                        height: 100,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ]),
            ),

            const SizedBox(
              height: 10,
            ),
            //woolies

            Container(
              width: 140,
              height: 250,
              padding: const EdgeInsets.all(10),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: AppColors.lightGreen,
              ),
              child: Column(children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 400,
                  height: 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: AppColors.widgetGrey,
                  ),
                  child: Row(
                    //coles container
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 90,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: Image.asset(
                          'lib/Icons/Retailers/Woolworths.png',
                          height: 50,
                          fit: BoxFit.contain,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/Icons/Home Page/Piggy Bank Empty.png',
                            height: 24,
                            width: 24,
                          ),
                          const Text(
                            'Savings',
                            style: TextStyle(
                              fontSize: 8,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Center(
                          child: Text(
                            '10.00',
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'lib/Icons/Watchlist/Cart.png',
                            height: 24,
                            width: 24,
                          ),
                          const Text(
                            'Total',
                            style: TextStyle(
                              fontSize: 8,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(width: 10),
                      Container(
                        height: 40,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                        child: const Center(
                          child: Text(
                            '10.00',
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 400,
                  height: 160,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    color: Colors.white,
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
