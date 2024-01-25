import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tourism_ui_clone/screen/dummydata.dart';

class HomeScreen extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            title: Center(child: Text("GoFast")),
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.blue,
                ),
              ),
            ],
            bottom: AppBar(
              title: Container(
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.blueGrey[200],
                    hintText: "Search...",
                    suffixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent)
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.transparent),
                    )
                  ),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(10.0),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Places"),
                  Text("View all"),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 500,
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                children: places.map((e) => InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, "placedetails", arguments: e["id"]);
                  },
                  child: Card(
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(e["img1"]),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          left: 5,
                          top: 5,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Text("${e["id"]}", style: GoogleFonts.poppins(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                          ),
                        ),
                        Positioned(
                          left: 5,
                          bottom: 2,
                          child: Text(e["name"], style: GoogleFonts.poppins(
                            color: Color.fromARGB(255, 255, 255, 255), 
                            fontWeight: FontWeight.bold, 
                            fontSize: 20,
                          ),)),
                      ],
                    ),
                  ),
                )).toList(),
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(50),
            sliver: SliverToBoxAdapter(
              child: MaterialButton(
                height: 50,
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