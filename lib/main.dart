import 'package:flutter/material.dart';
import 'package:project_task/screens/hom_screen.dart';
import 'package:provider/provider.dart';

import 'utils/Icon.dart';

void main() => runApp(
      // ChangeNotifierProvider(
      //   create: (context) => IconFavorite(),
      //   child:
        MaterialApp(
          home: Scaffold(
            body: HomeScreen(),
          ),
        ),
      // ),
    );
