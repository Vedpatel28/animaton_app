// ignore_for_file: camel_case_types

import 'package:animaton_app/controllers/animation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class home_page extends StatelessWidget {
  home_page({super.key});

  double end = 12;

  @override
  Widget build(BuildContext context) {
    Size s = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
      ),
      body: Consumer<animationProvider>(
        builder: (context, provider, _) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  provider.animation(
                    size: provider.height - 12,
                  );
                },
                onDoubleTap: () {
                  provider.animation(
                    size: provider.height + 12,
                  );
                },
                child: AnimatedContainer(
                  height: provider.height,
                  width: provider.width,
                  curve: Curves.elasticInOut,
                  duration: const Duration(microseconds: 400),
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: NetworkImage(
                        "https://pngimg.com/uploads/minions/small/minions_PNG67.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
              ),
              Slider(
                value: provider.height,
                max: 200,
                min: 1,
                label: provider.height.toString(),
                onChanged: (value) {
                  provider.animation(size: value);
                },
              ),

            ],
          );
        },
      ),
    );
  }
}
