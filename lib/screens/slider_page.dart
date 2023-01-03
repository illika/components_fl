import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({Key? key}) : super(key: key);

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _sliderValue = 100;
  bool _isActive = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Slider"),
          ),
          body: Column(
            children: [
              Slider(
                min: 50,
                max: 400,
                value: _sliderValue,
                label: "ancho $_sliderValue",
                divisions: 10,
                activeColor: AppTheme.primary,
                onChanged: _isActive
                    ? (value) {
                        _sliderValue = value;
                        setState(() {});
                      }
                    : null,
              ),
              Checkbox(
                value: _isActive,
                onChanged: (value) {
                  _isActive = value ?? true;
                  setState(() {});
                },
              ),
              CheckboxListTile(
                value: _isActive,
                onChanged: (value) {
                  _isActive = value ?? true;
                  setState(() {});
                },
                title: const Text("Habilitar Slider"),
                activeColor: AppTheme.primary,
              ),
              Switch(
                value: _isActive,
                onChanged: (value) {
                  _isActive = value;
                  setState(() {});
                },
              ),
              SwitchListTile.adaptive(
                value: _isActive,
                onChanged: (value) {
                  _isActive = value;
                  setState(() {});
                },
                title: const Text("Habilitar Slider"),
                activeColor: AppTheme.primary,
              ),
              const AboutListTile(),
              Expanded(
                child: SingleChildScrollView(
                  child: FadeInImage(
                    placeholder: const AssetImage("assets/jar-loading.gif"),
                    image: const NetworkImage(
                        "https://pics.filmaffinity.com/Spider_Man-336880577-large.jpg"),
                    fit: BoxFit.cover,
                    width: _sliderValue,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
