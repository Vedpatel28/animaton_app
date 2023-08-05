import 'package:animaton_app/controllers/animation_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class description_Page extends StatelessWidget {
  const description_Page({super.key});

  @override
  Widget build(BuildContext context) {
    int index = ModalRoute.of(context)!.settings.arguments as int;
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
          ),
        ),
        title: Text(
          Provider.of<animationProvider>(context).minionsName[index],
          style: GoogleFonts.carroisGothicSc(
            fontSize: s.height * 0.04,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: SingleChildScrollView(
          child: Consumer<animationProvider>(
            builder: (context, provider, _) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Hero(
                    tag: index,
                    child: AnimatedContainer(
                      curve: Curves.bounceOut,
                      duration: const Duration(
                        milliseconds: 300,
                      ),
                      height: s.height * 0.4,
                      width: s.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            provider.image[index],
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: s.height * 0.02),
                  Hero(
                    tag: index + 5,
                    child: AnimatedContainer(
                      height: s.height * 0.4,
                      width: s.width,
                      alignment: Alignment.center,
                      duration: const Duration(milliseconds: 300),
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: Text(
                            provider.description[index],
                            style: GoogleFonts.carroisGothicSc(
                              fontSize: s.height * 0.02,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
