import 'package:cartui3/price/price.dart';
import 'package:cartui3/size/size.dart';
import 'package:cartui3/stock/stock.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'viewmodel/vm.dart';
import 'theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
      body: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ViewModel()),
        ],
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Container(
            color: colorScheme.primaryContainer,
            // width: 500,
            // height: 600,
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  child: Expanded(
                    child: Column(
                      children: [
                        // const Headerwidget(),
                        Content(),
                        const Price(),
                      ],
                    ),
                  ),
                ),
                const Divider(
                  thickness: 0.5,
                ),
                StockView()
    
              ]),
            ),
          ),
        ),
      ),
    ),
    );
  }
}

