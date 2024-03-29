import 'package:flutter/material.dart';

class LayoutuilderWidget extends StatelessWidget {
  const LayoutuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constrains) {
          if (constrains.maxWidth <= 500) {
            return const MobileLayout();
          } else {
            return const Text("another Layout");
          }
        },
      ),
    );
  }
}

class MobileLayout extends StatelessWidget {
  const MobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => DetailsView(number: index + 1),
              ),
            );
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 16),
            color: Colors.green,
            child: ListTile(
              title: Text('${index + 1}'),
            ),
          ),
        );
      },
      itemCount: 10,
    );
  }
}

class DetailsView extends StatelessWidget {
  final int number;
  const DetailsView({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          number.toString(),
          style: const TextStyle(fontSize: 36),
        ),
      ),
    );
  }
}
