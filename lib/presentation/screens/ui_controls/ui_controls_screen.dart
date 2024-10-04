import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const String name = 'ui_controls_screen';
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI Controls'),
      ),
      body: const _UiControlsView(),
    );
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  bool wantsBreakfast = false;
  bool wantsLaucnh = false;
  bool wantsDinner = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [
        SwitchListTile(
            title: const Text("Developer Mode"),
            subtitle: const Text('Controles adicionales'),
            value: isDeveloper,
            onChanged: (value) {
              setState(() {
                isDeveloper = !isDeveloper;
              });
            }),
        ExpansionTile(
          title: const Text('Vehiculos de transporte'),
          subtitle: Text('$selectedTransportation'),
          children: [
            RadioListTile(
                title: const Text('By Car'),
                subtitle: const Text('Travel by car'),
                value: Transportation.car,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.car;
                  });
                }),
            RadioListTile(
                title: const Text('By Boat'),
                subtitle: const Text('Travel by Boat'),
                value: Transportation.boat,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.boat;
                  });
                }),
            RadioListTile(
                title: const Text('By Plane'),
                subtitle: const Text('Travel by Plane'),
                value: Transportation.plane,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.plane;
                  });
                }),
            RadioListTile(
                title: const Text('By Submarie'),
                subtitle: const Text('Travel by Submarie'),
                value: Transportation.submarine,
                groupValue: selectedTransportation,
                onChanged: (value) {
                  setState(() {
                    selectedTransportation = Transportation.submarine;
                  });
                }),
          ],
        ),
        CheckboxListTile(
          title: const Text('Desayuno?'),
          value: wantsBreakfast,
          onChanged: (value) {
            setState(() {
              wantsBreakfast = !wantsBreakfast;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Almuerzo?'),
          value: wantsLaucnh,
          onChanged: (value) {
            setState(() {
              wantsLaucnh = !wantsLaucnh;
            });
          },
        ),
        CheckboxListTile(
          title: const Text('Cena?'),
          value: wantsDinner,
          onChanged: (value) {
            setState(() {
              wantsDinner = !wantsDinner;
            });
          },
        ),
      ],
    );
  }
}
