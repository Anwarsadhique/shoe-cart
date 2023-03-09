
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodel/vm.dart';
import '../theme/theme.dart';
import 'sizevm.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: Center(
            child: Text(
              "Choose Your Size",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ),
        Consumer<ViewModel>(
          builder: (context, model, _) {
            return SizedBox(
              child: Wrap(
                runSpacing: -15,
                spacing: -15,
                children: [
                  ...model.cardList.map(
                    (e) => IconButton(
                      iconSize: 45,
                      onPressed: () {
                        model.setSelectedCard(e);
                      },
                      splashColor: colorScheme.primary,
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(
                          EdgeInsets.all(1),
                        ),
                      ),
                      splashRadius: 20,
                      icon: SizedBox(
                        width: 45,
                        height: 45,
                        child: Card(
                          color: model.isSelected(e)
                              ? colorScheme.tertiary
                              : colorScheme.primary,
                          child: Center(
                            child: Text(
                              e.size.toString(),
                              // style:
                              //     Theme.of(context).textTheme.displaySmall,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}