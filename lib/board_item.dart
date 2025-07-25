import 'package:flutter/material.dart';

class BoardItem extends StatelessWidget {
  final String text;
  final int index;
  final void Function(int) onClick;

  const BoardItem({
    super.key,
    required this.text,
    required this.index,
    required this.onClick,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick(index);
      },
      child: Container(
        color: const Color(0xffffffff),
        alignment: Alignment.center,
        child: text.isEmpty
            ? null
            : Image.asset('assets/${text.toLowerCase()}.png'),
      ),
    );
  }
}
