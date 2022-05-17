import 'package:flutter/material.dart';
import 'package:music_ui/constants.dart';
import 'package:music_ui/player_controls.dart';
import 'album_cover.dart';
import 'navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double sliderValue = 2;
  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          NavigationBar(),
          Container(
            height: height/ 2.5,
            child: ListView.builder(itemBuilder: (context, index){
              return AlbumCover();
            },
            itemCount: 5,
              scrollDirection: Axis.horizontal,
            ),
          ),
          Text('Şarkı', style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.w500,
              color: darkPrimaryColor
          ),
          ),
          Text('Sanatçı', style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
              color: darkPrimaryColor
          ),
          ),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: 3,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 5),
            ),
            child: Slider(
              value: sliderValue,
              activeColor: darkPrimaryColor,
              inactiveColor: darkPrimaryColor.withOpacity(0.3),
              onChanged: (value) {
              setState(() {
                sliderValue = value;
              });
            },
              min: 0,
              max: 20,
            ),
          ),
          PllayerControls(),
          SizedBox(
            height: 60,
          ),
        ],
      ),
    );
  }
}
