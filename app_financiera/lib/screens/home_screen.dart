import 'package:app_financiera/screens/paged_screen.dart';
import 'package:app_financiera/screens/pages_image_screen.dart';
import 'package:app_financiera/screens/label_screen.dart';
import 'package:app_financiera/screens/months_screen.dart';
import 'package:app_financiera/shared/data/local_gastos.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final esquemaColores = Theme.of(context).colorScheme;
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {  },
          child: Icon(Icons.add),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Theme.of(context).colorScheme.primary,
          shape: CircularNotchedRectangle(),
          child: Container(
            height: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                    icon: FaIcon(FontAwesomeIcons.chartBar, color: esquemaColores.onPrimary,),
                    onPressed: (){},
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.chartPie, color: esquemaColores.onPrimary,),
                  onPressed: (){},
                ),
                IconButton(
                  icon: FaIcon(FontAwesomeIcons.wallet, color: esquemaColores.onPrimary,),
                  onPressed: (){},
                ),
                IconButton(
                  icon: Icon(Icons.settings, color: esquemaColores.onPrimary,),
                  onPressed: (){},
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            MonthScreen(),
            LabelScreen(gastosAnuales: gastosAnuales),
            PagesImageScreen(),
            PagedScreen(gastosAnuales: gastosAnuales),
          ],
        ),
      ),
    );
  }
}
