import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class PlaceDet extends StatelessWidget {
  const PlaceDet({
    super.key,
    required this.place,
  });

  final Map<String, dynamic> place;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(place['place_name'], style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 15
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: RatingBar.builder(
                      initialRating: 5,
                      direction: Axis.horizontal,
                      itemPadding: const EdgeInsets.all(.5),
                      itemCount: 5,
                      itemBuilder: (context, index) => const SizedBox(
                        height: 40,
                        width: 40,
                        child: Icon(Icons.star, color: Colors.amber,)),
                      onRatingUpdate: (rating){
                        print(rating);
                      },
                    ),
                  ),
                  const Text("4.7 Rating")
                ],
              ),
            ],
          ),
        ),
        Container( 
          height: 50,
          child: const VerticalDivider(thickness: 2, color: Colors.grey,)
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(place["img3"], fit: BoxFit.cover, height: 70, width: 70,),
        )
      ],
    );
  }
}