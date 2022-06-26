import 'package:flutter/material.dart';
import 'package:flutter_mqtt_app/mqtt/state/mqtt_app_state.dart';
import 'package:flutter_mqtt_app/widgets/mqttView.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider<MQTTAppState>(
          create: (_) => MQTTAppState(),
          child: MQTTView(),
        ));
  }
}

//broker.emqx.io
//GsmClientTest/led
