import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism_ui_clone/screen/dummydata.dart';

class PlaceDetails extends StatelessWidget {
  const PlaceDetails({super.key});

  @override
  Widget build(BuildContext context) {

    final placeId = ModalRoute.of(context)?.settings.arguments;
    final place = places.firstWhere((element) => element["id"] == placeId);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Text(place["place_name"], style: GoogleFonts.poppins(fontSize: 20),)
                  ),
                  Container( 
                    height: 50,
                    child: VerticalDivider(thickness: 3, color: Colors.grey,)),
                  SizedBox(width: 10,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(place["img3"], fit: BoxFit.cover, height: 70, width: 70,),
                  )
                ],
              ),
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
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.car_rental, color: Colors.blue,),
                      Text("Parking", style: GoogleFonts.poppins(color: Colors.blue),),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.support, color: Colors.blue,),
                      Text("24×7 support", style: GoogleFonts.poppins(color: Colors.blue),),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.wifi, color: Colors.blue,),
                      Text("Free wifi", style: GoogleFonts.poppins(color: Colors.blue),),
                    ],
                  ),
                ],
              )
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: Container(
                height: 220,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage(place["img2"]),
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: Text("Special Facilities", style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    color: Colors.blueGrey[200],
                  ),
                  child: Column(
                    children: [
                      Text("Adult"),
                      Text("02"),
                    ],
                  ),
              ))
              )
            )
          ),
          SliverPadding(
            padding: const EdgeInsets.all(20),
            sliver: SliverToBoxAdapter(
              child: MaterialButton(
                height: 40,
                onPressed: (){},
                color: const Color.fromARGB(255, 10, 59, 99),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text("Explore Now", style: GoogleFonts.poppins(color: Colors.white),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}