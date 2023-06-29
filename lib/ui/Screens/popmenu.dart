/*import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/widegets/currencies.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_2/ui/widegets/currencies.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widegets/opration_appbar.dart';


bool isLoggedIn = false;

Future<List<User>> getUsers() async {
  // تنفيذ الطلب للحصول على قائمة المستخدمين
  // ...

  return users.map((user) {
    return ListTile(
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        if (isLoggedIn) {
          // تنفيذ الإجراء الخاص بعرض معلومات المستخدم
          // ...
        } else {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: Text('عذرًا'),
                content: Text('يجب تسجيل الدخول لتتمكن من الوصول إلى هذه الشاشة.'),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('حسنًا'),
                  ),
                ],
              );
            },
          );
        }
      },
    );
  }).toList();
}

Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('قائمة المستخدمين'),
    ),
    body: FutureBuilder<List<User>>(
      future: getUsers(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView(
            children: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('${snapshot.error}'),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    ),
  );
}*/