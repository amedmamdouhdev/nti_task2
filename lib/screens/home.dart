import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruites/models/catgoryModel.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> banners = [
      'assets/image/banners/Slider 1.svg',
      'assets/image/banners/Slider 2.svg',
      'assets/image/banners/Slider 3.svg',
    ];
    List<Catgorymodel> catgory = [
      Catgorymodel(image: 'assets/image/banners/image 3.png', name: 'fruits'),
      Catgorymodel(
        image: 'assets/image/banners/image 4.png',
        name: 'Beverages',
      ),
      Catgorymodel(image: 'assets/image/banners/image 3.png', name: 'fruits'),
      Catgorymodel(
        image: 'assets/image/banners/image 4.png',
        name: 'Beverages',
      ),

      Catgorymodel(image: 'assets/image/banners/image 3.png', name: 'Laundry'),

      Catgorymodel(
        image: 'assets/image/banners/image 4.png',
        name: 'vegataboles',
      ),
      Catgorymodel(image: 'assets/image/banners/image 3.png', name: 'fruits'),
      Catgorymodel(
        image: 'assets/image/banners/image 4.png',
        name: 'Beverages',
      ),

      Catgorymodel(image: 'assets/image/banners/image 3.png', name: 'Laundry'),

      Catgorymodel(
        image: 'assets/image/banners/image 4.png',
        name: 'vegataboles',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset('assets/image/logo/Vector (2).svg'),
            SizedBox(width: 10),
            Text(
              '61 Hopper street..',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
            ),
            SizedBox(width: 6),
            Icon(Icons.keyboard_arrow_down, size: 32),
            Spacer(flex: 1),
            SvgPicture.asset('assets/image/logo/Vector (4).svg'),
          ],
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider.builder(
            itemCount: banners.length,
            options: CarouselOptions(
              height: 222.0,
              aspectRatio: 1,
              autoPlay: true,
              animateToClosest: true,
              autoPlayCurve: Curves.fastOutSlowIn,
              viewportFraction: 0.8,
              enlargeCenterPage: false,
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              autoPlayInterval: Duration(seconds: 3),
            ),
            itemBuilder: (context, index, realIndex) {
              return Container(
                height: 222,

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: SvgPicture.asset(banners[index]),
                ),
              );
            },
          ),

          SizedBox(height: 8),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(catgory.length, (index) {
                return SizedBox(
                  width: 80,

                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 242, 223, 223),
                          ),
                          child: Image.asset(
                            catgory[index].image,
                            fit: BoxFit.contain,
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ),
                      Text(
                        catgory[index].name,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                Text(
                  'Fruits',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(flex: 1),
                Text(
                  'see more',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: GridView.builder(
              shrinkWrap: true, 
              physics: NeverScrollableScrollPhysics(),

              itemCount: 20,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: .8
            
            
              ),
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 70,
                          width:110 ,
                          decoration: BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset('assets/image/banners/image 5.png',
                          fit: BoxFit.contain,),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text('fruits fresh',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),),
                        SizedBox(
                          height: 4,
                        ),
                        Text('\$ 12,34934',style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),)
                        
                        
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,size: 24,),
        label: 'Home',
        
        ),
         BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,size: 24,),
        label: 'search'),

         BottomNavigationBarItem(icon: Icon(Icons.shopping_bag,color: Colors.black,size: 24,),
        label: 'cart'),
         BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,size: 24,),
        label: 'profile')
        
      ]),
    );
  }
}
