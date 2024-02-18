import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism_ui_clone/screen/dummydata.dart';
import 'package:tourism_ui_clone/widgets/cardbox.dart';
import 'package:tourism_ui_clone/widgets/exbtn.dart';
import 'package:tourism_ui_clone/widgets/placedet.dart';
import 'package:tourism_ui_clone/widgets/specrows.dart';

class PlaceDetails extends StatelessWidget {
  const PlaceDetails({super.key});

  @override
  Widget build(BuildContext context) {

    final placeId = ModalRoute.of(context)?.settings.arguments;
    final place = places.firstWhere((element) => element["id"] == placeId);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(place['place_name'], style: const TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold
            ),),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: PlaceDet(place: place),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: Text("About Places", style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: Text(place["content"], style: GoogleFonts.poppins(fontSize: 12),),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: Text("Special Facilities", style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: SpecRows(
                text1: 'Parking', icon1: Icons.car_rental, 
                text2: '24×7 support', icon2: Icons.support, 
                text3: 'Free wifi', icon3: Icons.wifi,
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(5),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 220,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(place["img2"]),
                    fit: BoxFit.cover,
                )),
              )
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(5),
            sliver: SliverToBoxAdapter(
              child: Text("Special Facilities", style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(5),
            sliver: SliverToBoxAdapter(
              child: CardBox()
          )),
          const SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: ExButton()
          )),
        ]),
    );
  }
}