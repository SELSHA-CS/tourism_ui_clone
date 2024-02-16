import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism_ui_clone/screen/dummydata.dart';
import 'package:tourism_ui_clone/widgets/exbtn.dart';

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
            title: Text(place['place_name'], style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.bold
            ),),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(place['place_name'], style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              child: RatingBar.builder(
                                initialRating: 5,
                                direction: Axis.horizontal,
                                itemPadding: EdgeInsets.all(.5),
                                itemCount: 5,
                                itemBuilder: (context, index) => SizedBox(
                                  height: 40,
                                  width: 40,
                                  child: Icon(Icons.star, color: Colors.amber,)),
                                onRatingUpdate: (rating){
                                  print(rating);
                                },
                              ),
                            ),
                            Text("4.7 Rating")
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container( 
                    height: 50,
                    child: VerticalDivider(thickness: 2, color: Colors.grey,)
                  ),
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
                  ),
                ),
              )
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(5),
            sliver: SliverToBoxAdapter(
              child: Text("Special Facilities", style: GoogleFonts.poppins(fontSize: 25, fontWeight: FontWeight.bold),),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(5),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(4, (index) => SizedBox(
                  height: 50,
                  width: 70,
                  child: Card(
                    color: Colors.blueGrey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Adult"),
                          Text("02"),
                        ],
                      ),
                    ),
                  ),
                )
              )
              )
            )
          ),
          SliverPadding(
            padding: EdgeInsets.all(10),
            sliver: SliverToBoxAdapter(
              child: ExButton()
            ),
          ),
        ],
      ),
    );
  }
}