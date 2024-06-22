import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roadside_assitance/classes/shared_preferences.dart';
import 'package:roadside_assitance/generated/l10n.dart';
import 'package:roadside_assitance/views/log_in_page.dart';
import 'package:roadside_assitance/widgets/custom_button.dart';



class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          customButton(
            text: "عربي",
            font_size: 25,
            onTap: () {
              Provider.of<LocaleNotifier>(context, listen: false).setLocale(Locale('ar'));
            },
          ),
          SizedBox(height: 70),
          customButton(
            text: "English",
            font_size: 25,
            onTap: () {
              Provider.of<LocaleNotifier>(context, listen: false).setLocale(Locale('en'));
            },
          ),
          SizedBox(height: 70),
          customButton(
            text: S.of(context).log_out,
            font_size: 25,
            onTap: () async {
              await TokenManager.removeToken();
              Navigator.pushNamedAndRemoveUntil(context, LogInPage.Id, (route) => false);
            },
          ),
        ],
      ),
    );
  }
}


class LocaleNotifier extends ChangeNotifier {
  Locale _locale = Locale('en');

  Locale get locale => _locale;

  void setLocale(Locale locale) {
    if (_locale != locale) {
      _locale = locale;
      notifyListeners();
    }
  }
}
