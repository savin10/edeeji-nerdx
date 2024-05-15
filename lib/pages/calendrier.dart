import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Calendrier des jours de marchés',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.voice_chat,
              )
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        DatePickerDialog(firstDate: firstDate, lastDate: lastDate),
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/1.jpeg'),
          ),
          title: Text('Dantokpa'),
          subtitle: Text('Marché de Dantokpa'),
          trailing: Icon(Icons.voice_chat),
        ),
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/1.jpeg'),
          ),
          title: Text('Dantokpa'),
          subtitle: Text('Marché de Dantokpa'),
          trailing: Icon(Icons.voice_chat),
        ),
        const ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/images/1.jpeg'),
          ),
          title: Text('Dantokpa'),
          subtitle: Text('Marché de Dantokpa'),
          trailing: Icon(Icons.voice_chat),
        ),
      ],
    );
  }
}
