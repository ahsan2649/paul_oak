import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<int> options = [10, 15, 20];
  int selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            spacing: 25,
            crossAxisAlignment: WrapCrossAlignment.center,
            direction: Axis.vertical,
            children: [
              const Text('How many words would you like to practice?'),
              Wrap(
                spacing: 25.0,
                children: List<Widget>.generate(
                  3,
                  (index) => ChoiceChip(
                    showCheckmark: false,
                    label: Text(options[index].toString()),
                    selected: selectedOption == options[index],
                    onSelected: (value) {
                      setState(() {
                        selectedOption = options[index];
                      });
                    },
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  
                },
                child: const Icon(
                  Icons.arrow_forward,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
