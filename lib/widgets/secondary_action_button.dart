import 'package:flutter/material.dart';
import 'package:flutter_fight_club/resources/fight_club_colors.dart';

class SecondaryActionButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const SecondaryActionButton({
    Key? key,
    required this.onTap,
    required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 8),
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(
            color: FightClubColors.darkGreyText,
            width: 2,
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            fontSize: 13,
            color: FightClubColors.darkGreyText,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
