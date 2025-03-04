import 'package:flutter/material.dart';

class CommentTab extends StatelessWidget {
  const CommentTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "   Carpentry Services\n     -- John Mayers --",
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Row(
            children: List.generate(
              4,
              (index) => const Icon(
                Icons.star,
                color: Color(0xffFFE234),
                size: 15,
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.favorite,
              color: Color(0xffC94040),
              size: 20,
            ),
          ],
        ),
      ],
    );
  }
}
