import 'package:flutter/material.dart';
import 'package:flutter_basics_c19/mon_thurs/screens/xo/xo_screen.dart';
import 'package:flutter_basics_c19/mon_thurs/utils/app_constants.dart';
import 'package:flutter_basics_c19/mon_thurs/utils/m_text_styles.dart';
import 'package:flutter_basics_c19/mon_thurs/widgets/app_scaffold.dart';

class PickPlayerScreen extends StatelessWidget {
  static const routeName = "pick_player";

  const PickPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 6,
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/xo_pattern.png"),
                    fit: BoxFit.fill)),
            child: Center(
              child: Text(
                "Tic-Tac-Toe",
                style: AppTextStyles.white36Bold,
              ),
            ),
          ),
        ),
        Expanded(
            flex: 4,
            child: Column(
              children: [
                Spacer(),
                Text(
                  "Pick who goes first?",
                  style: AppTextStyles.white24Normal,
                ),
                SizedBox(
                  height: 16,
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, XoScreen.routeName,
                              arguments: AppConstants.x);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(32)),
                            child: Image.asset("assets/images/ic_x.png")),
                      )),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                          child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, XoScreen.routeName,
                              arguments: AppConstants.o);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(32)),
                            child: Image.asset("assets/images/ic_o.png")),
                      )),
                      SizedBox(
                        width: 16,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
              ],
            ))
      ],
    ));
  }
}
