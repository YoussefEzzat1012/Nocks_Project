import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/places.dart';
import '../widgets/place_item.dart';

class CategoryPlaceScreen extends StatefulWidget {
  static const routeName = '/CategoryPlaceScreen';
  const CategoryPlaceScreen({super.key});

  @override
  State<CategoryPlaceScreen> createState() => _CategoryPlaceScreenState();
}

class _CategoryPlaceScreenState extends State<CategoryPlaceScreen> {
  var filterdData = [];
  TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  void filterSearchData(String inputUser, List<dynamic> dataplaces) {
    setState(() {
    filterdData = dataplaces
          .where((item) => item.title
              .toString()
              .toLowerCase()
              .startsWith(inputUser.toLowerCase()))
          .toList();
    });
  }

  Widget buildProductItem (List<dynamic> dataplaces) {
   
    if (dataplaces.isEmpty) {
      return Center(child: Text('No result found'));
    }
    return  ListView.builder(
                          itemBuilder: (ctx, i) => PlaceItem(
                            imageUrl: dataplaces[i].imageUrl,
                            title: dataplaces[i].title,
                            location: dataplaces[i].location,
                            startingPrice: dataplaces[i].startingPrice,
                            PaymentPlan: dataplaces[i].PaymentPlan,
                            delivery: dataplaces[i].delivery,
                            reward: dataplaces[i].reward,
                          ),
                          itemCount: dataplaces.length,
                        );
  }

    @override
  void dispose() {
    _searchController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final city_name = ModalRoute.of(context)!.settings.arguments as String;
    final dataplaces =
        Provider.of<Places>(context, listen: false).fetch_by_the_key(city_name);

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Projects')),
        automaticallyImplyLeading: false,
      ),
      body: FutureBuilder(
          future: Provider.of<Places>(context).fetchPlaces(),
          builder: (ctx, dataSnapshot) {
            if (dataSnapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              if (dataSnapshot.error != null) {
                return Center(child: Text('An error occured!'));
              } else {
                return Consumer<Places>(builder: (ctx, placeData, child) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back_ios_new,
                              size: 25,
                            ),
                          ),
                          Container(
                            width: 250,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,
                                      offset: Offset(0, 12)),
                                ]),
                            child: TextField(
                              controller: _searchController,
                              onChanged: (val) {
                                filterSearchData(val, dataplaces);
                              },
                              focusNode: _focusNode,
                              decoration: InputDecoration(
                                hintText: "Search",
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.grey,
                                ),
                                border: InputBorder.none,
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 15),
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.filter_list,
                                size: 30,
                              ))
                        ],
                      ),
                      Expanded(
                        child: buildProductItem(filterdData.isEmpty && _searchController.text.isEmpty? dataplaces : filterdData),
                      ),
                    ],
                  );
                });
              }
            }
          }),
    );
  }
}
