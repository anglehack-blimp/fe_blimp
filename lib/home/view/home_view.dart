import 'package:blimp/Favorite/view/favorite_view.dart';
import 'package:blimp/home/bloc/home_bloc.dart';
import 'package:blimp/home/view/product_catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatefulWidget {

  static Route<void> route() {
    return MaterialPageRoute<void>(builder: (_) => HomeView());
  }

  @override
  State<StatefulWidget> createState() {
    return _HomeView();
  }

}

class _HomeView extends State<HomeView> {


  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.history),label: 'History',),
    ];

    return BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state){
        },
        builder: (context, state) {
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: const Text("Blimp"),
              actions: <Widget>[
                IconButton(
                    onPressed: () {

                    },
                    icon: const Icon(Icons.notifications)),
                IconButton(
                  icon: const Icon(Icons.person),
                  onPressed: () {

                  },
                )
              ],
            ),
            body: <Widget>[
              Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.only(bottom: 0.0),
                            padding: const EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(0.1),
                                borderRadius: BorderRadius.circular(4.0)),
                            child:
                            Card (
                              child:
                              Image.asset(
                                "lib/images/blimp.png",
                                width: 400.0,
                              ),
                            )
                        ),
                      ),
                      ProductCatalog(),
                    ],
                  )),
              FavoriteView(),
            ].elementAt(state.pageIndex),
            bottomNavigationBar: BottomNavigationBar(
              items: bottomNavItems,
              currentIndex: state.pageIndex,
              selectedItemColor: Colors.deepOrange[800],
              onTap: (index) {

                BlocProvider.of<HomeBloc>(context)
                    .add(BottomMenuSelected(pageIndex: index));
              },
            ),
          );
        }
    );
  }
  
}