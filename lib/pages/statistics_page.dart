//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fight_club/resources/fight_club_colors.dart';
import 'package:flutter_fight_club/widgets/secondary_action_button.dart';

class StatisticsPage extends StatelessWidget {
  const StatisticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: FightClubColors.background,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16.0, right: 16.0, top: 24),
              height: 40,
              alignment: Alignment.center,
              child: Text(
                'Statistics',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w400,
                    color: FightClubColors.darkGreyText),
              ),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: EdgeInsets.all(16),
              child: SecondaryActionButton(
                  onTap: () {
                    Navigator.of(context).pop(MaterialPageRoute(
                      builder: (context) => StatisticsPage(),
                    ));
                  },
                  text: 'Back'),
            ),
          ],
        ),
      ),
    );
  }
}
