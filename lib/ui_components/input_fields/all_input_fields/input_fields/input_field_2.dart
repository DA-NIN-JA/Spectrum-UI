import 'package:flutter/material.dart';

class InputField2 extends StatelessWidget {
  const InputField2({super.key, required this.hinttext, required this.label});
  final String hinttext;
  final String label;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: width - 20,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black)),
              child: TextField(
                decoration: InputDecoration(
                  hintText: hinttext,
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 13),
                  contentPadding: EdgeInsets.only(left: 15),
                  border: InputBorder.none,
                  // enabledBorder: OutlineInputBorder(
                  //     borderSide: BorderSide(color: Colors.black, width: 1.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
