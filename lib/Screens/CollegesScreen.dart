import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skygoal/Screens/Widget/Bottom.dart';
import 'package:skygoal/constants/Appcolors.dart';
import 'package:skygoal/constants/AssetsStrings.dart';

import 'Ghjk.dart';

class CollegesScreen extends StatefulWidget {
  final String selectedValue; // Define a field to store the selected value

  const CollegesScreen({Key? key, required this.selectedValue}) : super(key: key);

  @override
  State<CollegesScreen> createState() => _CollegesScreenState();
}

class _CollegesScreenState extends State<CollegesScreen> {
  // Dummy list of colleges for demonstration

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16.0), bottomRight: Radius.circular(16.0)),
              color: AppColors.primary,
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search),
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                // Clear search term
                              });
                            },
                            icon: const Icon(Icons.cancel),
                          ),
                          hintText: 'Search by colleges, schools...',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white, // Set mic background color to white
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Perform mic action
                      },
                      icon: const Icon(
                        Icons.mic,
                        color: AppColors.primary, // Set mic icon color to match the theme
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "MVSH Engineering college",
                      // textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),

          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: (){
                        Get.to(()=>const Ghjk());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          color: Colors.grey.withOpacity(.20),


                          // border: Border.all(color: Colors.black54),

                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 100, // Adjust height according to your requirement
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12.0),
                                      topRight: Radius.circular(12.0),
                                    ),
                                    image: DecorationImage(
                                      image: AssetImage(AppImages.c),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 8.0,
                                  left: 8.0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white, // Background color for the circle
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.share, color: Colors.black), // Icon color
                                      onPressed: () {
                                        // Handle share icon press
                                      },
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 8.0,
                                  right: 8.0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.white, // Background color for the circle
                                    ),
                                    child: IconButton(
                                      icon: const Icon(Icons.bookmark, color: Colors.black), // Icon color
                                      onPressed: () {
                                        // Handle saved icon press
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text("GHJK Engineering College",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                                  const Spacer(),
                                  Container(
                                    height: 35.0,
                                    width: 60.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      color: Colors.green,
                                    ),
                                    child: const Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text("4.3",style: TextStyle(color: Colors.white),),
                                        Icon(Icons.star,color: Colors.white,),
                                      ],
                                    ),

                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 12.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Expanded(child: Text("Lorem ipsum dolor sit amet",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14.0),)),
                                  const Spacer(),
                                  Container(
                                    height: 35.0,
                                    width: 120.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      color: Colors.blue,
                                    ),
                                    child: const Center(child: Text("Apply Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16.0),))

                                  ),
                                ],
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 12.0),
                              child: Divider(),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Icon(Icons.sign_language,color: Colors.blue,),
                                  SizedBox(width: 20.0,),
                                  Expanded(child: Text("More than 1000+ students have been placed")),
                                  Icon(CupertinoIcons.eye),
                                  SizedBox(width: 2.0,),
                                  Text("468+"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        color: Colors.grey.withOpacity(.20),

                        // border: Border.all(color: Colors.black54),

                      ),
                      child: Column(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 100, // Adjust height according to your requirement
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    topRight: Radius.circular(12.0),
                                  ),
                                  image: DecorationImage(
                                    image: AssetImage(AppImages.n),
                                    fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 8.0,
                                left: 8.0,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white, // Background color for the circle
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.share, color: Colors.black), // Icon color
                                    onPressed: () {
                                      // Handle share icon press
                                    },
                                  ),
                                ),
                              ),
                              Positioned(
                                top: 8.0,
                                right: 8.0,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.white, // Background color for the circle
                                  ),
                                  child: IconButton(
                                    icon: const Icon(Icons.bookmark, color: Colors.black), // Icon color
                                    onPressed: () {
                                      // Handle saved icon press
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Text("Bachelor of Technology",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18.0),),
                                const Spacer(),
                                Container(
                                  height: 35.0,
                                  width: 60.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12.0),
                                    color: Colors.green,
                                  ),
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text("4.3",style: TextStyle(color: Colors.white),),
                                      Icon(Icons.star,color: Colors.white,),
                                    ],
                                  ),

                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Expanded(child: Text("Lorem ipsum dolor sit amet",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 14.0),)),
                                const Spacer(),
                                Container(
                                    height: 35.0,
                                    width: 120.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.0),
                                      color: Colors.blue,
                                    ),
                                    child: const Center(child: Text("Apply Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16.0),))

                                ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Divider(),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              children: [
                                Icon(Icons.sign_language,color: Colors.blue,),
                                SizedBox(width: 20.0,),
                                Expanded(child: Text("More than 1000+ students have been placed")),
                                Icon(CupertinoIcons.eye),
                                SizedBox(width: 2.0,),
                                Text("468+"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 200, // Adjust height according to your requirement
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.black54),
                        image: const DecorationImage(
                          image: AssetImage(AppImages.bt),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      height: 200, // Adjust height according to your requirement
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(color: Colors.black54),
                        image: const DecorationImage(
                          image: AssetImage(AppImages.college),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
              ],
            ),

      bottomNavigationBar: const BBottom(),
    );
  }
}
