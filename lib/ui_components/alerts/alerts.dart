import 'package:flutter/material.dart';
import 'package:flutter_component_ui/theme/theme.dart';

import 'package:flutter_component_ui/ui_components/alerts/all_alerts/coloured_alert/alert1.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/coloured_alert/alert2.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/coloured_alert/alert3.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/coloured_alert/alert4.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/simple_alert/alert5.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/simple_alert/alert6.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/simple_alert/alert7.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/simple_alert/alert8.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/dark_mode_alert/alert9.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/dark_mode_alert/alert10.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/dark_mode_alert/alert11.dart';
import 'package:flutter_component_ui/ui_components/alerts/all_alerts/dark_mode_alert/alert12.dart';

class AlertScreen extends StatelessWidget {
  AlertScreen({super.key});

  final List<Widget> coluredAlerts = [
    const Alert1("AMessage", "ADescriptions"),
    const Alert2("AMessage", "ADescriptions"),
    const Alert3("AMessage", "ADescriptions"),
    const Alert4("AMessage", "ADescriptions"),
  ];
  final List<Widget> simpleAlerts = [
    const Alert5("AMessage", "ADescriptions"),
    const Alert6("AMessage", "ADescriptions"),
    const Alert7("AMessage", "ADescriptions"),
    const Alert8("AMessage", "ADescriptions"),
  ];
  final List<Widget> simpleAlertsDarkMode = [
    const Alert9("AMessage", "ADescriptions"),
    const Alert10("AMessage", "ADescriptions"),
    const Alert11("AMessage", "ADescriptions"),
    const Alert12("AMessage", "ADescriptions"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              //Colured Alerts
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Coloured Alerts",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: MyTheme.lightBluishColor)),
                  )),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                    coluredAlerts.length,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: coluredAlerts[index],
                        )),
              ),

              //Simple Alerts
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Simple Alerts",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor),
                    ),
                  )),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                    simpleAlerts.length,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: simpleAlerts[index],
                        )),
              ),

              //Dark Mode Alerts
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Dark Mode Alerts",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: MyTheme.lightBluishColor),
                    ),
                  )),
              Wrap(
                direction: Axis.horizontal,
                children: List.generate(
                    simpleAlertsDarkMode.length,
                    (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: simpleAlertsDarkMode[index],
                        )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
