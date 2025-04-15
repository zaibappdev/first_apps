import 'package:flutter/material.dart';

class LanguageSetting extends StatefulWidget {
  const LanguageSetting({super.key});

  @override
  State<LanguageSetting> createState() => _LanguageSettingState();
}

class _LanguageSettingState extends State<LanguageSetting> {
  List<Map<String, dynamic>> languages = [
    {"name": "English", "code": "en", "selected": true},
    {"name": "العربية", "code": "ar", "selected": false},
    {"name": "اردو", "code": "ur", "selected": false},
    {"name": "Français", "code": "fr", "selected": false},
    {"name": "Türkçe", "code": "tr", "selected": false},
    {"name": "Bahasa Indonesia", "code": "id", "selected": false},
    {"name": "বাংলা", "code": "bn", "selected": false},
    {"name": "Malay", "code": "ms", "selected": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //Appbar
      appBar: AppBar(
        title: Text('Language'),
        centerTitle: true,
        elevation: 0,
      ),

      //Body
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          final language = languages[index];
          return RadioListTile(
            title: Text(language["name"]),
            value: language["code"],
            groupValue: languages.firstWhere((lang) => lang["selected"] == true)["code"],
            onChanged: (value) {
              setState(() {
                for (var lang in languages) {
                  lang["selected"] = (lang["code"] == value);
                }
              });
            },
            activeColor: Colors.green,
            secondary: language["selected"] == true
                ? Icon(Icons.check, color: Colors.green)
                : null,
          );
        },
      ),
    );
  }
}
