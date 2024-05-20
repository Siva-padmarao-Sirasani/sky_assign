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
              padding: const EdgeInsets.only(
                top: 45.0,
                left: 30.0,
                right: 25.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Row(
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
                  const SizedBox(height: 40),
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
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {
              // -
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Sort By',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context); // Close bottom sheet
                              },
                              icon: const Icon(Icons.cancel, size: 25),
                            ),
                          ],
                        ),
                        const Divider(),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.school),
                            const SizedBox(width: 10),
                            const Text('Bachelor of Technology'),
                            const Spacer(),
                            Radio(
                              value: 'btech',
                              groupValue: selectedValue,
                              onChanged: (value) {
                                setState(() {
                                  selectedValue = value.toString();
                                  // Navigate to colleges screen
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const CollegesScreen(selectedValue: 'YourSelectedValueHere')),
                                  );
                                });
                              },
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.architecture),
                            const SizedBox(width: 10),
                            const Text('Bachelor of Architecture'),
                            const Spacer(),
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
                            const Icon(Icons.local_pharmacy),
                            const SizedBox(width: 10),
                            const Text('Pharmacy'),
                            const Spacer(),
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
                            const Icon(Icons.school),
                            const SizedBox(width: 10),
                            const Text('Law'),
                            const Spacer(),
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
                            const Icon(Icons.manage_history),
                            const SizedBox(width: 10),
                            const Text('Management'),
                            const Spacer(),
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
              padding: const EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
              child: Stack(
                children: [
                  Container(
                    height: 150.0,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.0),
                      image: const DecorationImage(
                        image: AssetImage(AppImages.college),
                        fit: BoxFit.fill,
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Top Colleges",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0.0,
                    right: 0.0,
                    child: Container(
                      padding: const EdgeInsets.all(4.0),
                      color: Colors.white,
                      child: const Text(
                        '+126 Colleges',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
            child: Stack(
              children: [
                Container(
                  height: 150.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: const DecorationImage(
                      image: AssetImage(AppImages.n),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Top Schools",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    color: Colors.white,
                    child: const Text(
                      '+106 Schools',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 15.0, right: 20.0),
            child: Stack(
              children: [
                Container(
                  height: 150.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    image: const DecorationImage(
                      image: AssetImage(AppImages.h),
                      fit: BoxFit.fill,
                    ),
                  ),
                  child: const Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Exams",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            "Find an end to end information about the exams that are happening in India",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  right: 0.0,
                  child: Container(
                    padding: const EdgeInsets.all(4.0),
                    color: Colors.white,
                    child: const Text(
                      '+16 Exams',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BBottom(),
    );
  }
}
