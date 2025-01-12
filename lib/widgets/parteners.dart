import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Providers/partners.dart';

class PartenersWidget extends StatefulWidget {
  final List titleList;
  PartenersWidget(this.titleList);

  @override
  State<PartenersWidget> createState() => _PartenersWidgetState();
}

class _PartenersWidgetState extends State<PartenersWidget> {
  @override
  Widget build(BuildContext context) {
    dynamic fetchedData = Provider.of<Partners>(context, listen: false).items;

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
              Consumer<Partners>(
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
              Consumer<Partners>(
                builder: (ctx, partnersProvider, _) {
                  return Container(
                    height: 250,
                    child: fetchedData.isEmpty
                        ? Center(child: Text('No data available'))
                        : ListView.builder(
                            itemCount: fetchedData.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white
                                ),
                                child: ListTile(
                                  title: Text(
                                      fetchedData[index].companyName ?? 'N/A'),
                                  subtitle:
                                      Text(fetchedData[index].subtitle ?? 'N/A'),
                                  leading: fetchedData[index].imageUrl != null
                                      ? Image.network(fetchedData[index].imageUrl)
                                      : Icon(Icons.image_not_supported),
                                  trailing: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 20.0,)),
                                ),
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
