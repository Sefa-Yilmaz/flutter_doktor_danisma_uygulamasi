// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter_doktor_danisma_uygulamasi/components/schedule_card.dart';
import 'package:flutter_doktor_danisma_uygulamasi/constant.dart';

class DetailScreen extends StatelessWidget {
  var _name;
  var _description;
  var _imageUrl;
  DetailScreen(
    Key? key,
    this._name,
    this._description,
    this._imageUrl,
  ) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/detail_illustration.png'),
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child:
                          SvgPicture.asset('assets/icons/back.svg', height: 18),
                    ),
                    SvgPicture.asset('assets/icons/3dots.svg', height: 18),
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.3),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kBackgroundColor,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            _imageUrl,
                            height: 120,
                          ),
                          const SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                _name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: kTitleTextColor,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                _description,
                                style: TextStyle(
                                  color: kTitleTextColor.withOpacity(0.7),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: kBlueColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/phone.svg',
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: kBlueColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/chat.svg',
                                    ),
                                  ),
                                  const SizedBox(width: 16),
                                  Container(
                                    padding: const EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: kBlueColor.withOpacity(0.1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SvgPicture.asset(
                                      'assets/icons/video.svg',
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'daasd',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: kTitleTextColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        'dasasdasdddasdaasd\nsdasdsdsdsdadasdadasdadas',
                        style: TextStyle(
                          height: 1.6,
                          color: kTitleTextColor.withOpacity(0.7),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'dadsdassddasdas',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: kTitleTextColor,
                        ),
                      ),
                      const SizedBox(height: 20),
                      ScheduleCard(
                        key,
                        'sadsa',
                        'ddddd',
                        '12',
                        'jan',
                        kBlueColor,
                      ),
                      const SizedBox(height: 20),
                      ScheduleCard(
                        key,
                        'sadsa',
                        'ddddd',
                        '12',
                        'jan',
                        kOrangeColor,
                      ),
                      const SizedBox(height: 20),
                      ScheduleCard(
                        key,
                        'sadsa',
                        'ddddd',
                        '12',
                        'jan',
                        kYellowColor,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
