import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture/card.dart';
import 'package:furniture/data.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          Column(
            children: [
              Flexible(
                flex: 5,
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/image/image2.png'),
                        fit: BoxFit.fill
                      )
                    ),

                  )
              ),
              Flexible(
                flex: 6,
                  child: Container(
                  )
              )
            ],
          ),
          Column(
            children: [
              Flexible(
                flex: 1,
                  child: Container(
                    color: Colors.transparent,
                  )),
              Flexible(
                  flex: 3,
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.only(bottom: 14.0,top: 14.0,left: 15.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(50.0)
                                  ),
                                  child:
                                  Row(
                                    children: [
                                      Image(image: ExactAssetImage('assets/image/search.png')),
                                      SizedBox(width: 10.0,),
                                      Text("Search",style: TextStyle(fontSize: 14.0,fontFamily: 'Poppinsnormal',fontWeight: FontWeight.w400,color: Color.fromRGBO(130,117,116, 1)),)
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 18.0,),
                              Container(
                                padding: EdgeInsets.all(16.0),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(238,101,84, 1),
                                    shape: BoxShape.circle
                                ),
                                child: Image(image: ExactAssetImage('assets/image/icon1.png'),),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                              padding: EdgeInsets.only(top: 33.0),
                              margin: EdgeInsets.only(top: 18.0),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 30.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text('Popular',style: TextStyle(color: Color.fromRGBO(50, 40, 83, 1),fontSize: 28.0,fontFamily: 'Poppinsnormal',fontWeight: FontWeight.w600),),
                                        Text('View All',style: TextStyle(color: Color.fromRGBO(238,101,84, 1),fontSize: 16.0,fontFamily: 'Poppinsnormal',fontWeight: FontWeight.w500),),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Expanded(
                                      child: ListView.builder(
                                        physics: BouncingScrollPhysics(),
                                        scrollDirection: Axis.horizontal,
                                        itemCount: 2,
                                          itemBuilder: (context,index){
                                            return CardHome(image: datacart[index]["image"],title: datacart[index]["title"],harga: datacart[index]["harga"],index: index,);
                                          }
                                          )
                                  )
                                ],
                              ),
                            )
                        )
                      ],
                    )

              )),
            ],
          )
        ],
      ),
    );
  }
}
