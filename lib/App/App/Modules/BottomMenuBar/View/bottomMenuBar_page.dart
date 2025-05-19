// ignore: file_names

import 'package:flutter/material.dart';


import '../../../../../Core/Enums/base_view.dart';

import '../../../Themes/ColorsThemes.dart';
import '../Controller/bottom_menuBar_controller.dart';

class BottomMenuBarPage extends StatelessWidget {
  const BottomMenuBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<BottomMenuBarController>(
      onModelReady: (models) {},
      builder: (context, controller, Widget? child) {
        return Scaffold(
          backgroundColor: AppColors.primaryColors,
          appBar: AppBar(
            backgroundColor: Colors.black26,            
            automaticallyImplyLeading: false,

            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            )
                      
            ),
            leading: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                )),
            title: Text(
              "Ramendra",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_active,
                    color: Colors.white,
                  ))
            ],
          ),
          


        );
      },
    );
  }
}
