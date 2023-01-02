import 'package:flutter/material.dart';
import 'package:uidesign/screens/my_homepage.dart';
import 'package:uidesign/screens/premium_screen.dart';
import 'package:uidesign/styles/title_text.dart';

class Payments extends StatefulWidget {
  const Payments({super.key});
  @override
  State<Payments> createState() => _PaymentsState();
}

List _chipData = ['On hold', 'Pay Outs', 'Refunds'];
int? _isSelected;

class _PaymentsState extends State<Payments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarWidget(title: 'Payments'),
      body: ListView(padding: const EdgeInsets.all((9)), children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
              border:
                  Border.all(width: 1.5, color: Colors.grey.withOpacity(.2))),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Transaction Limit',
              style: titleStlyle,
            ),
            Text(
                'A free limit upto which you will recieve the online payments directly into your bank',
                style: subtitleStyle),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: LinearProgressIndicator(value: .2, minHeight: 5),
            ),
            Text('₹36,648 Left out of ₹50000', style: subtitleStyle),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {}, child: const Text('Increment Limit'))
          ]),
        ),
        const SizedBox(
          height: 7,
        ),
        const PaymentRowWidget(
          buttonText: 'Default Method',
          leadingText: "Online Payment",
        ),
        const PaymentRowWidget(
            leadingText: 'Payment Profile', buttonText: 'Bank Account'),
        Divider(
          thickness: 2,
          color: Colors.grey.withOpacity(.2),
        ),
        const PaymentRowWidget(
            leadingText: 'Payments Owerview', buttonText: 'Life time'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            PaymentBox(
                colour: Colors.orange, text: 'AMOUNT ON HOLD', amount: '0'),
            SizedBox(
              width: 7,
            ),
            PaymentBox(
                colour: Colors.green, text: 'AMOUNT RECIEVED', amount: '13,332')
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text('Transactions', style: titleStlyle),
        ),
        Wrap(
          spacing: 10,
          children: List.generate(3, (index) {
            return ChoiceChip(
              padding: const EdgeInsets.all(10),
              onSelected: (value) {
                setState(() {
                  _isSelected = value ? index : null;
                });
              },
              label: Text(
                _chipData[index],
                style: const TextStyle(color: Colors.white),
              ),
              selected: _isSelected == index,
              selectedColor: Colors.blue,
              disabledColor: Colors.grey[900],
            );
          }),
        ),
        const SizedBox(
          height: 10,
        ),
        ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: ((context, index) => ListTile(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PremiumScreen(),
                      )),
                  leading: Image.asset(
                    'assets/images/part-blurry-image.jpg',
                    fit: BoxFit.cover,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("#${(index + 2 * 15 + 5 * 20).toString()}"),
                      const Text(
                        '₹700',
                        style: TextStyle(color: Colors.blue),
                      )
                    ],
                  ),
                  subtitle: Row(
                    children: [
                      Text('Apr $index, 0${index + 1}:${index + 1 * 30}'),
                      const Spacer(),
                      const Icon(
                        Icons.circle,
                        size: 15,
                        color: Colors.greenAccent,
                      ),
                      const Text('Successful')
                    ],
                  ),
                )),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: 10)
      ]),
    );
  }
}

class PaymentBox extends StatelessWidget {
  const PaymentBox({
    Key? key,
    required this.colour,
    required this.text,
    required this.amount,
  }) : super(key: key);
  final Color colour;
  final String text;
  final String amount;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            color: colour,
          ),
          padding: const EdgeInsets.all(12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              text,
              style: const TextStyle(color: Colors.white, fontSize: 15.5),
            ),
            const SizedBox(height: 10),
            Text('₹$amount',
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold))
          ])),
    );
  }
}

class PaymentRowWidget extends StatelessWidget {
  const PaymentRowWidget({
    Key? key,
    required this.leadingText,
    required this.buttonText,
  }) : super(key: key);
  final String leadingText;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leadingText,
            textAlign: TextAlign.end,
          ),
          MaterialButton(
              onPressed: () {},
              child: Row(children: [
                Text(
                  buttonText,
                  style: const TextStyle(color: Colors.black45),
                ),
                const Icon(Icons.chevron_right_outlined)
              ])),
        ],
      ),
    );
  }
}
