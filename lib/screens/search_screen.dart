// ignore: file_names
import 'package:flutter/material.dart';
import 'package:musketeer_app/ReceiptScanner/scan_grocery.dart';

import '../Widgets/header_widget.dart';
import '../Widgets/search_bar_widget.dart';
import '../styles/colors.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderWidget(title: 'Search'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const SearchBarWidget(),
            const SizedBox(height: 10),
            SizedBox(
                width: 320,
                height: 90,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScanGroceryScreen()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(AppColors.lightBlue),
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(20)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0))),
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset(
                          'lib/Icons/Buttons/Upload.png',
                          width: 70,
                          height: 70,
                        ),
                        const SizedBox(width: 15),
                        const Text(
                          'Scan Reciept',
                          style: TextStyle(
                              color: Color.fromARGB(201, 46, 45, 45),
                              fontSize: 30),
                        ),
                      ],
                    )))
          ],
        ),
      ),
    );
  }
}
