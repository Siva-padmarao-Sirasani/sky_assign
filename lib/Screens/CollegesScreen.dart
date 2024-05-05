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
            height: 40,
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
                  child: const Center(
                    child: Text(
                      "MVSH Engineering college",
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),

          ),
          Expanded(
            child: SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: (){
                        Get.to(()=>Ghjk());
                      },
                      child: Container(
                        height: 200, // Adjust height according to your requirement
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.black54),
                          image: const DecorationImage(
                            image: AssetImage(AppImages.gh),
                            fit: BoxFit.fill,
                          ),
                        ),
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

      bottomNavigationBar: BBottom(),
    );
  }
}
