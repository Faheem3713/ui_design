import 'package:flutter/material.dart';
import 'package:uidesign/screens/my_homepage.dart';
import 'package:uidesign/screens/payments.dart';
import 'package:uidesign/styles/title_text.dart';

class ManageStore extends StatelessWidget {
  const ManageStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: appBarWidget(title: 'Manage Store'),
      body: GridView.count(
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        padding: const EdgeInsets.all(8),
        childAspectRatio: (2 / 1.5),
        crossAxisCount: 2,
        children: const [
          CardWidget(
            icon: Icons.campaign_rounded,
            color: Colors.orange,
            cardText: 'Marketing Designs',
          ),
          CardWidget(
            icon: Icons.request_page_sharp,
            color: Colors.green,
            cardText: 'Online Payments',
          ),
          CardWidget(
            icon: Icons.discount_outlined,
            color: Colors.orangeAccent,
            cardText: 'Discount Coupons',
          ),
          CardWidget(
            icon: Icons.group,
            color: Colors.teal,
            cardText: 'My Customer',
          ),
          CardWidget(
            icon: Icons.qr_code_scanner_rounded,
            color: Colors.grey,
            cardText: 'Store QR Code',
          ),
          CardWidget(
            icon: Icons.home,
            color: Colors.indigo,
            cardText: 'Extra Charges',
          ),
          CardWidget(
            icon: Icons.home,
            color: Colors.pink,
            cardText: 'Order Form',
          )
        ],
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({
    Key? key,
    required this.icon,
    required this.cardText,
    required this.color,
  }) : super(key: key);
  final IconData icon;
  final String cardText;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Payments(),
          )),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 40,
              color: color,
            ),
            Text(
              cardText,
              style: titleStlyle,
            )
          ],
        ),
      ),
    );
  }
}
