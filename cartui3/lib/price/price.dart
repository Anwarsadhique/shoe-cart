import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/vm.dart';
import '../theme/theme.dart';

class Price extends StatelessWidget {
  const Price({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ViewModel(),
      child: Column(
        children: [
          SizedBox(
            height: 120,
            child: Column(
              children: [
                SizedBox(
                  height: 45,
                  child: Center(
                      child: Column(
                        children: [
                          Text(
                            "Price Range",
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Consumer<ViewModel>(
                            builder: (context, model, child) {
                              return Text("${model.rangeMin} - ${model.rangeMax}");
                            },
                          ),
                        ],
                      )),
                ),
                Consumer<ViewModel>(
                  builder: (context, model, child) {
                    return RangeSlider(
                      activeColor: colorScheme.secondary,
                      inactiveColor: colorScheme.tertiary,
                      values: model.currentRangeValues,
                      min: 0,
                      max: 10000,
                      divisions: 100,
                      labels: RangeLabels(
                        model.currentRangeValues.start.round().toString(),
                        model.currentRangeValues.end.round().toString(),
                      ),
                      onChanged: (RangeValues values) {
                        model.updateValues(values);
                      },
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 23, left: 23),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Min",
                        // style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        "Max",
                        // style: Theme.of(context).textTheme.displaySmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}