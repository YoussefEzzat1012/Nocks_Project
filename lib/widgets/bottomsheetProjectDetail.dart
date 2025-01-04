import 'package:flutter/material.dart';
import '../widgets/property_type_sheet_bottom.dart';

class Bottomsheetprojectdetail extends StatelessWidget {
  const Bottomsheetprojectdetail({super.key});

  void startPropertyTypeSheetBottom(BuildContext ctx) {
    showModalBottomSheet(context: ctx, builder: (_) {
      return Container(
        height: 500,
        child: PropertyTypeSheetBottom(),
        );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true, // Resizes body when keyboard is visible
      body: SingleChildScrollView(
        // Makes the body scrollable when keyboard appears
        child: Column(
          children: [
            Icon(
              Icons.drag_handle_rounded,
              size: 40,
            ),
            Text(
              'Client Request',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, bottom: 15.0),
              color: Colors.grey[300],
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          height: 80,
                          width: 120,
                          margin: EdgeInsets.all(20),
                          child: Image.network(
                            'https://www.concept.com.eg/wp-content/uploads/2022/02/702f7028-f584-4355-a17e-12b06335d3c5-2.jpg',
                            fit: BoxFit.cover,
                          )),
                      SizedBox(
                        width: 5,
                      ),
                      Column(
                        children: [Text('City Name'), Text('El shrouq')],
                      ),
                      Expanded(
                        child: Container(
                            margin: EdgeInsets.all(20),
                            child: Image.network(
                              'https://cairo.realestate/uploads/images/2023-01/logo6.jpg',
                              fit: BoxFit.cover,
                            )),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text('Starting Prices of the Project : 5,500,00'),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 80, right: 80, bottom: 50),
                    child: Center(
                      child: Text(
                        'Are you sure you are interested in our project?',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25.0, right: 25.0),
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white38,
                  border: Border.all(width: 1, color: Colors.grey)),
              child: ListTile(
                leading: Text('Property type'),
                trailing: Icon(Icons.expand_more),
                onTap: () {
                  startPropertyTypeSheetBottom(context);
                },
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 5.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Notes',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 10, bottom: 5.0),
              width: 280,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  border: Border.all(width: 1, color: Colors.grey)),
              child: TextButton(
                  onPressed: () {}, child: Text('Connect With imkan Misr'),
                  ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20.0),
              width: 280,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  border: Border.all(width: 1.0, color: Colors.grey)),
              child:
                  TextButton(onPressed: () {
                    Navigator.of(context).pop();
                  }, child: Text('Cancel Request')),
            )
          ],
        ),
      ),
    );
  }
}
