import 'package:flutter/material.dart';
import 'package:mohammed_shuqair5_01/profile.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);
  static const double bottom = 40;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
              top: p18, left: p18, right: p18, bottom: 120),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomButton(
                    icon: Icons.arrow_back_ios_outlined,
                    onTap: () {},
                  ),
                  CustomButton(
                    notification: 3,
                    icon: Icons.keyboard_option_key,
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                "74 result for\n'photographer'",
                style: bold.copyWith(color: darkBC),
              ),
              const SizedBox(
                height: 32,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  const Shadow(
                    bottom: bottom,
                    bottomMargin: 0,
                    horizontalMargin: 34,
                  ),
                  const Shadow(
                    bottom: bottom,
                    bottomMargin: 20,
                    horizontalMargin: 18,
                    color: Color(0xffe8e8e8),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 18, vertical: 20),
                    margin: const EdgeInsets.only(bottom: bottom),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: darkBC,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Photographer',
                              style: bold.copyWith(
                                  color: Colors.white, fontSize: 26),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Container(
                                width: 44,
                                height: 44,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: Colors.white.withOpacity(0.2),
                                ),
                                child: const Icon(
                                  Icons.bookmark_border_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14)),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 8),
                          child: Text(
                            "\$120/h",
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.indigo[900]),
                          ),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.only(end: 60),
                          child: Text(
                            'Subject and studio photography of goods for an online store, photo processing.',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.white.withOpacity(0.5),
                                ),
                          ),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        Row(
                          children: [
                            CTextButton(
                              hint: "Photography",
                              onTap: () {},
                            ),
                            CTextButton(
                              hint: "Photoshop",
                              onTap: () {},
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Dislike",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Like",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Shadow extends StatelessWidget {
  const Shadow(
      {super.key,
      required this.bottom,
      required this.bottomMargin,
      required this.horizontalMargin,
      this.color = lightBC});

  final double bottom;
  final double bottomMargin;
  final double horizontalMargin;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2 * bottom,
      margin: EdgeInsets.symmetric(
          horizontal: horizontalMargin, vertical: bottomMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
    );
  }
}

class CTextButton extends StatelessWidget {
  const CTextButton({
    super.key,
    required this.hint,
    required this.onTap,
  });
  final String hint;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white.withOpacity(0.2),
          ),
          child: Text(
            hint,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500),
          )),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.icon,
    required this.onTap,
    this.notification,
  });
  final IconData icon;
  final VoidCallback onTap;
  final int? notification;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onTap,
      icon: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              color: lightBC,
            ),
            child: Icon(
              icon,
              color: Colors.grey[700],
            ),
          ),
          if (notification != null)
            CircleAvatar(
              radius: 10,
              backgroundColor: darkBC,
              child: Text(
                "$notification",
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
            )
        ],
      ),
    );
  }
}
