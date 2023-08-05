// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class animationProvider extends ChangeNotifier {
  double height = 50;
  double width = 50;

  List description = [
    "Stuart was the first minion picked by Kevin to help join him on his quest to gain a new master. Stuart, though not paying attention to Kevin's speech, agrees to join despite not knowing anything about what's coming ahead. Bob is then picked after him, and they all head out to find a new master. And halfway through, Stuart becomes so hungry that a hallucination begins, and he attempts to lick Kevin, but Kevin spanks him several times. However, he and Kevin and Bob realize that they already in New York.",
    "Bob is a Minion who is more childish and immature than most of the other Minions. He is described as a 'Little Brother' who finds love in anything and everything, including a rat (who he named Poochy) he found in a sewer in the Minions film. He also enjoys bedtime stories and playing with his favorite stuffed teddy bear, Tim. However, in the audition scene in Despicable Me 2 (having grown since the time of Minions), he became more plumper which made him look more like the short and plump Minions with spiky hair, just no hair. Is also shown more mature, albeit still playful, as well as more of a goofball like all the other Minions.",
    "Kevin and Jerry are asked to watch the girls. After Jerry sang them a lullaby, they play golf. The ball is planted on Jerry's mouth and Kevin planned to hit Jerry on the head, but is interrupted by a noise. Terrified, Kevin and Jerry tried to check what is causing the noise but it was just a cat looking through the garbage. Kevin laughed at Jerry for being a coward which caused Jerry to start a fight with him. A light shone from above interrupted their fight, and Kevin left Jerry abducted and waved goodbye to Jerry. After Jerry is abducted, Kevin struggled to save himself from having the same fate as Jerry. However, he failed his attempt to do so and they both floated to the air and disappeared.",
    "The Minions are small, yellow, capsule shaped creatures, who have one or two eyes. They are the signature characters of the Despicable Me series, as well as the official mascots for Illumination. They bring much of the comedy in the film, and they are known as the scene-stealer of the movie. Frequently, they speak in an incomprehensible language, called Minionese, occasionally switching to English. They are much childish in some ways, yet they seem to be very intelligent in certain aspects. All the minions are supporting characters in Minions (with the exception of Kevin, Stuart, and Bob), major characters in Despicable Me and Despicable Me 2 and supporting characters in Despicable Me 3 (with the exception of Mel).",
  ];

  List image = [
    "https://pngimg.com/uploads/minions/small/minions_PNG67.png",
    "https://freepngimg.com/save/110704-minion-bob-free-download-png-hd/920x718",
    "https://www.freepnglogos.com/uploads/minions-png/minions-png-feeling-funny-29.png",
    "https://images.squarespace-cdn.com/content/v1/5dc8c552827e992c23db627c/1597984376521-N5S6Y1O377EO7QU5DH3E/minion.png",
  ];

  List minionsName = [
    "Stuart",
    "Bob",
    "Kevin",
    "All Minions",
  ];

  animation({required double size}) {
    height = width = size;
    notifyListeners();
  }
}
