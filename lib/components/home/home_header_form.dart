import 'package:flutter/material.dart';
import 'package:flutter_airbnb/size.dart';

class HomeHederForm extends StatelessWidget {
  const HomeHederForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-0.6, 0),
      child: Container(
        width: 420,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Form(
          child: Column(
            children: [
              _buildFormTitle(),
              _buildFormField(),
              _buildFormSubmit(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildFormTitle() {
    return SizedBox();
  }

  Widget _buildFormField() {
    return SizedBox();
  }

  Widget _buildFormSubmit() {
    return SizedBox();
  }
}
