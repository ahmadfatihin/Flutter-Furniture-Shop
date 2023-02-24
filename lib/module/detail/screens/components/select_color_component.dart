import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_shop/const/colors.dart';
import 'package:furniture_shop/module/detail/enum/color_enum.dart';
import 'package:furniture_shop/module/detail/providers/color_provider.dart';

class SelectColor extends ConsumerStatefulWidget {
  const SelectColor({super.key});

  @override
  ConsumerState<SelectColor> createState() => _SelectColorState();
}

class _SelectColorState extends ConsumerState<SelectColor> {
  ColorVariant? _color;

  @override
  Widget build(BuildContext context) {
    _color = ref.watch(colorProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Choose a color :"),
        Row(
          children: [
            Radio(
                value: ColorVariant.red,
                fillColor: MaterialStateColor.resolveWith((states) => red),
                groupValue: _color,
                onChanged: (ColorVariant? value) {
                  ref.read(colorProvider.notifier).setColor(value!);
                  setState(() {
                    _color = value;
                  });
                }),
            Radio(
                value: ColorVariant.yellow,
                fillColor: MaterialStateColor.resolveWith((states) => yellow),
                groupValue: _color,
                onChanged: (ColorVariant? value) {
                  ref.read(colorProvider.notifier).setColor(value!);
                  setState(() {
                    _color = value;
                  });
                }),
            Radio(
                value: ColorVariant.grey,
                fillColor: MaterialStateColor.resolveWith((states) => grey),
                groupValue: _color,
                onChanged: (ColorVariant? value) {
                  ref.read(colorProvider.notifier).setColor(value!);
                  setState(() {
                    _color = value;
                  });
                }),
            Radio(
                value: ColorVariant.orange,
                fillColor:
                    MaterialStateColor.resolveWith((states) => Colors.orange),
                groupValue: _color,
                onChanged: (ColorVariant? value) {
                  ref.read(colorProvider.notifier).setColor(value!);
                  setState(() {
                    _color = value;
                  });
                }),
            Radio(
                value: ColorVariant.purple,
                fillColor:
                    MaterialStateColor.resolveWith((states) => Colors.purple),
                groupValue: _color,
                onChanged: (ColorVariant? value) {
                  ref.read(colorProvider.notifier).setColor(value!);
                  setState(() {
                    _color = value;
                  });
                }),
          ],
        ),
      ],
    );
  }
}
