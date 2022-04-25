import 'package:fertility_tracker/constants/styles.dart';
import 'package:fertility_tracker/ui/home/home_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (context, model, child) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Good morning',
                      style: kSubtitleTextStyle.copyWith(fontSize: 12)),
                  Text('Jane Doe',
                      style: kSubtitleTextStyle.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 16)),
                ],
              ),
              Image.asset('assets/logo.png', height: 40),
            ],
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipPath(
                clipper: CurveClipper(),
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Image.asset('assets/week37.jpg'),
                ),
              ),
              verticalSpaceRegular,
              Padding(
                padding: kMainPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Due date',
                        style: kSubtitleTextStyle.copyWith(color: Colors.grey)),
                    Text(
                      '18th December 2022',
                      style: kSubtitleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    verticalSpaceRegular,
                    Text(
                      'WEEK 37 OF PREGNANCY',
                      style: kSubtitleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                        'We at MUMHEALTH congratulate you on the journey so far as the 37th-38th week of pregnancy is considered early term. Pregnant women who make it to the 37th week no longer have to worry about having the baby early.The fetus weighs around 6½ pounds and practices breathing during every waking moment.',
                        style: kSubtitleTextStyle.copyWith(color: Colors.grey)),
                    verticalSpaceRegular,
                    Text(
                      'BODY CHANGES',
                      style: kSubtitleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                        'Vaginal discharge is thicker now and more abundant. This discharge helps to lubricate the birthing canal for when the time comes.During the last weeks before labor, the body may start to get ready for birth by cleansing the intestinal system. Pushing out a baby is quite similar to pushing out a bowel movement.You might start having bouts of diarrhea in preparation for labor',
                        style: kSubtitleTextStyle.copyWith(color: Colors.grey)),
                    verticalSpaceRegular,
                    Text(
                      'TIPS FOR THE WEEK',
                      style: kSubtitleTextStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Keep the hospital bag in a visible place',
                      style: kSubtitleTextStyle.copyWith(color: Colors.grey),
                    ),
                    Text(
                      'You should have completed hospital registration, and planning for the best possible route to the hospital',
                      style: kSubtitleTextStyle.copyWith(color: Colors.grey),
                    ),
                    Text(
                      'Make sure you attend your prenatal appointment so fetal positioning can be checked.',
                      style: kSubtitleTextStyle.copyWith(color: Colors.grey),
                    ),
                    Text(
                      'Start to look into your breastfeeding options and plan to commence your maternity leave if you haven’t already',
                      style: kSubtitleTextStyle.copyWith(color: Colors.grey),
                    ),
                    Text(
                      'Continue to take your prenatal vitamins and get as much rest',
                      style: kSubtitleTextStyle.copyWith(color: Colors.grey),
                    ),
                    verticalSpaceRegular,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 40;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
