import 'package:flutter/material.dart';
class AAbout extends StatefulWidget {
  const AAbout({super.key});

  @override
  State<AAbout> createState() => _AAboutState();
}

class _AAboutState extends State<AAbout> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Description",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22.0),),
          SizedBox(height: 10.0,),
          Expanded(child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.")),

        ],
      ),
    );
  }
}
