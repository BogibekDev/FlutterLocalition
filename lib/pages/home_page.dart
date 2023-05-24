import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
           Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                 'str_text',
                ).tr(),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: MaterialButton(
                        color: Colors.green,
                        onPressed: () {
                          context.setLocale(const Locale('en', 'US'));
                        },
                        child: const Text("English"),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: MaterialButton(
                        color: Colors.yellowAccent,
                        onPressed: () {
                          context.setLocale(const Locale('fr', 'FR'));
                        },
                        child: const Text("French"),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: MaterialButton(
                        color: Colors.deepOrange,
                        onPressed: () {
                          context.setLocale(const Locale('ko', 'KR'));
                        },
                        child: const Text("Korean"),
                      ),
                    ),
                    const SizedBox(width: 5),
                    Expanded(
                      child: MaterialButton(
                        color: Colors.lightBlueAccent,
                        onPressed: () {
                          context.setLocale(const Locale('ja', 'JP'));
                        },
                        child: const Text("Yapon"),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
