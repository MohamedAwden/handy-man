import 'package:flutter/material.dart';

class HeaderWorker extends StatelessWidget {
  const HeaderWorker({super.key});

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    TextTheme textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
            color: Colors.white,
          ),
          width: double.infinity,
          child: Image.asset(
            'assets/images/carpenter_worker.png',
            height: screenSize.height * .3,
            fit: BoxFit.fitHeight,
          ),
        ),
        SizedBox(height: 19),
        Text(
          'JOHN MAYERS',
          style: textTheme.titleMedium?.copyWith(color: Colors.white),
        ),
        const SizedBox(height: 6),
        Text(
          'Carpentry Services',
          style: textTheme.titleSmall,
        ),
      ],
    );
  }
}
