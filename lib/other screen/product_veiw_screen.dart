import 'package:flutter/material.dart';
import 'package:musketeer_app/Widgets/header_widget.dart';
import 'package:musketeer_app/Widgets/search_bar_widget.dart';

import '../styles/colors.dart';

class ProductNameScreen extends StatelessWidget {
  const ProductNameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderWidget(title: 'Product view'),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const SearchBarWidget(),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      height: 230,
                      width: 400,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: AppColors.headerGrey),
                      child: Row(
                        children: [
                          // Product image container
                          Container(
                            height: 250,
                            width: 200,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30))),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            children: [
                              //small container
                              Row(
                                children: [
                                  //cart
                                  Container(
                                    height: 60,
                                    width: 65,
                                    decoration: const BoxDecoration(
                                        color: AppColors.buttonGrey,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  //pantry
                                  Container(
                                    height: 60,
                                    width: 65,
                                    decoration: const BoxDecoration(
                                        color: AppColors.buttonGrey,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                  )
                                ],
                              ),
                              const SizedBox(height: 5),
                              //If item belongs to woolies Green or if belongs to coles then red
                              Container(
                                height: 70,
                                width: 140,
                                decoration: BoxDecoration(
                                  color: AppColors.selectedGreen,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(20)),
                                  border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 22, 52, 23),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 70,
                                    height: 60,
                                    child: Text(
                                      'Chepest Retailer',
                                      style: TextStyle(fontSize: 18),
                                    ),
                                  ),
                                  Container(
                                    width: 40,
                                    height: 40,
                                    decoration: const BoxDecoration(
                                        color: Colors.black),
                                    child: Image.asset('woolies/coles logo'),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      height: 170,
                      width: 400,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: AppColors.headerGrey),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              'Sales/Product History',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.normal),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            // Sales history chart container
                            Container(
                              height: 115,
                              width: 380,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20))),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    //Description and Info
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      height: 170,
                      width: 400,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                          color: AppColors.headerGrey),
                      child: const Column(
                        children: [
                          Text(
                            'Description and Nutrition Info',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text('EXTRACT DATA FROM THE DATABASE'),
                          SizedBox(
                            height: 10,
                          ),
                          Text('Detailed Description')
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
