import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DiscoverPage extends StatelessWidget {
  var jackets=['Normal jacket','Hoodie','Leather jacket'];
  var tShirts=['White T-Shirt','White T-Shirt'];
  var jacketsPrice=['\$ 72','\$ 50','\$ 99'];
  var tShirtsPrice=['\$ 27','\$ 22'];
  var jacketsImg=['images/jacket.png','images/hoodie.jpg','images/leather.jpg',];
  var tShirtsImg=['images/white.jpg','images/blackTshirt.jpg'];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(text:'Jackets',),
              Tab(text:'Trousers'),
              Tab(text:'T-Shirts'),
              Tab(text:'Shoes')
            ],
          ),
          title:Text(
            'DISCOVER',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0
            ),

          ) ,
          elevation: 0.0,
          actions: [
            Icon( Icons.shopping_cart),
            SizedBox(width: 15,),
            IconButton(icon:Icon( Icons.close,color: Colors.red[700],size: 30),
               onPressed: () => Navigator.of(context).pop(),
              
            )
          ],
        ),
        body: TabBarView(

          children: [
            GridView.count(
          crossAxisCount: 2,
          children: List.generate(3, (index) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                    left: 10,
                    right: 10
                  ),
                  child: Container(
                    width:220,
                    height: 180,
                    child: Stack(

                    children: [
                      Image(
                        image: AssetImage(jacketsImg[index],),width: 180,height: 160,),
                     Positioned(
                      bottom: 20,
                       left:10,

                      child: Container(
                        color:Colors.white.withOpacity(0.7),
                        width:160,
                        height:60,

                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(jackets[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              SizedBox(height: 5,),
                              Text(jacketsPrice[index],
                                style: TextStyle(
                                    fontSize: 17,
                                  color: Colors.grey[900]
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                     )
            ],
                      ),
                  ),
                  ),

              ],
            );
          }),
        ),
            Center(
              child: Text('saa'),

            ),
            GridView.count(
              crossAxisCount: 2,
              children: List.generate(2, (index) {
                return Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 20,
                          left: 10,
                          right: 10
                      ),
                      child: Container(
                        width:220,
                        height: 180,
                        child: Stack(

                          children: [
                            Image(
                              image: AssetImage(tShirtsImg[index],),width: 180,height: 160,),
                            Positioned(
                              bottom: 20,
                              left:10,

                              child: Container(
                                color:Colors.white.withOpacity(0.7),
                                width:160,
                                height:60,

                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(tShirts[index],
                                        style: TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Text(tShirtsPrice[index],
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Colors.grey[900]
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                            )
                          ],
                        ),
                      ),
                    ),

                  ],
                );
              }),
            ),

            Center(
              child: Text('sa'),

            ),

          ],
        ),
      ),
    );
  }

}
