import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:nami/core/extensions/num_extension.dart';
import 'package:nami/presentation/component/inputs/custom_text_field.dart';

class ContactItem extends StatelessWidget {
  const ContactItem(
      {super.key,
      required this.image,
      required this.text,
      required this.controller,
      required this.keyboardType});

  final String text;
  final String image;
  final TextInputType keyboardType;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Row(
        children: [
          SvgPicture.asset(
            image,
          ),
          Gap(8.w),
          Expanded(
            child: CustomTextField(
              controller: controller,
              label: text,
              keyboardType: keyboardType,
            ),
          ),
        ],
      ),
    );
  }
}
