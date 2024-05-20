import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';
import 'package:get/get.dart';
import 'package:skygoal/Screens/Widget/BHostel.dart';
import 'package:skygoal/constants/Appcolors.dart';
import 'package:skygoal/constants/AssetsStrings.dart';


class BHostel extends StatefulWidget {
  const BHostel({Key? key}) : super(key: key);

  @override
  _BHostelState createState() => _BHostelState();
}

class _BHostelState extends State<BHostel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: AppColors.primary,
      //   // title: Center(child: Text("-----------",style: TextStyle(color: Colors.white),),),
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back,color: Colors.white,),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //   actions: [
      //     Container(
      //       margin: EdgeInsets.all(10),
      //       decoration: BoxDecoration(
      //         shape: BoxShape.circle,
      //         color: Colors.white,
      //       ),
      //       child: IconButton(
      //         icon: Icon(Icons.save),
      //         onPressed: () {
      //           // Handle save button press
      //         },
      //       ),
      //     ),
      //   ],
      // ),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Container(
            height: 120.0,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.c),
                  fit: BoxFit.fill,
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("GHJK Engineering College",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                Row(
                  children: [
                    Expanded(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit.",style: TextStyle(fontWeight: FontWeight.normal),),),
                    Spacer(),
                    Container(
                      height: 80.0,
                      width: 60.0,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),color: Colors.green),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("4.3",style: TextStyle(fontSize:18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                          SizedBox(height: 10.0,),
                          Icon(Icons.star,color: Colors.white,)
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          TabBar(
            tabs: [
              Tab(text: "About College"),
              Tab(text: "Hostel"),
              Tab(text: "Q&A"),
              Tab(text: "Events"),
            ],
          ),
          // Container(
          //
          //   width: MediaQuery.of(context).size.width,
          //   decoration: BoxDecoration(
          //     border: Border.all(color: AppColors.primary),
          //   ),
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: [
          //       Column(
          //         children: [
          //           Text("About College",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold, ),),
          //           Divider(height: 10,thickness: 5,color: Colors.orange,),
          //         ],
          //       ),
          //       SizedBox(width: 10.0,),                Column(
          //         children: [
          //           Text("Hostel",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.blue),),
          //         ],
          //       ),
          //       SizedBox(width: 10.0,),
          //
          //       Text("Q&A",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
          //       SizedBox(width: 10.0,),
          //
          //       Text("Events",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
          //       SizedBox(width: 10.0,),
          //
          //     ],
          //   ),
          // ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(color: Colors.black54),
                    color: Colors.blue
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.bed,color: Colors.white,),
                      SizedBox(width: 15.0,),
                      Text("4",style: TextStyle(color: Colors.white),)
                    ],
                  ),

                ),Container(
                  height: 40.0,
                  width: 60.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),border: Border.all(color: Colors.black54)),
                  child: Row(
                    children: [
                      Icon(Icons.bed,),
                      SizedBox(width: 15.0,),
                      Text("3")
                    ],
                  ),

                ),Container(
                  height: 40.0,
                  width: 60.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),border: Border.all(color: Colors.black54)),
                  child: Row(
                    children: [
                      Icon(Icons.bed,),
                      SizedBox(width: 15.0,),
                      Text("2")
                    ],
                  ),

                ),Container(
                  height: 40.0,
                  width: 60.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),border: Border.all(color: Colors.black54)),
                  child: Row(
                    children: [
                      Icon(Icons.bed,),
                      SizedBox(width: 15.0,),
                      Text("1")
                    ],
                  ),

                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              margin: const EdgeInsets.all(10.0),
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0)
              ),
              child: Swiper.children(
                autoplay: true,
                loop: true,
                pagination: const SwiperPagination(
                  margin: EdgeInsets.only(
                    right: 25.0,
                  ),
                  builder: DotSwiperPaginationBuilder(
                      color: Colors.grey),
                ),
                // control: const SwiperControl(
                //   iconNext: Icons.arrow_forward_ios,
                //   iconPrevious: Icons.arrow_back_ios,
                // ),
                children: <Widget>[
                  Container(
                      // margin: const EdgeInsets.only(
                      //     right: 50.0, bottom: 20.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(5.0),
                          child: Image(image: AssetImage(AppImages.college),
                          fit: BoxFit.fill,),),),
                  Container(
                      // margin: const EdgeInsets.only(
                      //     right: 50.0, bottom: 20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image(image: AssetImage(AppImages.n),
                          fit: BoxFit.fill,),),),
                  Container(
                      // margin: const EdgeInsets.only(
                      //     right: 50.0, bottom: 20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image(image: AssetImage(AppImages.c),
                          fit: BoxFit.fill,),),),
                  Container(
                      // margin: const EdgeInsets.only(
                      //     right: 50.0, bottom: 20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image(image: AssetImage(AppImages.d),
                          fit: BoxFit.fill,),),),
                  Container(
                      // margin: const EdgeInsets.only(
                      //     right: 50.0, bottom: 20.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5.0),
                        child: Image(image: AssetImage(AppImages.h),
                          fit: BoxFit.fill,),),),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
             crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("GHJK Engineering College",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0),),
                Spacer(),
                Container(
                  height: 40.0,
                  width: 70.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.green,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("4.3",style: TextStyle(fontSize:18.0,fontWeight: FontWeight.bold,color: Colors.white),),
                      Icon(Icons.star,color: Colors.white,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(Icons.location_on),
                SizedBox(width: 10,),
                Text("Lorem ipsum dolor sit adipiscing elit."),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Expanded(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.")),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("Facilities",style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,),),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(Icons.apartment,color: Colors.orange,),
                SizedBox(width: 10,),
                Text("College in 400m"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Icon(Icons.bathroom_outlined,color: Colors.red,),
                SizedBox(width: 10,),
                Text("Bathroom: 2"),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
