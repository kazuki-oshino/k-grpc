import 'package:flutter/material.dart';
import 'package:flutter_grpc_app/api/api.dart';
import 'package:grpc/grpc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter gRPC DEMO'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final _channel = ClientChannel(
    'localhost',
    port: 50051,
    options: ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry: CodecRegistry(codecs: const [
          GzipCodec(),
          IdentityCodec(),
        ])),
  );

  Future<void> bake() async {
    final _stub = PancakeBakerServiceClient(_channel);
    final request = BakeRequest(menu: Pancake_Menu.BANANA_AND_WHIP);
    final response = await _stub.bake(request);
    print(response.pancake);
  }

  Future<void> report() async {
    final _stub = PancakeBakerServiceClient(_channel);
    final request = ReportRequest();
    final response = await _stub.report(request);
    print(response.report);
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(onPressed: bake, child: const Text('bake!')),
            ElevatedButton(onPressed: report, child: const Text('report!')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
