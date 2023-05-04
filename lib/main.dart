import 'package:flutter/material.dart';

void main() {
  runApp(const HomeApp());
}

class HomeApp extends StatelessWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        themeMode: ThemeMode.dark,
        darkTheme: ThemeData.dark(),
        home: const InputScreen(),
      );
}

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  late TextEditingController lengthController;
  late TextEditingController widthController;
  late TextEditingController topLayerWeightController;
  late TextEditingController topLayerRateController;
  late TextEditingController topLayerQuantityController;
  late TextEditingController topLayerOutputController;
  late TextEditingController fluitLayerWeightController;
  late TextEditingController fluitLayerRateController;
  late TextEditingController fluitLayerQuantityController;
  late TextEditingController fluitLayerOutputController;
  late TextEditingController middleLayerWeightController;
  late TextEditingController middleLayerRateController;
  late TextEditingController middleLayerQuantityController;
  late TextEditingController middleLayerOutputController;
  late TextEditingController bottomLayerWeightController;
  late TextEditingController bottomLayerRateController;
  late TextEditingController bottomLayerQuantityController;
  late TextEditingController bottomLayerOutputController;
  late TextEditingController labourChargeController;
  late TextEditingController profitPercentageController;
  late TextEditingController finalOutputController;
  late TextEditingController percentageFinalOutputController;
  late TextEditingController sheetRateOutputController;

  @override
  void initState() {
    lengthController = TextEditingController();
    widthController = TextEditingController();
    topLayerWeightController = TextEditingController();
    topLayerRateController = TextEditingController();
    topLayerQuantityController = TextEditingController();
    topLayerOutputController = TextEditingController();
    fluitLayerWeightController = TextEditingController();
    fluitLayerRateController = TextEditingController();
    fluitLayerQuantityController = TextEditingController();
    fluitLayerOutputController = TextEditingController();
    middleLayerWeightController = TextEditingController();
    middleLayerRateController = TextEditingController();
    middleLayerQuantityController = TextEditingController();
    middleLayerOutputController = TextEditingController();
    bottomLayerWeightController = TextEditingController();
    bottomLayerRateController = TextEditingController();
    bottomLayerQuantityController = TextEditingController();
    bottomLayerOutputController = TextEditingController();
    labourChargeController = TextEditingController();
    profitPercentageController = TextEditingController();
    finalOutputController = TextEditingController();
    sheetRateOutputController = TextEditingController();
    percentageFinalOutputController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    lengthController.dispose();
    widthController.dispose();
    topLayerWeightController.dispose();
    topLayerRateController.dispose();
    topLayerQuantityController.dispose();
    topLayerOutputController.dispose();
    fluitLayerWeightController.dispose();
    fluitLayerRateController.dispose();
    fluitLayerQuantityController.dispose();
    fluitLayerOutputController.dispose();
    middleLayerWeightController.dispose();
    middleLayerRateController.dispose();
    middleLayerQuantityController.dispose();
    middleLayerOutputController.dispose();
    bottomLayerWeightController.dispose();
    bottomLayerRateController.dispose();
    bottomLayerQuantityController.dispose();
    bottomLayerOutputController.dispose();
    labourChargeController.dispose();
    profitPercentageController.dispose();
    finalOutputController.dispose();
    sheetRateOutputController.dispose();
    percentageFinalOutputController.dispose();

    super.dispose();
  }

  topLayerOnPressed() {
    var op = (((double.parse(lengthController.text) *
                    double.parse(widthController.text) *
                    double.parse(topLayerWeightController.text)) /
                1521) *
            double.parse(topLayerRateController.text)) *
        int.parse(topLayerQuantityController.text);
    setState(() {
      topLayerOutputController.text = op.toString();
    });
  }

  fluitLayerOnPressed() {
    var op = (((double.parse(lengthController.text) *
                    double.parse(widthController.text) *
                    double.parse(fluitLayerWeightController.text)) /
                1521) *
            double.parse(fluitLayerRateController.text)) *
        int.parse(fluitLayerQuantityController.text);
    setState(() {
      fluitLayerOutputController.text = op.toString();
    });
  }

  middleLayerOnPressed() {
    var op = (((double.parse(lengthController.text) *
                    double.parse(widthController.text) *
                    double.parse(middleLayerWeightController.text)) /
                1521) *
            double.parse(middleLayerRateController.text)) *
        int.parse(middleLayerQuantityController.text);
    setState(() {
      middleLayerOutputController.text = op.toString();
    });
  }

  bottomLayerOnPressed() {
    var op = (((double.parse(lengthController.text) *
                    double.parse(widthController.text) *
                    double.parse(bottomLayerWeightController.text)) /
                1521) *
            double.parse(bottomLayerRateController.text)) *
        int.parse(bottomLayerQuantityController.text);
    setState(() {
      bottomLayerOutputController.text = op.toString();
    });
  }

  calculateSheetRateOnPressed() {
    var op = (double.parse(topLayerOutputController.text.isEmpty
            ? 0.toString()
            : topLayerOutputController.text.toString()) +
        double.parse(fluitLayerOutputController.text.isEmpty
            ? 0.toString()
            : fluitLayerOutputController.text.toString()) +
        double.parse(middleLayerOutputController.text.isEmpty
            ? 0.toString()
            : middleLayerOutputController.text.toString()) +
        double.parse(bottomLayerOutputController.text.isEmpty
            ? 0.toString()
            : bottomLayerOutputController.text.toString()));
    setState(() {
      sheetRateOutputController.text = op.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cardborater'),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Length && Width',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: lengthController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Length',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: widthController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Width',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    //Top Layer
                    Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Top Layer',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: topLayerWeightController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Weight',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: topLayerRateController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Rate',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: topLayerQuantityController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Quantity',
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    topLayerOutputController.text,
                                    style: const TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: FloatingActionButton.extended(
                                      onPressed: topLayerOnPressed,
                                      label: const Text('Calculate'),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    //Fluit Layer
                    Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Fluit Layer',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: fluitLayerWeightController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Weight',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: fluitLayerRateController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Rate',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: fluitLayerQuantityController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Quantity',
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    fluitLayerOutputController.text,
                                    style: const TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: FloatingActionButton.extended(
                                      onPressed: fluitLayerOnPressed,
                                      label: const Text('Calculate'),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    //middle Layer
                    Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Middle Layer',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: middleLayerWeightController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Weight',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: middleLayerRateController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Rate',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: middleLayerQuantityController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Quantity',
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    middleLayerOutputController.text,
                                    style: const TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: FloatingActionButton.extended(
                                      onPressed: middleLayerOnPressed,
                                      label: const Text('Calculate'),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    //bottom Layer
                    Card(
                      elevation: 5,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Bottom Layer',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: bottomLayerWeightController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Weight',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: bottomLayerRateController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Rate',
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextField(
                                controller: bottomLayerQuantityController,
                                keyboardType:
                                    const TextInputType.numberWithOptions(
                                        signed: true, decimal: true),
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  hintText: 'Quantity',
                                ),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    bottomLayerOutputController.text,
                                    style: const TextStyle(
                                      fontSize: 25,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: FloatingActionButton.extended(
                                      onPressed: bottomLayerOnPressed,
                                      label: const Text('Calculate'),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Card(
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Sheet Rate',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              sheetRateOutputController.text,
                              style: const TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: FloatingActionButton.extended(
                                onPressed: calculateSheetRateOnPressed,
                                label: const Text('Calculate'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Card(
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Labour Charge ',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: labourChargeController,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      signed: true, decimal: true),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Labour Charge',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Card(
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Conversion',
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              controller: profitPercentageController,
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      signed: true, decimal: true),
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Conversion',
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              percentageFinalOutputController.text,
                              style: const TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Align(
                              alignment: Alignment.bottomRight,
                              child: FloatingActionButton.extended(
                                onPressed: calculateFinalOutput,
                                label: const Text('Calculate'),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Card(
                      elevation: 5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Final Rate',
                              style: TextStyle(fontSize: 20, color: Colors.red),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              finalOutputController.text,
                              style: const TextStyle(
                                fontSize: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void calculateFinalOutput() {
    var op = (double.parse(sheetRateOutputController.text) +
            double.parse(labourChargeController.text)) *
        (double.parse(profitPercentageController.text) / 100);
    var op2 = (double.parse(sheetRateOutputController.text) +
            double.parse(labourChargeController.text)) +
        op;
    setState(() {
      percentageFinalOutputController.text = op.toString();
      finalOutputController.text = op2.toStringAsFixed(3);
    });
  }
}
