import 'package:flutter/material.dart';
import 'package:mi_primer_app/providers/my_app_state.dart';
import 'package:mi_primer_app/widgets/big_card.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();
    var pair=appState.current;
    return Scaffold(
      body: Column(
        children: [
          Text('A ramdom AWESOME idea:'),
          BigCard(pair:pair),
    
          ElevatedButton(
            onPressed: () {
              appState.getNext();
            },
            child: Text('Next'),
          ),
        ],
      ),
    );
  }
}
