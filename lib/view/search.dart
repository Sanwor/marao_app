
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
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_rounded,
              color: Colors.black,
            )),

        //search box
        title: SizedBox(
          height: 45,
          child: TextField(
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
            autofocus: true,
            decoration:
                InputDecoration(border: InputBorder.none, hintText: "Search"),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: [
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
                                fontFamily: 'SFProRounded',
                                fontSize: 28,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Opacity(
                            opacity: .57,
                            child: Text(
                              "Try searching the item with\na different keyword.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: 'SFProRounded',
                                  fontSize: 17,
                                  fontWeight: FontWeight.w400),
                            ),
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
                                  height: 250,
                                  width: 10,
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
                                            fontSize: 13,
                                            fontWeight: FontWeight.w400,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 0,
                                                left: 0,
                                                bottom: 10,
                                                right: 5),
                                            child: Column(
                                              children: [
                                                Text('\$',
                                                    style: TextStyle(
                                                        color:
                                                            Color(0xffB52E2B),
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        fontFamily:
                                                            'Quicksand'))
                                              ],
                                            ),
                                          ),
                                          Column(
                                            children: [
                                              Text(
                                                searchedResultList[index]
                                                        ["price"]
                                                    .toString(),
                                                style: TextStyle(
                                                    color: Color(0xffB52E2B),
                                                    fontSize: 20,
                                                    fontFamily: 'Quicksand',
                                                    fontWeight:
                                                        FontWeight.w700),
                                              ),
                                            ],
                                          ),
                                        ],
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
