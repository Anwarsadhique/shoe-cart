import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/vm.dart';

class StockView extends StatelessWidget {
  const StockView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider<ViewModel>(
        create: (context) => ViewModel(),
        child: Consumer<ViewModel>(
          builder: (context, viewModel, child) {
            return viewModel.loading
                ? Center(child: CircularProgressIndicator())
                : SizedBox(
                    child: Wrap(
                      runSpacing: 1,
                      children: viewModel.images
                          .map((e) => Card(
                            child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Stack(
                                        children: [
                                          SizedBox(
                                            width: 250,
                                            height: 250,
                                            child: Image.network(
                                              e.image,
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                          const Positioned(
                                              top: 0, left: 0, child: Text("UID:1031")),
                                          const Positioned(
                                              top: 0, right: 0, child: Text("Stock:01"))
                                        ],
                                      ),
                                       SizedBox(
                                          height: 40,
                                          width: 250,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Card(
                                                  child: Padding(
                                                padding: const EdgeInsets.all(3),
                                                child: Center(
                                                    child: Text(
                                                  e.name.toString(),
                                                 
                                                )),
                                              )),
                                              Card(
                                                  child: Padding(
                                                padding: const EdgeInsets.all(3),
                                                child: Center(
                                                    child: Text(
                                                  e.size.toString(),
                                                 
                                                )),
                                              )),
                                             
                                            ],
                                          )),
                                      SizedBox(
                                          height: 40,
                                          width: 250,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Card(
                                                  child: Padding(
                                                padding: const EdgeInsets.all(3),
                                                child: Center(
                                                    child: Text(
                                                  e.price.toString(),
                                                 
                                                )),
                                              )),
                                              IconButton(
                                                splashRadius: 20,
                                                onPressed: () {},
                                                icon: const Icon(Icons.shopping_cart),
                                              )
                                            ],
                                          )),
                                    ],
                                  ),
                                ),
                          ))
                          .toList(),
                    ),
                  );
          },
        ),
      );
    
  }
}