import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = 'buttons_screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screens"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(child: const Text("Elevated"), onPressed: () {}),
            const ElevatedButton(
                onPressed: null, child: Text("Elevated disabled")),
            ElevatedButton.icon(
                onPressed: () {},
                label: const Text("Elevated icon"),
                icon: const Icon(Icons.add)),
            FilledButton(onPressed: () {}, child: const Text("Filled")),
            FilledButton.icon(
                onPressed: () {},
                label: const Text("Filled icon"),
                icon: const Icon(Icons.add)),
            OutlinedButton(onPressed: () {}, child: const Text("Outlined")),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("Outlined icon")),
            TextButton(onPressed: () {}, child: const Text("Text")),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text("Text icon")),
            const CustomButton(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
                iconColor: const WidgetStatePropertyAll(Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Test",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}
