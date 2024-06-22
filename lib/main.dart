import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
import 'package:roadside_assitance/generated/l10n.dart';
import 'package:roadside_assitance/request_data_cubit/get_data_cubit.dart';
import 'package:roadside_assitance/views/first_screen.dart';
import 'package:roadside_assitance/views/home_view.dart';
import 'package:roadside_assitance/views/intro_screens.dart';
import 'package:roadside_assitance/views/log_in_page.dart';
import 'package:roadside_assitance/views/register_page.dart';
import 'package:roadside_assitance/views/services_page.dart';
import 'package:roadside_assitance/views/servive_provider_signup.dart';
import 'package:roadside_assitance/views/splash_screen.dart';
import 'package:roadside_assitance/views/sttings_view.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => LocaleNotifier(),
      child: Consumer<LocaleNotifier>(
        builder: (context, localeNotifier, child) {
          return BlocProvider(
            create: (context) => getDataCubit(),
            child: MaterialApp(
              locale: localeNotifier.locale,
              localizationsDelegates: [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,
              debugShowCheckedModeBanner: false,
              initialRoute: '/',
              routes: {
                '/': (context) => SplashScreen(),
                registerPage.Id: (context) => registerPage(),
                first_screen.ID: (context) => first_screen(),
                introScreens.ID: (context) => introScreens(),
                LogInPage.Id: (context) => const LogInPage(),
                homeView.Id: (context) => const homeView(),
                ServivesView.ID: (context) => ServivesView(),
                service_provider_page.ID: (context) => service_provider_page(),
              },
            ),
          );
        },
      ),
    );
  }
}
