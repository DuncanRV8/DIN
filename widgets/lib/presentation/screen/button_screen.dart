import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets/presentation/screen/screen_gradient.dart';

class ButtonScreen extends StatelessWidget {
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final esquemaColores = Theme.of(context).colorScheme;
    return Scaffold(
        appBar: AppBar(title: const Text("Pantalla de tarjetas")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            //De la tercera forma seria
            //context.pop();

            Navigator.of(context).pop();
          },
          child: Icon(Icons.arrow_back_ios),
        ),
        body: ScreenGradient(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Wrap(
                alignment: WrapAlignment.center,
                runSpacing: 20,
                spacing: 40,
                children: [
              ElevatedButton(
                onPressed: () {  },
                child: const Text("ElevationButton"),
              ),
              ElevatedButton(
                onPressed: null,
                child: const Text("ElevationButton.off"),
              ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: const Text("ElevatedButton"),
                    icon: const Icon(Icons.add_a_photo_outlined),
                  ),
                  FilledButton(
                    onPressed: () {  },
                    child: const Text("FilledButton"),
                  ),
                  FilledButton.icon(
                    onPressed: () {  },
                    label: const Text("FilledButton"),
                    icon: const Icon(Icons.favorite_outlined),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text("OutlinedButton"),
                  ),
                  OutlinedButton.icon(
                    onPressed: () {  },
                    label: const Text("OutlinedButton"),
                    icon: const Icon(Icons.stacked_line_chart_outlined),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("TextButton"),
                  ),
                  TextButton.icon(
                    onPressed: () {  },
                    label: const Text("TextButton"),
                    icon: const Icon(Icons.accessibility),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.access_alarm_rounded)),
                  IconButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          iconColor: MaterialStatePropertyAll(Colors.white),
                          backgroundColor: MaterialStatePropertyAll(esquemaColores.primary),
                      ),
                      icon: Icon(Icons.access_alarm_rounded)
                  ),
                  _CustomButton(),
          
          
            ]),
          ),
        ));
    }
}

class _CustomButton extends StatelessWidget {
  const _CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final esquemaColores = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Material(
        color: esquemaColores.primary,
          child: InkWell(
            splashColor: Colors.green,
            //splashFactory: InteractiveInkFeatureFactory(),
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Text("CustomButton", style: TextStyle(color:esquemaColores.inversePrimary),
              ),
            ),
          )
      ),
    );
  }
}

