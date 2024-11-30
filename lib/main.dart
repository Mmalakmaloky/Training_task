import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:training_project/features/Checkout_Cart.dart';
import 'package:training_project/features/Order%20Placed%20Successfully.dart';
import 'package:training_project/features/poductPage.dart';
import 'core/provider.dart';
// void main() {
//   runApp(MyApp(),
//   );
// }
void main() {
  runApp(ChangeNotifierProvider(create: (BuildContext context) {
    return ProductProvider();
  },
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_ , child) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
      home: ProductPage(),
    );
  }
    );
  }
}
