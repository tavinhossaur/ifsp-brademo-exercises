import 'package:flutter/material.dart';
import 'package:flutter_app/model/bottom_fab_item.dart';
import 'package:flutter_app/widgets/fab_bottom_navigation.dart';
import 'package:flutter_app/widgets/fab_items_list.dart';
import 'package:flutter_app/widgets/fab_overlay.dart';

class Home extends StatelessWidget {
  const Home({super.key, required this.title});

  final String title;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      floatingActionButton: _buildFab(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomFabAppBar(
        onTabSelected: (value) => 0,
        items: [
          BottomFabItem(iconData: Icons.menu, text: 'Menu'),
          BottomFabItem(iconData: Icons.layers, text: 'List'),
          BottomFabItem(iconData: Icons.dashboard, text: 'Dashboard'),
          BottomFabItem(iconData: Icons.person, text: 'User'),
        ],
      ),
    );
  }

  Widget _buildFab(BuildContext context) {
    final icons = [ Icons.sms, Icons.mail, Icons.phone ];
    return AnchoredOverlay(
      showOverlay: true,
      overlayBuilder: (context, offset) {
        return CenterAbout(
          position: Offset(offset.dx, offset.dy - icons.length * 35.0),
          child: FloatingActionButtonWithItemList(
            icons: icons,
            onIconTapped: (index) {},
          ),
        );
      },
      child: FloatingActionButton(
        onPressed: () { },
        elevation: 2.0,
        child: Icon(Icons.add),
      ),
    );
  }
}