// Copyright 2020 The Sponge authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';
import 'package:sponge_flutter_api/sponge_flutter_api.dart';
import 'package:sponge_remote/src/application_constants.dart';

Future<void> showAboutAppDialog(BuildContext context) async {
  final ThemeData themeData = Theme.of(context);
  final TextStyle headerTextStyle =
      themeData.textTheme.bodyText1.apply(fontWeightDelta: 2);
  final TextStyle aboutTextStyle = themeData.textTheme.bodyText1;
  final TextStyle linkStyle =
      themeData.textTheme.bodyText1.copyWith(color: themeData.accentColor);
  final TextStyle noteTextStyle =
      themeData.textTheme.bodyText1.apply(color: getSecondaryColor(context));

  await showDefaultAboutAppDialog(
    context,
    contents: RichText(
      textAlign: TextAlign.justify,
      text: TextSpan(
        children: <TextSpan>[
          TextSpan(
            style: headerTextStyle,
            text:
                '\n\n$APPLICATION_NAME is a generic GUI client to Sponge REST API services. '
                'It allows users to call remote Sponge actions.',
          ),
          TextSpan(
              style: aboutTextStyle,
              text:
                  '\n\nSponge is an open-source action and event processing system. '
                  'The supported Sponge server versions are ${ApplicationConstants.SUPPORTED_SPONGE_VERSION_MAJOR_MINOR}.x.'),
          TextSpan(
            style: aboutTextStyle,
            text: '\n\nFor more information please visit the ',
          ),
          LinkTextSpan(
            style: linkStyle,
            url: 'https://sponge.openksavi.org/mobile',
            text: '$APPLICATION_NAME',
          ),
          TextSpan(
            style: aboutTextStyle,
            text: ' home page and the ',
          ),
          LinkTextSpan(
            style: linkStyle,
            url: 'https://sponge.openksavi.org',
            text: 'Sponge',
          ),
          TextSpan(
            style: aboutTextStyle,
            text:
                ' project home page.\n\nTo see the source code of this app, please visit the $APPLICATION_NAME ',
          ),
          LinkTextSpan(
            style: linkStyle,
            url: 'https://github.com/softelnet/sponge_remote',
            text: 'GitHub repo',
          ),
          TextSpan(
            style: aboutTextStyle,
            text: '.',
          ),
          TextSpan(
              style: noteTextStyle,
              text:
                  '\n\nThe current version is in alpha phase and supports only a limited set of data types and type features.'
                  ''),
        ],
      ),
    ),
  );
}