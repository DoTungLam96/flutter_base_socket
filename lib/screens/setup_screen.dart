import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get_it/get_it.dart';
import 'package:new_base_with_socket/base/constants.dart';
import 'package:new_base_with_socket/core/app_service.dart';
import 'package:new_base_with_socket/generated/l10n.dart';
import 'package:new_base_with_socket/screens/home_screen.dart';
import 'package:new_base_with_socket/theme/app_language.dart';
import 'package:new_base_with_socket/theme/app_theme.dart';
import 'package:new_base_with_socket/theme/utils.dart';

class SetupScreen extends StatefulWidget {
  const SetupScreen({super.key});

  @override
  State<SetupScreen> createState() => _SetupScreenState();
}

class _SetupScreenState extends State<SetupScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _animationOffset =
      Tween<Offset>(begin: Offset.zero, end: Offset(-510, 0))
          .animate(_controller);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 8))
          ..repeat()
          ..addListener(() {
            setState(() {});
          });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        color: ThemeUtils.color.bgPrimary,
        padding: const EdgeInsets.all(24),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ILanguage.current.flutter_copyright,
              style: const TextStyle(
                fontSize: 16.0,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    GetIt.instance<AppCubit>()
                        .changeTheme(theme: ThemeType.light);
                  },
                  child: Container(
                    width: 124,
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: ThemeUtils.color.bgSecondary),
                    child: Text(
                      "Light",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ThemeUtils.color.bgSecondaryLighter,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    GetIt.instance<AppCubit>()
                        .changeTheme(theme: ThemeType.dark);
                  },
                  child: Container(
                    width: 124,
                    height: 45,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: ThemeUtils.color.bgSecondary),
                    child: Text(
                      "Dark",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: ThemeUtils.color.bgSecondaryLighter,
                        fontSize: 13,
                      ),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      var appLanguage = AppLanguage.vi;
                      if (GetIt.instance<AppCubit>().getAppLanguageDefault() ==
                          AppLanguage.en) {
                        appLanguage = AppLanguage.vi;
                      } else {
                        appLanguage = AppLanguage.en;
                      }
                      GetIt.instance<AppCubit>()
                          .changeLanguage(appLanguage: appLanguage);
                    },
                    child: Container(
                      height: 45,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: ThemeUtils.color.bgSecondary),
                      child: Text(
                        ILanguage.current.language,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: ThemeUtils.color.bgSecondaryLighter,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(
                  Constants.homePage,
                  arguments: HomeArg(id: "6930000", name: "June"),
                );
                // do something
              },
              child: Container(
                width: 124,
                height: 45,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    color: ThemeUtils.color.bgSecondary),
                child: Text(
                  "Home",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: ThemeUtils.color.bgSecondaryLighter,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
