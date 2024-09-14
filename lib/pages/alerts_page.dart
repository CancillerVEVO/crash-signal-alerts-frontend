import 'package:flutter/material.dart';
import 'package:user_frontend/services/router_constants.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class AlertsPage extends StatelessWidget {
  final String page;
  final String limit;

  const AlertsPage({required this.page, required this.limit, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Text(
                'CrashSignal',
                style: TextStyle(
                  fontFamily: GoogleFonts.roboto().fontFamily,
                ),
              )
            ],
          ),
          Column(
            children: [
              Text("Page: $page"),
              Text("Limit: $limit"),
            ],
          ),
          ListTile(
            title: const Text("Alert 1"),
            onTap: () {
              context.goNamed(RouterConstants.alertDetails,
                  pathParameters: {"id": "1"});
            },
          ),
          ListTile(
            title: const Text("Alert 2"),
            onTap: () {
              context.goNamed(RouterConstants.alertDetails,
                  pathParameters: {"id": "2"});
            },
          ),
        ],
      ),
    );
  }
}
