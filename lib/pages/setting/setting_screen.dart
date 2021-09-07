import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:health_hero/routes.dart';
import 'package:health_hero/services/theme_changer.dart';
import 'package:provider/provider.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: _buildLayoutSection(context),
    );
  }

  Widget _buildLayoutSection(BuildContext context) {
    return ListView(
      children: <Widget>[
        ListTile(
          title: Text(
              'Dark theme'),
          subtitle: Text('Turn On the Dark Side'),
          trailing: Switch(
            activeColor: Theme.of(context).appBarTheme.color,
            activeTrackColor: Theme.of(context).textTheme.headline6!.color,
            value: Provider.of<ThemeChanger>(context).isDarkMode,
            onChanged: (booleanValue) {
              // Provider.of<ThemeChanger>(context, listen: false)
              //     .updateTheme(booleanValue);
            },
          ),
        ),
      ],
    );
  }

}
