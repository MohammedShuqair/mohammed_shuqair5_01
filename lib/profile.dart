import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

const Color lightBC = Color(0xfff2f2f2);
const Color darkBC = Color(0xff011667);
const TextStyle bold = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
const TextStyle semeBold = TextStyle(fontSize: 18, fontWeight: FontWeight.w500);

const double p18 = 18;
const double s18 = 18;
const double s8 = 8;
const double r30 = 30;
const double r16 = 16;
const double width = 60;
const double strokeWidth = 5;
const double firstMargin = 0;
const double secondMargin = width * 0.6;
const double thirdMargin = 2 * secondMargin;
const String photographer = 'assets/images/photographer.jpg';
const List<String> works = [
  'assets/images/avenue.jpg',
  'assets/images/flowers.jpg',
  'assets/images/road.jpg',
];

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    final double sh = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(p18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(r30),
              child: Image.asset(
                photographer,
                fit: BoxFit.cover,
                height: sh * 0.4,
              ),
            ),
            const SizedBox(height: s18),
            const Text(
              "Mosawer Gamed",
              style: bold,
            ),
            const SizedBox(height: 8),
            Text(
              "The best photographer in Gaza, Palestine, the Arab world, Asia, Africa and our neighborhood",
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.grey[600]),
            ),
            const SizedBox(height: s18),
            Container(
              padding: const EdgeInsetsDirectional.fromSTEB(26, 14, 14, 14),
              decoration: BoxDecoration(
                  color: lightBC, borderRadius: BorderRadius.circular(18)),
              child: Stack(
                alignment: AlignmentDirectional.centerEnd,
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "120",
                        style: bold,
                      ),
                      SizedBox(width: s8),
                      Text(
                        "works",
                        style: semeBold,
                      ),
                    ],
                  ),
                  ImageItem(
                    hasBorder: false,
                    margin: firstMargin,
                    imagePath: works[0],
                  ),
                  ImageItem(
                    margin: secondMargin,
                    imagePath: works[1],
                  ),
                  ImageItem(
                    margin: thirdMargin,
                    imagePath: works[2],
                  ),
                ],
              ),
            ),
            const SizedBox(height: s18),
            const Row(
              children: [
                InfoItem(
                  num: 3,
                  hint: 'application',
                ),
                SizedBox(width: s18),
                InfoItem(
                  isDark: false,
                  num: 25,
                  hint: 'views tody',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InfoItem extends StatelessWidget {
  const InfoItem({
    super.key,
    this.isDark = true,
    required this.num,
    required this.hint,
  });
  final bool isDark;
  final int num;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsetsDirectional.only(
            start: 26, end: p18, top: 18, bottom: 18),
        decoration: BoxDecoration(
          color: isDark ? darkBC : lightBC,
          borderRadius: BorderRadius.circular(r30),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$num",
              style: bold.copyWith(color: isDark ? Colors.white : Colors.black),
            ),
            Text(
              hint,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall
                  ?.copyWith(color: isDark ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageItem extends StatelessWidget {
  const ImageItem(
      {super.key,
      required this.margin,
      required this.imagePath,
      this.hasBorder = true});
  final double margin;
  final String imagePath;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: hasBorder ? width : width - (strokeWidth * 2),
      height: hasBorder ? width : width - (strokeWidth * 2),
      margin: EdgeInsetsDirectional.only(end: margin),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border:
              hasBorder ? Border.all(width: strokeWidth, color: lightBC) : null,
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.cover)),
    );
  }
}
