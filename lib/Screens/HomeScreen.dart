import 'package:flutter/material.dart';
import 'package:skygoal/Screens/Widget/Bottom.dart';
import 'package:skygoal/constants/Appcolors.dart';
import 'package:skygoal/constants/AssetsStrings.dart';

import 'CollegesScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedValue = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.27,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
              color: AppColors.primary,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 45.0,
                left: 30.0,
                right: 25.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Find Your Own way",
                            style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "Search in 600 Colleges Around",
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 25.0,
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Row(
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
                                icon: Icon(Icons.search),
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    // Clear search term
                                  });
                                },
                                icon: Icon(Icons.cancel),
                              ),
                              hintText: 'Search by colleges, schools...',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white, // Set mic background color to white
                        ),
                        child: IconButton(
                          onPressed: () {
                            // Perform mic action
                          },
                          icon: Icon(
                            Icons.mic,
                            color: AppColors.primary, // Set mic icon color to match the theme
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // Open bottom sheet
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Sort By',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context); // Close bottom sheet
                              },
                              icon: Icon(Icons.cancel, size: 25),
                            ),
                          ],
                        ),
                        Divider(),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Icon(Icons.school),
                            SizedBox(width: 10),
                            Text('Bachelor of Technology'),
                            Spacer(),
                            Radio(
                              value: 'btech',
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value.toString();
                                  // Navigate to colleges screen
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => CollegesScreen(selectedValue: 'YourSelectedValueHere')),
                                  );
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.architecture),
                            SizedBox(width: 10),
                            Text('Bachelor of Architructure'),
                            Spacer(),
                            Radio(
                              value: 'bsc',
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value.toString();
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.local_pharmacy),
                            SizedBox(width: 10),
                            Text('Pharmacy'),
                            Spacer(),
                            Radio(
                              value: 'pharma',
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value.toString();
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.school),
                            SizedBox(width: 10),
                            Text('Law'),
                            Spacer(),
                            Radio(
                              value: 'law',
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value.toString();
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.manage_history),
                            SizedBox(width: 10),
                            Text('ManageMent'),
                            Spacer(),
                            Radio(
                              value: 'manager',
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value.toString();
                                });
                              },
                            ),
                          ],
                        ),
                        // Add more rows here as needed
                      ],
                    ),
                  );
                },
              );
            },
            child: Padding(
              padding: EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
              child: Container(
                height: 150.0,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: AssetImage(AppImages.college),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Top Colleges",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(padding:EdgeInsets.only(left: 20.0,top: 15.0,right: 20.0),
            child: Container(
              height: 150.0,
              // height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image:DecorationImage(
                  image: AssetImage(AppImages.c),
                  fit: BoxFit.fill,
                ),

              ),
              child: Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Exams",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.white),),
              )),
            ),
          ),Padding(padding: EdgeInsets.only(left: 20.0,top: 15.0,right: 20.0),
            child: Container(
              height: 150.0,
              // height: MediaQuery.of(context).size.height*0.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                image:DecorationImage(
                  image: AssetImage(AppImages.c),
                  fit: BoxFit.fill,
                ),

              ),
              child: Expanded(child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Top Schools",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Colors.white),),
              )),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BBottom(),
    );
  }


}
