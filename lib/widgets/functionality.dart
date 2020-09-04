
import 'package:ecotesting/models/functionModel.dart';
import 'package:flutter/material.dart';

import '../confiq.dart';

class Functionality extends StatelessWidget {
  final FunctionModel functionModel;

  Functionality({@required this.functionModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100,
        ),
        CircleAvatar(
          backgroundColor: ColorMaterial.lightColor,
          child: Image.asset(
            this.functionModel.image,
            height: 24,
            width: 24,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(this.functionModel.name),
        ),
      ],
    );
  }
}
