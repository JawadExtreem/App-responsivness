import 'package:flutter/material.dart';
import 'package:responsive_app/responsive_page.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({super.key});

  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(title: Text('Responsive Ui')),
        body: ResponsivePage(mobile: body(), tablet: body(), desktop: body()),
      ),
    );
  }
}

Widget body() {
  return Column(
    children: [
      Container(
        width: 320,
        height: 180,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.red, Colors.pink]),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      Expanded(
        child: Text(
          'Hey There, \n CodeX is an ecosystem of practical resources for developers who want to \n build high quality mobile app Hey There, \n CodeX is an ecosystem of practical resources for developers who want to \n build high quality mobile app Hey There, \n CodeX is an ecosystem of practical resources for developers who want to \n build high quality mobile app Hey There, \n CodeX is an ecosystem of practical resources for developers who want to \n build high quality mobile appHey There, \n CodeX is an ecosystem of practical resources for developers who want to \n build high quality mobile app Hey There, \n CodeX is an ecosystem of practical resources for developers who want to \n build high quality mobile appHey There, \n CodeX is an ecosystem of practical resources for developers who want to \n build high quality mobile app Hey There ..<',
          style: TextStyle(fontSize: 22),
        ),
      ),
    ],
  );
}
