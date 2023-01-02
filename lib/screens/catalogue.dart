import 'package:flutter/material.dart';

class Catalogue extends StatelessWidget {
  const Catalogue({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Catalogue'),
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.blue,
              child: const TabBar(indicatorColor: Colors.white, tabs: [
                Tab(child: Text('Products')),
                Tab(child: Text('Categories')),
              ]),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Card(
                margin: const EdgeInsets.all(3),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Image.asset(
                                  'assets/images/part-blurry-image.jpg')),
                          const SizedBox(
                            width: 5,
                          ),
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text(
                                  'Couch Potato | women...',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(fontSize: 17),
                                ),
                                Text(
                                  '1 piece',
                                  overflow: TextOverflow.ellipsis,
                                ),
                                Text('₹799',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                Text('In Stock',
                                    style: TextStyle(color: Colors.green)),
                              ],
                            ),
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              const Icon(Icons.format_list_bulleted_outlined),
                              const SizedBox(
                                height: 10,
                              ),
                              Switch(
                                value: true,
                                onChanged: (value) {},
                              )
                            ],
                          ))
                        ],
                      ),
                      const Divider(),
                      TextButton.icon(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.share_outlined,
                            color: Colors.black87,
                          ),
                          label: const Text(
                            'Share Product',
                            style: TextStyle(color: Colors.black54),
                          ))
                    ],
                  ),
                ),
              ),
              itemCount: 5,
            )
          ],
        ),
      ),
    );
  }
}
