// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ProductOptionsScreen(),
//     );
//   }
// }
//
// class ProductOptionsScreen extends StatefulWidget {
//   @override
//   _ProductOptionsScreenState createState() => _ProductOptionsScreenState();
// }
//
// class _ProductOptionsScreenState extends State<ProductOptionsScreen> {
//   String selectedSize = 'S'; // Default size
//   String selectedColor = 'Green'; // Default color
//   int quantity = 1;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: AppBar(
//         title: Text('Product Options'),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             // Size Dropdown
//             OptionTile(
//               label: "Size",
//               child: DropdownButton<String>(
//                 value: selectedSize,
//                 items: ['S', 'M', 'L', 'XL']
//                     .map((size) => DropdownMenuItem<String>(
//                   value: size,
//                   child: Text(size),
//                 ))
//                     .toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     selectedSize = value!;
//                   });
//                 },
//                 underline: SizedBox(),
//               ),
//             ),
//             SizedBox(height: 16),
//
//             // Color Dropdown
//             OptionTile(
//               label: "Color",
//               child: DropdownButton<String>(
//                 value: selectedColor,
//                 items: ['Green', 'Blue', 'Red', 'Yellow']
//                     .map((color) => DropdownMenuItem<String>(
//                   value: color,
//                   child: Row(
//                     children: [
//                       CircleAvatar(
//                         backgroundColor: getColor(color),
//                         radius: 8,
//                       ),
//                       SizedBox(width: 8),
//                       Text(color),
//                     ],
//                   ),
//                 ))
//                     .toList(),
//                 onChanged: (value) {
//                   setState(() {
//                     selectedColor = value!;
//                   });
//                 },
//                 underline: SizedBox(),
//               ),
//             ),
//             SizedBox(height: 16),
//
//             // Quantity Selector
//             OptionTile(
//               label: "Quantity",
//               child: Row(
//                 children: [
//                   IconButton(
//                     onPressed: () {
//                       setState(() {
//                         if (quantity > 1) quantity--;
//                       });
//                     },
//                     icon: Icon(Icons.remove, color: Colors.white),
//                     color: Colors.purple,
//                     padding: EdgeInsets.all(8),
//                     constraints: BoxConstraints(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: Text(
//                       quantity.toString(),
//                       style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                   ),
//                   IconButton(
//                     onPressed: () {
//                       setState(() {
//                         quantity++;
//                       });
//                     },
//                     icon: Icon(Icons.add, color: Colors.white),
//                     color: Colors.purple,
//                     padding: EdgeInsets.all(8),
//                     constraints: BoxConstraints(),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Color getColor(String colorName) {
//     switch (colorName) {
//       case 'Green':
//         return Colors.green;
//       case 'Blue':
//         return Colors.blue;
//       case 'Red':
//         return Colors.red;
//       case 'Yellow':
//         return Colors.yellow;
//       default:
//         return Colors.grey;
//     }
//   }
// }
//
// class OptionTile extends StatelessWidget {
//   final String label;
//   final Widget child;
//
//   OptionTile({required this.label, required this.child});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(
//             label,
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//           ),
//           child,
//         ],
//       ),
//     );
//   }
// }
//
// ............................
// import 'package:flutter/material.dart';
// import 'package:training_project/core/colors.dart';
//
// class ProductPage extends StatelessWidget {
//   const ProductPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         // toolbarHeight: 50,
//           leading: InkWell(
//               onTap: () {},
//               child: Icon(Icons.arrow_back_ios_new)),
//           actions: [
//             InkWell(
//                 onTap: () {},
//                 child: Icon(Icons.favorite_border_outlined))
//           ]
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(
//             left: 20,
//             top: 15
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 280,
//               width: double.infinity,
//               decoration: BoxDecoration(
//                   image: DecorationImage(image: AssetImage("assets/Frame 92.png"),fit: BoxFit.cover)
//               ),
//             ),
//             Text("Men's Harrington Jacket",style: TextStyle(
//                 fontSize: 15,
//                 fontWeight: FontWeight.bold
//             ),),
//             Text("\$148",style: TextStyle(
//                 color: CustomColors.purble,
//                 fontWeight: FontWeight.w500
//             ),),
//             SizedBox(
//               height: 25,
//             ),
//             Container(
//               height: 150,
//               child: ListView.builder(
//                 itemCount: 3,
//                 itemBuilder: (context, index) {
//                   return Row(
//                     children: [
//                       Text("Size"),
//                       //_______________________//
//                       Text("s"),
//
//                     ],
//                   );
//                 },),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }