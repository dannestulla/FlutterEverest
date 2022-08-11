import 'package:flutter/widgets.dart';

import '../utils/styles.dart';

class MainTitle extends StatelessWidget {
  const MainTitle(this.title, {Key? key}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(title, style: CustomTextStyle.titleBold);
  }
}

class SubTitle extends StatelessWidget {
  const SubTitle(this.subTitle, {Key? key}) : super(key: key);
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Text(subTitle, style: CustomTextStyle.subTitleBold);
  }
}
