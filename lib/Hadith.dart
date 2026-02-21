import 'package:flutter/material.dart';

class Hadith extends StatefulWidget {
  @override
  State<Hadith> createState() => _HadithState();
}

class _HadithState extends State<Hadith> {
  int num_of_hadith = 0;
  List<String> hadiths = [
    "الدِّينُ النَّصيحَةُ.",
    "يَسِّرُوا وَلَا تُعسِّرُوا.",
    "إِنَّمَا الأَعْمَالُ بِالنِّيَّاتِ، وَإِنَّمَا لِكُلِّ امْرِئٍ مَا نَوَى.",
    "مِن حُسْنِ إِسْلَامِ المَرءِ تَرْكُهُ مَا لَا يَعْنِيهِ.",
    "لَا يُؤْمِنُ أَحَدُكُمْ حَتَّى يُحِبَّ لأَخِيهِ مَا يُحِبُّ لِنَفْسِهِ.",
    "مَن سَتَرَ مُؤْمِنًا سَتَرَهُ اللهُ فِي الدُّنْيَا وَالآخِرَةِ.",
    "الكَلِمَةُ الطَّيِّبَةُ صَدَقَةٌ.",
    "مَن قَامَ رَمَضَانَ إيمَانًا وَاحْتِسَابًا غُفِرَ لَهُ مَا تَقَدَّمَ مِن ذَنبهِ.",
    "إِذَا جَاءَ رَمَضَانُ فُتِحَتْ أَبْوَابُ الرَّحْمَةِ، وَغُلِقَتْ أَبْوَابُ النَّارِ، وَصُفِّدَتِ الشَّيَاطِينُ.",
    "مَن فَطَّرَ صَائِمًا كَانَ لَهُ مِثْلُ أَجْرِهِ غَيْرَ أَنَّهُ لَا يَنقُصُ مِن أَجْرِ الصَّائِمِ شَيْءٌ."
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/ramdan.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Spacer(flex: 2),
              Text(
                hadiths[num_of_hadith],
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 40,
                  color: Color(0xfffbc77b),
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
              ),
              Spacer(flex: 3),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (num_of_hadith < hadiths.length - 1) {
                      num_of_hadith++;
                    } else {
                      num_of_hadith = 0;
                    }
                  });
                },
                child: Text("التالي", style: TextStyle(fontSize: 30)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xfffbc77b),
                  foregroundColor: Color(0xff082837),
                  fixedSize: Size(120, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }
}
