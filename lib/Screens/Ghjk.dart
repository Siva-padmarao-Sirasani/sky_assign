import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skygoal/Screens/Widget/BHostel.dart';
import 'package:skygoal/constants/Appcolors.dart';
import 'package:skygoal/constants/AssetsStrings.dart';

import 'Widget/AAbout.dart';
import 'Widget/CCollege.dart';

class Ghjk extends StatefulWidget {
  const Ghjk({Key? key}) : super(key: key);

  @override
  _GhjkState createState() => _GhjkState();
}

class _GhjkState extends State<Ghjk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Center(child: Text("-----------",style: TextStyle(color: Colors.white),),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.white,),
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
      ),
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
                      height: 60.0,
                      width: 60.0,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),color: Colors.green),
                      child: Column(
                        children: [
                          Text("4.3"),
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
          Container(

            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(color: AppColors.primary),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text("About College",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold,color: Colors.blue ),),
                    Divider(height: 10,thickness: 5,color: Colors.orange,),
                  ],
                ),
                SizedBox(width: 10.0,),
                InkWell(
                  onTap: (){
                    Get.to(()=>BHostel());
                  },
                    child: Text("Hostel",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),)),
                SizedBox(width: 10.0,),

                Text("Q&A",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                SizedBox(width: 10.0,),

                Text("Events",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                SizedBox(width: 10.0,),

              ],
            ),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text("Description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22.0),),
          ),
          SizedBox(height: 10.0,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Expanded(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.")),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text("Location",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22.0),),
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
              )),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text("Student Review",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22.0),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 200.0,
              decoration: BoxDecoration(
                  // border: Border.all(color: Colors.black54),
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    image: AssetImage(AppImages.e),
                    fit: BoxFit.fill,
                  )),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          height: 50.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.0),color: AppColors.primary),
          child: Center(child: Text("Apply Now",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22.0),)),
        ),
      ),
    );
  }
}
