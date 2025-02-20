import 'package:fitness4all/common/color_extensions.dart';
import 'package:fitness4all/common_widgets/round_button.dart';
import 'package:fitness4all/common_widgets/round_text_field.dart';
import 'package:fitness4all/screen/login/goal_screen.dart';
import 'package:flutter/material.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({super.key});

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                "Enter Your Name",
                style: TextStyle(
                  color: TColor.primaryText,
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const RoundTextField(
                hintText: "i.e code for any",
              ),
              const SizedBox(
                height: 40,
              ),
              RoundButton(
                  title: "NEXT",
                  isPadding: false,
                  onPressed: () {
                    context.push(const GoalScreen());
                  }),
              const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}