import 'package:flutter/material.dart';

class CardHome extends StatelessWidget {
  final String image;
  final String title;
  final String harga;
  final int index;

  const CardHome({Key key, this.image, this.title, this.harga, this.index}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 230,
      margin: EdgeInsets.only(left: 30.0,bottom: 10.0,right: index==1?20.0:0),
      child: Stack(
        children: [
          Column(
            children: [
              Flexible(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Color.fromRGBO(243,242	,244, 1),
                        boxShadow: [
                          BoxShadow(
                            color: Color.fromRGBO(238, 101, 84, 0.5),
                            spreadRadius: index==0?5:0,
                            blurRadius:index==0?15:0,
                            offset: index==0? Offset(0, 10):Offset(0, 0),
                          )
                        ]
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: double.infinity,
                          height: 211.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: ExactAssetImage(image),
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                        SizedBox(height:16.0 ,),
                        Padding(
                          padding: EdgeInsets.only(left: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(title,style: TextStyle(fontSize: 18.0,fontFamily: 'Poppinsnormal',fontWeight: FontWeight.w600,color: Color.fromRGBO( 35,31,32,1)),),
                              SizedBox(height: 20.0,),
                              Text(harga,style: TextStyle(fontSize: 22.0,fontFamily: 'Poppinsnormal',fontWeight: FontWeight.w600,color: Color.fromRGBO(238, 101, 84, 1)))
                            ],
                          ),
                        )
                      ],
                    ),
                  )
              )
            ],
          ),
          Positioned(
            top: 14.0,
            right: 17,
            child: Container(
              padding: EdgeInsets.all(9.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white
              ),
              child:
              Icon(Icons.favorite,color: Color.fromRGBO(238, 101, 84, 1),size: 18.0,),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                color: Color.fromRGBO(238, 101, 84, 1),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(24.0),bottomRight: Radius.circular(15.0))
              ),
              child:
              Icon(Icons.add,color: Colors.white,size: 25.0,),
            ),
          )
        ],
      ),
    );
  }
}
