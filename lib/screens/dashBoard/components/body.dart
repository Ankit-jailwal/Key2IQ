import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:key2iqround1/screens/quiz/quiz.dart';
import 'package:key2iqround1/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:12,right: 12,top: 16,bottom: 16),
      child: GestureDetector(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => quiz()),
          );
        },
        child: Container(
          width: SizeConfig.screenWidth,
          height: SizeConfig.screenHeight,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:15.0,bottom: 15.0),
                  child: Text("What do you want to do ...",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                Expanded(
                  child:StaggeredGridView.countBuilder(
                    crossAxisCount: 4,
                    itemCount: 12,
                    itemBuilder: (BuildContext context, int index) => Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Compete Now",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black),),
                        SizedBox(height: 10,),
                        Expanded(
                          child: new Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.black,
                            ),

                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(height: 15,),
                                  Image.network("https://img2.pngio.com/white-trophy-icon-free-white-trophy-icons-black-and-white-trophy-badge-png-256_256.png",height: 80,),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Challenge for you",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.white),),
                                  ),
                                  Divider()
                                ],
                              )),
                        ),
                      ],
                    ),
                    staggeredTileBuilder: (int index) =>
                    new StaggeredTile.count(2, index.isEven ? 2:2),
                    mainAxisSpacing: 4.0,
                    crossAxisSpacing: 4.0,
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
