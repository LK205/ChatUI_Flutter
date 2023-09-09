import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category_Selector extends StatefulWidget{
  const Category_Selector({super.key});

  @override
  State<Category_Selector> createState() => _Category_SelectorState();
}

class _Category_SelectorState extends State<Category_Selector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages','Online', 'Groups', 'Request'];
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        color: Colors.orange,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            separatorBuilder: (context, index) => const SizedBox(width: 20),
            itemBuilder: (context, index){
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    categories[index],
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: (index == selectedIndex) ? Colors.white : Colors.white.withOpacity(0.7),
                        letterSpacing: 1.2
                    ),
                  ),
                ),
              );
            }
        ),
    );
  }
}

