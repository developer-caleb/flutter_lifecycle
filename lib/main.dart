import 'package:flutter/material.dart';
import 'package:lifecycle/pages/further_more_page.dart';

import 'pages/comparison_page.dart';

void main() => runApp(MaterialApp(
      home: MainScreen(),
    ));

class MainScreen extends StatelessWidget {
  const MainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildRouteButton(
              context: context,
              buttonText: 'Stateful stateless 비교',
              nextRoute: ComparisonPage(),
            ),
            buildRouteButton(
              context: context,
              buttonText: 'further more',
              nextRoute: FurtherMorePage(),
            )
          ],
        ),
      ),
    );
  }

  TextButton buildRouteButton({required BuildContext context, required String buttonText, required Widget nextRoute}) {
    return TextButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextRoute),
          );
        },
        child: Text(buttonText));
  }
}
