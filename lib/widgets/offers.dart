import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/offers.dart';
import '../Providers/partners.dart';

class OffersWidget extends StatefulWidget {
  final List titleList;
  OffersWidget(this.titleList);

  @override
  State<OffersWidget> createState() => _PartenersWidgetState();
}

class _PartenersWidgetState extends State<OffersWidget> {
  @override
  Widget build(BuildContext context) {
    dynamic fetchedData = Provider.of<Offers>(context, listen: false).items;

    final widgetList = widget.titleList
        .map(
          (item) => Text('$item'),
        )
        .toList();

    return FutureBuilder(
      future: Provider.of<Partners>(context, listen: false).fetchAllData(),
      builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('An Error Occurred!: ${snapshot.error}'),
          );
        } else {
          return Column(
            children: [
              Consumer<Offers>(
                builder: (ctx, partnersProvider, _) => Container(
                  height: 35,
                  width: 400,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: widgetList.length,
                    itemBuilder: (ctx, index) {
                      return Row(
                        children: [
                          TextButton(
                            child: widgetList[index],
                            onPressed: () {
                              if (widget.titleList[index] == 'All') {
                              fetchedData =  partnersProvider.items;
                              partnersProvider.update();
                              } else {
                              fetchedData = partnersProvider
                                    .fetchByKey(widget.titleList[index]);
                               partnersProvider.update();
                              }
                            },
                          ),
                          SizedBox(width: 5.0),
                        ],
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              Consumer<Offers>(
                builder: (ctx, partnersProvider, _) {
                  return Container(
                    height: 250,
                    child: fetchedData.isEmpty
                        ? Center(child: Text('No data available'))
                        : ListView.builder(
                            itemCount: fetchedData.length,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Text(
                                    fetchedData[index].offerName ?? 'N/A'),
                                subtitle:
                                    Text(fetchedData[index].discount ?? 'N/A'),
                                leading: fetchedData[index].imageUrl != null
                                    ? Image.network(fetchedData[index].imageUrl)
                                    : Icon(Icons.image_not_supported),
                              );
                            },
                          ),
                  );
                },
              ),
            ],
          );
        }
      },
    );
  }
}
