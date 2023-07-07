import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/data/controllers/api_controller.dart';
import 'package:flutter_application_2/ui/Screens/logout.dart';
import 'package:flutter_application_2/ui/Screens/profile7.dart';
import 'package:flutter_application_2/ui/widegets/custom_scaffold.dart';
import 'package:flutter_application_2/ui/widegets/custom_dropdownbutton.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widegets/Pages.dart';
import 'controllers/ShowUserController.dart';
import 'controllers/logoutController.dart';
import 'home.dart';
import 'model/classes.dart';
import 'model/componanets.dart';

class Profile8 extends StatelessWidget {
  const Profile8({key});

  static String id = "Profile8";

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      child: FutureBuilder<List<ShowUser>>(
          future: ShowUserController.getUser(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
            final users = snapshot.data!;
            return Column(children: users
            .map((ShowUser) => ShowUser1(
      userName: ShowUser.userName,
    
      password:ShowUser. password,
      phone: ShowUser.phone,
      email:ShowUser.email,
              )).toList(),
           );
          }),
    );
    
  }
}
