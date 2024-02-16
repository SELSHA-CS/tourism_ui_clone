import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism_ui_clone/screen/dummydata.dart';
import 'package:tourism_ui_clone/widgets/exbtn.dart';
import 'package:tourism_ui_clone/widgets/mytext.dart';
import 'package:tourism_ui_clone/widgets/searchbox.dart';

class HomeScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: const Icon(Icons.menu),
            title: Center(child: EasyRichText(
              "GoFast",
              defaultStyle: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25,
              ),
              patternList: [
                EasyRichTextPattern(
                  targetString: 'Go',
                  stringAfterTarget: 'Fast',
                  matchWordBoundaries: false,
                  style: const TextStyle(color: Colors.blue)
                ),
              ],
            )),
            actions: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                ),
              ),
            ],
            bottom: AppBar(
              title: const SearchBox(),
            ),
          ),
          const SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverToBoxAdapter(
              child: MyText(
                text1: 'Popular Places', 
                text2: 'View All',
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              childAspectRatio: .8,
              children: places.map((e) => InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'placedetails', arguments: e['id']);
                },
                child: Card(
                  child: Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(e["img"]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        left: 5,
                        top: 5,
                        child: SizedBox(
                          height: 35,
                          width: 60,
                          child: Card(
                            color: Color.fromARGB(255, 45, 103, 204),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: Text("${e['id']}", style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 10,
                                fontWeight: FontWeight.bold
                              )),
                            ),
                          ),
                        )
                      ),
                      Positioned(
                        left: 5,
                        bottom: 2,
                        child: Text(e["name"], style: GoogleFonts.poppins(
                          color: Color.fromARGB(255, 255, 255, 255), 
                          fontWeight: FontWeight.bold, 
                          fontSize: 18,
                        ),)
                      ),
                    ],
                  ),
                ),
              )).toList(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(30),
            sliver: SliverToBoxAdapter(
              child: ExButton(),
            ),
          ),
        ],
      ),
    );
  }
}