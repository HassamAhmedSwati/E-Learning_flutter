import 'package:flutter/material.dart';

class SearchFilter extends StatefulWidget {
  final String text;
  const SearchFilter({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  State<SearchFilter> createState() => _SearchFilterState();
}

class _SearchFilterState extends State<SearchFilter> {
  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 20,
          width: 70,
          child: Checkbox(
            value: isChecked,
            onChanged: (bool? value) {
              setState(() {
                isChecked = value!;
              });
            },
            activeColor: Colors.blueAccent,
            checkColor: Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
        const SizedBox(width: 10,),
        Text(widget.text,style: const TextStyle(fontSize: 16,color: Color(0xff404653)),)
      ],
    );
  }
}
