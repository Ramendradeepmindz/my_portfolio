

import 'package:flutter/cupertino.dart';




class AppLocalizations {
  final Locale locale;
 

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations);
}