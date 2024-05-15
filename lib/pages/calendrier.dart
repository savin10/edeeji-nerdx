import 'package:flutter/material.dart';

class Calendrier extends StatefulWidget {
  const Calendrier({super.key});

  @override
  State<Calendrier> createState() => _CalendrierState();
}

class _CalendrierState extends State<Calendrier> {
  final DateTime firstDate = DateTime(2021, 1, 1);
  final DateTime lastDate = DateTime(2022, 12, 31);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Calendrier des jours de marchés',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            Icon(Icons.calendar_today),
          ],
        ),
        const SizedBox(height: 20),
        DatePickerDialog(
          initialDate: DateTime.now(),
          firstDate: firstDate,
          lastDate: lastDate,
        ),
        for (var i = 0; i < 3; i++)
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/market.jpg'),
            ),
            title: Text('Marché de Dantokpa'),
            subtitle: Text('Explorez les produits locaux'),
            trailing: Icon(Icons.shopping_cart),
          ),
      ],
    );
  }
}
