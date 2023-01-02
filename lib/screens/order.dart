import 'package:flutter/material.dart';
import 'package:uidesign/screens/catalogue.dart';
import 'package:uidesign/styles/title_text.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Order'),
      ),
      body: ListView(padding: const EdgeInsets.all(10), children: [
        const Text('May 31, 05:42 PM'),
        const Divider(),
        Text(
          '1 ITEM',
          style: titleStlyle.copyWith(letterSpacing: 0, color: Colors.grey),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          isThreeLine: true,
          leading: Image.asset('assets/images/part-blurry-image.jpg'),
          title: const Text('Explore | Men | Navy Blue'),
          subtitle: const Text("1 piece\nSize:XL"),
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Item Total \nDelivery',
              style: titleStlyle.copyWith(
                  letterSpacing: 0, fontWeight: FontWeight.normal),
            ),
            Text(
              '₹799 \nFREE',
              style: titleStlyle.copyWith(
                  letterSpacing: 0, fontWeight: FontWeight.normal),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'Grand Total',
          style: titleStlyle.copyWith(letterSpacing: 0),
        ),
        const Divider(),
        Text(
          'CUSTOMER DETAILS',
          style: titleStlyle.copyWith(letterSpacing: 0, color: Colors.grey),
        ),
        ListTile(
          title: Text('Deepa',
              style: titleStlyle.copyWith(letterSpacing: 0, fontSize: 20)),
          subtitle: Text(
            '+91-7829000484',
            style: titleStlyle.copyWith(
                letterSpacing: 0, fontWeight: FontWeight.normal),
          ),
          trailing: const Icon(
            Icons.call,
            color: Colors.green,
          ),
        ),
        ListTile(
          title: Text('Address',
              style: titleStlyle.copyWith(letterSpacing: 0, fontSize: 20)),
          subtitle: Text(
            'D 1101 Chartered Baverly Hills ,Subramanyapura P.O',
            style: titleStlyle.copyWith(
                letterSpacing: 0, fontWeight: FontWeight.normal),
          ),
        ),
        ListTile(
          title: Text('City',
              style: titleStlyle.copyWith(letterSpacing: 0, fontSize: 20)),
          subtitle: Text(
            'Bangalore',
            style: titleStlyle.copyWith(
                letterSpacing: 0, fontWeight: FontWeight.normal),
          ),
        ),
        ListTile(
          title: Text('Payments',
              style: titleStlyle.copyWith(letterSpacing: 0, fontSize: 20)),
          subtitle: Text(
            'Online',
            style: titleStlyle.copyWith(
                letterSpacing: 0, fontWeight: FontWeight.normal),
          ),
          trailing: Container(
              padding: const EdgeInsets.all(5),
              color: Colors.green[200],
              child: const Text('  PAID  ')),
        ),
        const Divider(),
        Text(
          'ADDITIONAL INFORMATION',
          style: titleStlyle.copyWith(color: Colors.grey, letterSpacing: 0),
        ),
        const ListTile(
          title: Text('State'),
          subtitle: Text('Karnataka'),
        ),
        const ListTile(
          title: Text('Email'),
          subtitle: Text('greeniceaqua@gmail.com'),
        ),
        OutlinedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (ctx) => const Catalogue(),
                ));
          },
          style: OutlinedButton.styleFrom(
              minimumSize: const Size.fromHeight(55),
              side: const BorderSide(width: 1, color: Colors.blue)),
          child: const Text('Share recipt'),
        )
      ]),
    );
  }
}
