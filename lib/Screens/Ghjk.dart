import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skygoal/constants/Appcolors.dart';
import 'package:skygoal/constants/AssetsStrings.dart';

import 'Widget/AAbout.dart';
import 'Widget/BHostel.dart';
import 'Widget/CCollege.dart';

class Ghjk extends StatefulWidget {
  const Ghjk({Key? key}) : super(key: key);

  @override
  _GhjkState createState() => _GhjkState();
}

class _GhjkState extends State<Ghjk> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          title: Center(
            child: Text(
              "GHJK Eng College",
              style: TextStyle(color: Colors.white),
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(Icons.save),
                onPressed: () {
                  // Handle save button press
                },
              ),
            ),
          ],
          // bottom: TabBar(
          //   tabs: [
          //     Tab(text: "About College"),
          //     Tab(text: "Hostel"),
          //     Tab(text: "Q&A"),
          //     Tab(text: "Events"),
          //   ],
          // ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: AppColors.primary,
            ),
            child: Center(
              child: Text(
                "Apply Now",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0),
              ),
            ),
          ),
        ),

        body: TabBarView(
          children: [
            AboutCollegeTab(),
            BHostel(),
            QATab(),
            EventsTab(),
          ],
        ),
      ),
    );
  }
}

class AboutCollegeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "GHJK Engineering College",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    height: 80.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.green),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "4.3",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                        )
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
        SizedBox(height: 20.0,),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(
            "Description",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
          ),
        ),
        SizedBox(height: 10.0,),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
        ),
        SizedBox(height: 20.0,),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Text(
            "Location",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
          ),
        ),
        SizedBox(height: 10.0,),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Container(
            height: 200.0,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black54),
              borderRadius: BorderRadius.circular(12.0),
              image: DecorationImage(
                image: AssetImage(AppImages.d),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Student Review",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
              ),
              SizedBox(height: 20.0,),
              Row(
                children: [
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(AppImages.p2),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(AppImages.p3),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0,),Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(AppImages.p4),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.0,),Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: AssetImage(AppImages.p1),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(width: 30.0,),Container(
                    height: 50.0,
                    width: 80.0,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(8.0),
                      // image: DecorationImage(
                      //   image: AssetImage(AppImages.college),
                      //   fit: BoxFit.fill,
                      // ),
                    ),
                    child: Text("+12",style: TextStyle(color: Colors.white),),

                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Arun Sai",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),

              ),
              SizedBox(height: 15.0,),
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14.0),
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Icon(Icons.star,color: Color(0xffFFD700),),
                  Icon(Icons.star,color: Color(0xffFFD700),),
                  Icon(Icons.star,color: Color(0xffFFD700),),
                  Icon(Icons.star,color: Color(0xffFFD700),),
                  Icon(Icons.star_half_outlined,color:Color(0xffFFD700) ,)
                ],
              ),

            ],
          ),
        ),
        // SizedBox(height: 10,),
        // Padding(
        //   padding: const EdgeInsets.all(12.0),
        //   child: Container(
        //     height: 200.0,
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(12.0),
        //       image: DecorationImage(
        //         image: AssetImage(AppImages.e),
        //         fit: BoxFit.fill,
        //       ),
        //     ),
        //   ),
        // ),
      ],
    );

  }
}

class QATab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Add Q&A tab content here
      ],
    );
  }
}

class EventsTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // Add Events tab content here
      ],
    );
  }
}
