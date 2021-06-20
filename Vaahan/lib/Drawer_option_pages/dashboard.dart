import 'package:demo_flutter2/DashboardStructure.dart';
import '../components/dashboard_count_card.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      drawer: Drawer(
        child: DrawerStructure(),
      ),
      body: DashCard(),
    );
  }
}
