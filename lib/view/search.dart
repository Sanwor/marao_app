import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:foodie/app_config/constant.dart';
import 'package:foodie/view/view_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  var searchedResultList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Search',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  String query = value.toLowerCase();
                  if (value == "") {
                    setState(() {
                      searchedResultList.clear();
                    });
                    return;
                  }

                  // Use a Set to avoid duplicates
                  final results = [
                    ...itemList,
                    ...itemList2,
                    ...itemList3,
                    ...itemList4,
                    ...itemList5
                  ]
                      .where((item) {
                        return item["title"]!.toLowerCase().contains(query);
                      })
                      .toSet()
                      .toList(); // Convert Set back to List

                  setState(() {
                    searchedResultList = results;
                  });

                  debugPrint(searchedResultList.toString());
                },
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100)),
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Visibility(
                visible: searchedResultList.isEmpty ? false : true,
                child: SizedBox(
                    height: 50,
                    child: Text(
                      'Found ${searchedResultList.length} results',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.w700),
                    )),
              ),
              searchedResultList.isEmpty
                  ? Center(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 100,
                          ),
                          Image(image: AssetImage('assets/search.png')),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Item not found",
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Try searching the item with a different keyword.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.w400),
                          )
                        ],
                      ),
                    )
                  : SizedBox(
                      // height: 700,
                      // Set height since it's horizontal
                      child: MasonryGridView.builder(
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: searchedResultList.length,
                        gridDelegate:
                            SliverSimpleGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2),
                        itemBuilder: (context, index) {
                          // Check if it's the second column (even index in a 2-column layout)
                          final isSecondColumn = index % 2 == 1;

                          return Padding(
                            padding:
                                EdgeInsets.only(top: isSecondColumn ? 30 : 0),
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => ViewPage(
                                        data: searchedResultList[index]),
                                  ));
                                },
                                child: Container(
                                  color: Colors.white,
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        searchedResultList[index]["image"]
                                            .toString(),
                                        height: 100,
                                      ),
                                      Text(
                                        searchedResultList[index]["title"]
                                            .toString(),
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 20,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                      Center(
                                        child: Text(
                                          searchedResultList[index]
                                                  ["description"]
                                              .toString(),
                                          style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Text(
                                        searchedResultList[index]["price"]
                                            .toString(),
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        shrinkWrap: true,
                      ),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
