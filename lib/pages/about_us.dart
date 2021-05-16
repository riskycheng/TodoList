import 'package:flutter/material.dart';
import 'package:flutter_app/utils/app_constant.dart';
import 'package:flutter_app/utils/app_util.dart';
import 'package:flutter_app/utils/keys.dart';

class AboutUscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About",
          key: ValueKey(AboutUsKeys.TITLE_ABOUT),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(PADDING_SMALL),
          child: ListView(
            children: <Widget>[
              Card(
                child: Column(
                  children: <Widget>[
                    // report issue item begin
                    ListTile(
                      leading: Icon(Icons.bug_report, color: Colors.black),
                      title: Text(
                        "Report an Issue",
                        key: ValueKey(AboutUsKeys.TITLE_REPORT),
                      ),
                      subtitle: Text(
                        "Having an issue ? Report it here",
                        key: ValueKey(AboutUsKeys.SUBTITLE_REPORT),
                      ),
                      onTap: () => launchURL(ISSUE_URL),
                    ),
                    // report issue item end

                    //version info begin
                    ListTile(
                      leading: Icon(Icons.update, color: Colors.black),
                      title: Text("Version"),
                      subtitle: Text("1.0.0",
                          key: ValueKey(AboutUsKeys.VERSION_NUMBER)),
                    ),
                    //version info end
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: PADDING_MEDIUM, left: PADDING_MEDIUM),
                      child: Text(
                        "Author",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: FONT_MEDIUM),
                      ),
                    ),
                    ListTile(
                        leading: Icon(Icons.perm_identity, color: Colors.black),
                        title: Text(
                          "Jian Cheng",
                          key: ValueKey(AboutUsKeys.AUTHOR_NAME),
                        ),
                        subtitle: Text(
                          "riskycheng",
                          key: ValueKey(AboutUsKeys.AUTHOR_USERNAME),
                        ),
                        onTap: () => launchURL(GITHUB_URL)),
                    ListTile(
                        leading: Icon(Icons.bug_report, color: Colors.black),
                        title: Text("fork on github"),
                        onTap: () => launchURL(PROJECT_URL)),
                    ListTile(
                        leading: Icon(Icons.email, color: Colors.black),
                        title: Text("Send an email"),
                        subtitle: Text("riskycheng@gmail.com",
                            key: ValueKey(AboutUsKeys.AUTHOR_EMAIL)),
                        onTap: () => launchURL(EMAIL_URL))
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: PADDING_MEDIUM, left: PADDING_MEDIUM),
                      child: Text(
                        "Ask Question?",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: FONT_MEDIUM),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(PADDING_SMALL),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          IconButton(
                              icon: Image.asset(
                                "assets/twitter_logo.png",
                                scale: 8.75,
                              ),
                              onPressed: () => launchURL(TWITTER_URL)),
                          IconButton(
                              icon: Image.asset("assets/facebook_logo.png",
                                  scale: 8.75),
                              onPressed: () => launchURL(FACEBOOK_URL))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: PADDING_MEDIUM, left: PADDING_MEDIUM),
                      child: Text(
                        "Apache License",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: FONT_MEDIUM),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(PADDING_NORMAL),
                      child: ListTile(
                        subtitle: Text("Copyright 2021 @Jian Cheng"
                            '\n\nLicensed under the Apache License, Version 2.0\t(the "License")\t'
                            'you may not use this file except in compliance with the License. '
                            'You may obtain a copy of the License at:'
                            "\n\nhttp://www.apache.org/licenses/LICENSE-2.0"
                            '\n\nUnless required by applicable law or agreed to in writing,'
                            'software distributed under the License is distributed on an "AS IS" BASIS,'
                            'WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.'
                            'See the License for the specific language governing permissions and limitations under the License.'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
