import 'package:flutter/material.dart';
import 'package:learn_english/value/app_assets.dart';
import 'package:learn_english/value/app_colors.dart';
import 'package:learn_english/value/app_styles.dart';
import 'package:learn_english/widgets/item_topic.dart';

class PageTopic extends StatefulWidget {
  const PageTopic({super.key});
  @override
  State<PageTopic> createState() => _PageTopicState();
}

class _PageTopicState extends State<PageTopic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondColor,
      body:  ListView.builder(
        itemCount: 10, // Số lượng danh sách chiều dài
        itemBuilder: (BuildContext context, int index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Divider(),
              Text(
                'ListView $index',
                style: AppStyle.h4.copyWith(color: Colors.black),
              ),
              Container(
                height: 156, // Chiều cao của danh sách theo chiều ngang
                child: ListView.builder(
                  scrollDirection: Axis.horizontal, // Chỉ định chiều ngang
                  itemCount: 5, // Số lượng phần tử trong danh sách theo chiều ngang
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: 200,
                      margin: EdgeInsets.symmetric(horizontal: 16,vertical: 6),
                      child: Center(
                        child: ItemTopic(topic: 'Daily',
                            total: 30,
                            numberLearned: 15,
                            pathImage: ImagePath.tree),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 10),
            ],
          );
        },
      )
    );
  }
}
