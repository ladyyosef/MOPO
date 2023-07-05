// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// Widget cours({
//   required int courseId,
//   required ImageProvider coursImage,
//   required String coursName,
//   String? instutName,
//   required bool isFree,
// }) =>
//     _Cours(
//       courseId: courseId,
//       coursImage: coursImage,
//       coursName: coursName,
//       instutName: instutName!,
//       isFree: isFree,
//     );

// class _Cours extends StatelessWidget {
//   final int courseId;

//   const _Cours({
//     required this.coursImage,
//     required this.coursName,
//     required this.instutName,
//     required this.isFree,
//     required this.courseId,
//   });

//   final ImageProvider coursImage;
//   final String coursName;
//   final String instutName;
//   final bool isFree;

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: GestureDetector(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (context) => Details(
//                       CoursId: courseId,
//                     )),
//           );
//         },
//         child: Padding(
//           padding: const EdgeInsets.all(10.0),
//           child: Container(
//             height: 215,
//             width: 155,
//             decoration: BoxDecoration(
//               color: Colors.white,
//               borderRadius: BorderRadius.circular(20),
//               boxShadow: [
//                 BoxShadow(
//                     color: Colors.grey.withOpacity(0.5),
//                     spreadRadius: 2,
//                     blurRadius: 4,
//                     offset: Offset(0, 0)),
//               ],
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(2.0),
//                   child: Stack(
//                     children: [
//                       Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                         ),
//                         clipBehavior: Clip.antiAliasWithSaveLayer,
//                         child: Image(
//                           image: coursImage,
//                           fit: BoxFit.cover,
//                           width: 150,
//                           height: 125,
//                         ),
//                       ),
//                       Container(
//                         width: 44,
//                         height: 25,
//                         decoration: BoxDecoration(
//                             borderRadius: const BorderRadius.only(
//                               topRight: Radius.circular(16),
//                               bottomLeft: Radius.circular(16),
//                             ),
//                             color: isFree
//                                 ? const Color(0xffFF0F00).withOpacity(0.5)
//                                 : null),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(3.0),
//                         child: Container(
//                           width: 44,
//                           height: 25,
//                           decoration: BoxDecoration(
//                               borderRadius: const BorderRadius.only(
//                                 topRight: Radius.circular(16),
//                                 bottomLeft: Radius.circular(16),
//                               ),
//                               color: isFree
//                                   ? const Color(0xffFF0F00).withOpacity(0.5)
//                                   : null),
//                           child: Text(
//                             isFree ? 'مجاني' : '',
//                             textAlign: TextAlign.center,
//                             style: const TextStyle(
//                               color: Colors.black,
//                               fontFamily: 'cairo',
//                               fontWeight: FontWeight.w600,
//                               fontSize: 12,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Expanded(
//                   child: Center(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Text(
//                         coursName,
//                         maxLines: 1,
//                         overflow: TextOverflow.ellipsis,
//                         style: const TextStyle(
//                           color: Colors.black,
//                           fontFamily: 'cairo',
//                           fontWeight: FontWeight.w900,
//                           fontSize: 16,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Center(
//                     child: Padding(
//                       padding: const EdgeInsets.all(7.0),
//                       child: Text(
//                         instutName,
//                         maxLines: 1,
//                         textAlign: TextAlign.start,
//                         overflow: TextOverflow.ellipsis,
//                         style: const TextStyle(
//                           color: Colors.black,
//                           fontFamily: 'cairo',
//                           fontWeight: FontWeight.w300,
//                           fontSize: 14,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }