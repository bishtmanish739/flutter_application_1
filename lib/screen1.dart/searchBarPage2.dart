import 'package:flutter/material.dart';

class SearchBarPage2 extends StatefulWidget {
  const SearchBarPage2({super.key});

  @override
  State<SearchBarPage2> createState() => _SearchBarPage2State();
}

class _SearchBarPage2State extends State<SearchBarPage2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Color.fromARGB(255, 87, 138, 28)),
      child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Search Result',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 50,
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 24.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search',
                           
                          ),
                        ),
                      ),
                       SizedBox(width: 10),
                      Icon(
                        Icons.sort,
                        color: Colors.black,
                        size: 24.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                       SizedBox(width: 10),
                      Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 24.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                       SizedBox(width: 10),
                      Icon(
                        Icons.more_vert,
                        color: Colors.black,
                        size: 24.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                       SizedBox(width: 10),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
