import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:furniture_shop/const/colors.dart';
import 'package:furniture_shop/module/detail/enum/color_enum.dart';
import 'package:furniture_shop/module/detail/providers/color_providers.dart';
import 'package:get_storage/get_storage.dart';

class SelectColor extends ConsumerStatefulWidget {
  const SelectColor({super.key});

  @override
  ConsumerState<SelectColor> createState() => _SelectColorState();
}

class _SelectColorState extends ConsumerState<SelectColor> {
  ColorVariant? _color = ColorVariant.blue;
  final box = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Choose a color :"),
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
                    box.write('color', value.toString());
                    print(box.read('color'));
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
                    box.write('color', value.toString());
                    print(box.read('color'));
                  });
                }),
          ],
        ),
      ],
    );
  }
}
