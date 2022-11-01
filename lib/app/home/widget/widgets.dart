import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  TextEditingController? controller;
  GestureTapCallback? onTap;
  SearchBar({
    Key? key,
    this.controller,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      //padding: const EdgeInsets.symmetric( vertical: 10),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white
      ),
      child: Row(
        children: [
          const SizedBox(width:  15,),
          Expanded(
            child: TextFormField(
              controller: controller,
              decoration: const InputDecoration(
                 border: InputBorder.none,
                  hintText: 'search for Country'
              ),
            ),
          ),
          Container(
            height: 80,
            width: 80,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.lightBlue
            ),
            child: InkWell(
              onTap: onTap,
              child: const Icon(Icons.search, size: 25, color: Colors.white,),
            ),
          )
        ],
      ),
    );
  }
}
