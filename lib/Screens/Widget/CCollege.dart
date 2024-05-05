import 'package:flutter/material.dart';

import '../../constants/Appcolors.dart';
import 'AAbout.dart';
import 'BHostel.dart';
import 'CQa.dart';
import 'DEvents.dart';
class CCollege extends StatefulWidget {
  const CCollege({Key? key}) : super(key: key);

  @override
  State<CCollege> createState() => _CCollegeState();
}

class _CCollegeState extends State<CCollege> {
  late PageController pageController;
  int _selectedIndex = 0;
  List<String> _sections = ["About college", "Hostel", "Q&A", "Events"];

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _sections.map((label) => _buildChip(label)).toList(),
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              physics: NeverScrollableScrollPhysics(),
              onPageChanged: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              children: [
                AAbout(),
                BHostel(),
                CQa(),
                DEvents(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label) {
    return GestureDetector(
      onTap: () {
        int index = _sections.indexOf(label);
        pageController.animateToPage(
          index,
          duration: Duration(milliseconds: 300),
          curve: Curves.ease,
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Text(
          label.toUpperCase(),
          style: TextStyle(
            color: _selectedIndex == _sections.indexOf(label) ? Colors.yellow : Colors.orange,
          ),
        ),
      ),
    );
  }
}
