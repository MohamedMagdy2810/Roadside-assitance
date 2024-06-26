// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Log out`
  String get log_out {
    return Intl.message(
      'Log out',
      name: 'log_out',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get setting {
    return Intl.message(
      'Settings',
      name: 'setting',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `home`
  String get home {
    return Intl.message(
      'home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `hi`
  String get hello {
    return Intl.message(
      'hi',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Service providers`
  String get Service {
    return Intl.message(
      'Service providers',
      name: 'Service',
      desc: '',
      args: [],
    );
  }

  /// `Request service`
  String get request {
    return Intl.message(
      'Request service',
      name: 'request',
      desc: '',
      args: [],
    );
  }

  /// `No Data Yet`
  String get noData {
    return Intl.message(
      'No Data Yet',
      name: 'noData',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get nameProfile {
    return Intl.message(
      'Full Name',
      name: 'nameProfile',
      desc: '',
      args: [],
    );
  }

  /// `username`
  String get usernameProfile {
    return Intl.message(
      'username',
      name: 'usernameProfile',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailProfile {
    return Intl.message(
      'Email',
      name: 'emailProfile',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phoneProfile {
    return Intl.message(
      'Phone Number',
      name: 'phoneProfile',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get passProfile {
    return Intl.message(
      'Change Password',
      name: 'passProfile',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get saveProfile {
    return Intl.message(
      'Save',
      name: 'saveProfile',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enterName {
    return Intl.message(
      'Enter your name',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `Enter your username`
  String get enterUser {
    return Intl.message(
      'Enter your username',
      name: 'enterUser',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enterEmail {
    return Intl.message(
      'Enter your email',
      name: 'enterEmail',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Phone number`
  String get enterPhone {
    return Intl.message(
      'Enter your Phone number',
      name: 'enterPhone',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enterPass {
    return Intl.message(
      'Enter your password',
      name: 'enterPass',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
