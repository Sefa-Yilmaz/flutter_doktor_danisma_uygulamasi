import 'package:flutter/material.dart';
import 'package:flutter_doktor_danisma_uygulamasi/components/categori_card.dart';
import 'package:flutter_doktor_danisma_uygulamasi/components/doctor_card.dart';
import 'package:flutter_doktor_danisma_uygulamasi/components/search_bar.dart';
import 'package:flutter_doktor_danisma_uygulamasi/constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icons/menu.svg'),
                    SvgPicture.asset('assets/icons/profile.svg'),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Find Your Desired\nDoctor',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                    color: kTitleTextColor,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: SearchBar(),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Categories',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              buildCategoriList(),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  'Top Doctors',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: kTitleTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              buildDoctorList(),
            ],
          ),
        ),
      ),
    );
  }

  buildCategoriList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          CategoriCard(
            key,
            'Dental\nSungeon',
            'assets/icons/dental_surgeon.png',
            kBlueColor,
          ),
          const SizedBox(width: 10),
          CategoriCard(
            key,
            'Heart\nSungeon',
            'assets/icons/heart_surgeon.png',
            kYellowColor,
          ),
          const SizedBox(width: 10),
          CategoriCard(
            key,
            'Eye\nSungeon',
            'assets/icons/eye_specialist.png',
            kOrangeColor,
          ),
        ],
      ),
    );
  }

  buildDoctorList() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          DoctorCard(
            'Dr. sadd asdasda ',
            'sdadasdasda',
            'assets/images/doctor1.png',
            kBlueColor,
          ),
          const SizedBox(height: 20),
          DoctorCard(
            'Dr. sadd asdasda ',
            'sdadasdasda',
            'assets/images/doctor2.png',
            kBlueColor,
          ),
          const SizedBox(height: 20),
          DoctorCard(
            'Dr. sadd asdasda ',
            'sdadasdasda',
            'assets/images/doctor3.png',
            kBlueColor,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
