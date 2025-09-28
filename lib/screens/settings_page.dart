import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  // To toggle between light and dark theme
  bool _isDarkMode = false;

  // To toggle a setting or feature later on
  bool _isNotificationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color(0xFF2C3E50),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // App Theme Section
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'App Theme',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                _isDarkMode ? 'Dark Mode' : 'Light Mode',
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              trailing: Switch(
                value: _isDarkMode,
                onChanged: (value) {
                  setState(() {
                    _isDarkMode = value;
                  });
                  // Toggle the theme mode here (light/dark)
                  final theme = _isDarkMode ? ThemeMode.dark : ThemeMode.light;
                  // You can save the state or apply the theme here
                  // For simplicity, we assume system theme mode
                  // Context could be used to apply theme mode
                },
              ),
            ),
            const Divider(),

            // Notification Settings Section
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Enable Notifications',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                _isNotificationEnabled ? 'Notifications are ON' : 'Notifications are OFF',
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
              trailing: Switch(
                value: _isNotificationEnabled,
                onChanged: (value) {
                  setState(() {
                    _isNotificationEnabled = value;
                  });
                  // You can implement notification enabling/disabling logic here
                },
              ),
            ),
            const Divider(),

            // Language Section (or other settings)
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Language',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'English',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  // Navigate to another page or perform an action
                  // Example: Navigate to a language settings page
                },
              ),
            ),
            const Divider(),

            // About section
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'About',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'CommuTrade v1.0.0',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.info),
                onPressed: () {
                  // Show about information or navigate to a new page
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
