// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settings_ui/settings_ui.dart';
class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  List<bool> _list = [false, false];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: SettingsList(sections: [
        SettingsSection(title: Text("Base Settings"), tiles: [
          SettingsTile.switchTile(
            initialValue: _list[0],
            onToggle: (bool value) {
              setState(() {
                _list[0] = value;
              });
            },
            title: Text("Switch to Dark Mode"),
          ),
          SettingsTile.switchTile(
            initialValue: _list[1],
            onToggle: (bool value) {
              setState(() {
                _list[1] = value;
              });
            },
            title: Text("Enable Notifications"),
          ),
          SettingsTile.navigation(
              title: Text("About"),
              enabled: true,
              value: Text("About"),
              onPressed: (context) => {Navigator.pushNamed(context, "/about")}),
        ])
      ]),
    );
  }
}
