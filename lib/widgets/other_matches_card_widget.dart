import 'package:flutter/material.dart';

class OtherMatchesCardWidget extends StatefulWidget {
  const OtherMatchesCardWidget({super.key});

  @override
  State<OtherMatchesCardWidget> createState() => _OtherMatchesCardWidgetState();
}

class _OtherMatchesCardWidgetState extends State<OtherMatchesCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 24),
      color: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Chelsea",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Image.asset("assets/chelsea.png", height: 40),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "23 Oct 2023",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  "03:00 PM",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 15),
                ),
              ],
            ),
            Image.asset("assets/man_utd.png", height: 40),
            Text(
              "Man Utd",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Icon(
              Icons.star,
              color: Theme.of(context).iconTheme.color,
            ),
          ],
        ),
      ),
    );
  }
}
