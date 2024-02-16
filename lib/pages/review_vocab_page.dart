import 'package:flutter/material.dart';
import 'package:learn_english/value/app_colors.dart';
import 'package:learn_english/value/app_styles.dart';
import 'package:learn_english/widgets/button_text.dart';

class ReviewVocab extends StatefulWidget {
  const ReviewVocab({super.key});

  @override
  State<ReviewVocab> createState() => _ReviewVocabState();
}

class _ReviewVocabState extends State<ReviewVocab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 40, left: 20, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.close), Text('1/20')],
            ),
          ),
          Text(
            'Chọn nghĩa đúng của từ',
            style: AppStyle.h5.copyWith(color: Colors.black),
          ),
          Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'Neighbor',
                  style: AppStyle.h4.copyWith(color: AppColor.primaryColor),
                ),
              )),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ButtonText(
                            onTapButton: () {},
                            text: 'Football',
                          ),
                        ),
                        Expanded(
                          child: ButtonText(
                            onTapButton: () {},
                            text: 'Football',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: ButtonText(
                            onTapButton: () {},
                            text: 'Football',
                          ),
                        ),
                        Expanded(
                          child: ButtonText(
                            onTapButton: () {},
                            text: 'Football',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )),
          Expanded(flex:1,child: Spacer())
        ],
      ),
    );
  }
}
