import 'package:flutter/material.dart';
import 'package:learn_english/value/app_colors.dart';
import 'package:learn_english/value/app_styles.dart';

class ItemTopic extends StatefulWidget {
  ItemTopic({super.key, required this.topic, required this.total, required this.numberLearned, required this.pathImage});
  final int total;
  int numberLearned;
  final String topic;
  final String pathImage;
  @override
  State<ItemTopic> createState() => _ItemTopicState();
}

class _ItemTopicState extends State<ItemTopic> {
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(widget.topic,style: AppStyle.h5.copyWith(fontSize: 20,color: Colors.black)),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:32.0),
                    child: Text(widget.numberLearned.toString(),style: AppStyle.h6.copyWith(fontSize: 12,color: AppColor.textColor),),
                  ),
                 SizedBox(width: 8,),
                 Expanded(
                   child: Padding(
                     padding: const EdgeInsets.only(top: 32.0),
                     child: LinearProgressIndicator(
                        value: widget.numberLearned/widget.total.toDouble(),
                        backgroundColor: Colors.grey,
                        valueColor: AlwaysStoppedAnimation<Color>(AppColor.primaryColor),
                       borderRadius: BorderRadius.circular(8),
                       minHeight: 12,
                      ),
                   ),
                 ),
                  SizedBox(width: 8,),
                  Image.asset(widget.pathImage,width: 80,height: 80,fit: BoxFit.cover,)
                ],
              )
            ],
          ),
    );
  }
}
