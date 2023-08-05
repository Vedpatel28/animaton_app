// ignore_for_file: camel_case_types

import 'package:animaton_app/controllers/animation_provider.dart';
import 'package:animaton_app/utiles/routes_utiles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Minions",
          style: GoogleFonts.carroisGothicSc(
            fontSize: s.height * 0.04,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Consumer<animationProvider>(
          builder: (context, provider, _) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: SizedBox(
                      height: s.height * 1,
                      child: ListView.builder(
                        itemCount: provider.image.length,
                        itemBuilder: (context, index) => Stack(
                          children: [
                            Hero(
                              tag: index + 5,
                              child: AnimatedContainer(
                                height: s.height * 0.2,
                                width: s.width * 0.8,
                                curve: Curves.bounceInOut,
                                margin: const EdgeInsets.all(12),
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  color: Colors.black87,
                                ),
                                duration: const Duration(milliseconds: 300),
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(height: s.height * 0.02),
                                    Text(
                                      "${provider.minionsName[index]}",
                                      style: GoogleFonts.carroisGothicSc(
                                        fontSize: s.height * 0.02,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(height: s.height * 0.01),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 70),
                                      child: Text(
                                        "${provider.description[index]}",
                                        maxLines: 3,
                                        style: GoogleFonts.carroisGothicSc(
                                          fontSize: s.height * 0.02,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                provider.animation(size: 300);
                                Navigator.of(context).pushNamed(
                                  AllRouters.descriptionPage,
                                  arguments: index,
                                );
                              },
                              child: Transform.translate(
                                offset: const Offset(-60, 30),
                                child: Hero(
                                  tag: index,
                                  child: AnimatedContainer(
                                    width: s.width * 0.4,
                                    height: s.height * 0.16,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          provider.image[index],
                                        ),
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                    duration: const Duration(milliseconds: 300),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
