import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _CurrencyConverterMaterialPageState createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}

class CurrencyConverterMaterialPagee extends StatelessWidget {
  const CurrencyConverterMaterialPagee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    final TextEditingController textEditingController = TextEditingController();
    // ignore: unused_local_variable
    double result = 0;
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0.0,
        title: const Text(
          "Currency Converter",
          style: TextStyle(color: Colors.black),
        ),
        actions: const [Text('Hello')],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              result.toString(),
              style: const TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.blue),
                decoration: const InputDecoration(
                  hintText: 'Please enter the amount in USD',
                  hintStyle: TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.blueGrey,
                  filled: true,
                  fillColor: Colors.white70,
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2.0,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignInside),
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                        style: BorderStyle.solid,
                        strokeAlign: BorderSide.strokeAlignInside),
                    borderRadius: BorderRadius.all(Radius.circular(60)),
                  ),
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: false,
                ),
                keyboardAppearance: Brightness.dark,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextButton(
                onPressed: () {
                  result = double.parse(textEditingController.text) * 81;
                  build(context);
                },
                style: const ButtonStyle(
                  elevation: MaterialStatePropertyAll(300),
                  backgroundColor: MaterialStatePropertyAll(Colors.black),
                  foregroundColor: MaterialStatePropertyAll(Colors.white),
                  minimumSize:
                      MaterialStatePropertyAll(Size(double.infinity, 50)),
                  shape: MaterialStatePropertyAll(ContinuousRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  )),
                ),
                child: const Text(
                  'Convert',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void btn() {
  if (kDebugMode) {
    debugPrint('button clicked');
  }
}
