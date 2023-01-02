import 'package:flutter/material.dart';
import 'package:uidesign/screens/order.dart';
import 'package:uidesign/styles/title_text.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          AppBar(
            elevation: 0,
            title: const Text('Dhukaan Premium'),
          ),
          Stack(
            children: [
              Container(
                height: 100,
                color: Colors.blue,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9)),
                margin: const EdgeInsets.all(20),
                child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.ac_unit_sharp),
                          Column(
                            children: const [
                              Text(
                                "Dukaan",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "    PREMIUM",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Text(
                        "Get Dhukaan Premium for just\n ₹4999/year",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 19, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "All the advanced feature for scalling your\nbusiness",
                        textAlign: TextAlign.center,
                        style: subtitleStyle,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Features',
                  style: titleStlyle,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => ListTile(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrderPage(),
                        )),
                    leading: const CircleAvatar(
                        child: Icon(Icons.miscellaneous_services)),
                    title: const Text('Custom Domain Name'),
                    subtitle: const Text(
                        'Get your own custom domain and build your brand on internet'),
                  ),
                  itemCount: 4,
                )
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(11),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'What is Dukaan premium..?',
                  style: titleStlyle.copyWith(letterSpacing: 0),
                ),
                Image.asset('assets/images/part-blurry-image.jpg')
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Frequantly asked questions',
                  style: titleStlyle.copyWith(letterSpacing: 0),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ListTile(
                  title: Text('What type of business can use dukaan premium',
                      style: TextStyle(
                        fontSize: 15,
                      )),
                  subtitle: Text(
                      'Dukaan caters to a wide variety of sellers.be it a small grocery store or a big legacy brand - anyont its to sell their products/services online - is the perfect platform for you.'),
                  trailing: Icon(Icons.remove),
                ),
                const Divider(),
                const ListTile(
                  title: Text(
                      'will there be an automatic charge after the bill paid trail..?'),
                  trailing: Icon(Icons.add),
                ),
                const ListTile(
                  title: Text('What happens when my free trail ends..?'),
                  trailing: Icon(Icons.add),
                ),
                const ListTile(
                  title: Text('what payment methods do you offer..?'),
                  trailing: Icon(Icons.add),
                ),
                const ListTile(
                  title: Text('What are the terms for custom domain..?'),
                  trailing: Icon(Icons.add),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Need help? Get in touch'),
          ),
          Row(
            children: [
              outlineButton(Icons.message_outlined),
              outlineButton(Icons.phone)
            ],
          ),
          const Divider(),
          Row(
            children: [
              Expanded(
                  child: TextButton(
                      onPressed: () {}, child: const Text('Select domain'))),
              Expanded(
                  child: ElevatedButton(
                      onPressed: () {}, child: const Text('Get premium')))
            ],
          )
        ],
      ),
    );
  }

  Widget outlineButton(IconData icon) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
                minimumSize: const Size.fromHeight(100),
                foregroundColor: Colors.grey,
                side: const BorderSide(width: 1, color: Colors.grey)),
            onPressed: () {},
            child: Icon(icon)),
      ),
    );
  }
}

  // RichText(
  //                           text: const TextSpan(children: [
  //                         TextSpan(
  //                           text: "Dukaan",
  //                           style: TextStyle(
  //                               fontSize: 20,
  //                               fontWeight: FontWeight.bold,
  //                               color: Colors.black),
  //                         ),
  //                         TextSpan(
  //                           text: "\nPREMIUM",
  //                           style: TextStyle(
  //                               fontSize: 12,
  //                               fontWeight: FontWeight.bold,
  //                               color: Colors.blue),
  //                         )
  //                       ]))