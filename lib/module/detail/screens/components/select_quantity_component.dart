import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_shop/const/colors.dart';
import 'package:furniture_shop/module/detail/providers/quantity_provider.dart';

class SelectQuantity extends ConsumerWidget {
  const SelectQuantity({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final quantity = ref.read(quantityProvider.notifier);
    final number = ref.watch(quantityProvider);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Select Quantity :"),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xFFEAEBEC),
              width: 2,
            ),
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            children: [
              InkWell(
                  splashColor: grey,
                  onTap: () {
                    quantity.decrement();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.remove,
                      color: grey,
                    ),
                  )),
              Container(
                  height: 32,
                  width: 38,
                  color: lightGrey,
                  child: Center(child: Text('$number'))),
              InkWell(
                  splashColor: grey,
                  onTap: () {
                    quantity.increment();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Icon(
                      Icons.add,
                      color: grey,
                    ),
                  )),
            ],
          ),
        )
      ],
    );
  }
}
