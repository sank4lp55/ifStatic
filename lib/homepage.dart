import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ifstatic/controllers/get_restaurents_controller.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final GetRestaurentsController _getRestaurentsController =
      Get.put(GetRestaurentsController());
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double h = size.height;
    double w = size.width;
    return SafeArea(
      child: Scaffold(
        //extendBody: true,
        floatingActionButton: FloatingActionButton(
          // focusColor: Color(0xFFC90000),
          backgroundColor: Color(0xFFC90000),
          shape: CircleBorder(),
          onPressed: () {},
          child: const Icon(
            Icons.qr_code,
            color: Colors.white,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 60,
          color: Colors.white,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Color(0xFFC90000),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.music_note,
                  color: Color(0xFFC90000),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.bookmark,
                  color: Color(0xFFC90000),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.person,
                  color: Color(0xFFC90000),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: Obx(() {
          if (_getRestaurentsController.isLoading.value == true) {
            return const Center(child: CircularProgressIndicator());
          } else {
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Alpha 1, Greater Noida',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 47,
                        height: 39,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19.50),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 8,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 84,
                        height: 39,
                        decoration: ShapeDecoration(
                          color: Color(0xFFFF5858),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(21),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 8,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 47,
                        height: 39,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19.50),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 8,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 47,
                        height: 39,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19.50),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 8,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 47,
                        height: 39,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19.50),
                          ),
                          shadows: [
                            BoxShadow(
                              color: Color(0x3F000000),
                              blurRadius: 8,
                              offset: Offset(0, 4),
                              spreadRadius: 0,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: 344,
                    height: 51,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.50),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x23000000),
                          blurRadius: 8,
                          offset: Offset(0, 4),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Nearby Restaurants',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                  // Container(
                  //   width: 330,
                  //   height: 183,
                  //   child: Stack(
                  //     children: [
                  //       Positioned(
                  //         left: 0,
                  //         top: 0,
                  //         child: Container(
                  //           width: 330,
                  //           height: 183,
                  //           child: Stack(
                  //             children: [
                  //               Positioned(
                  //                 left: 0,
                  //                 top: 130,
                  //                 child: Container(
                  //                   width: 330,
                  //                   height: 53,
                  //                   decoration: ShapeDecoration(
                  //                     color: Colors.white,
                  //                     shape: RoundedRectangleBorder(
                  //                       borderRadius: BorderRadius.only(
                  //                         bottomLeft: Radius.circular(11),
                  //                         bottomRight: Radius.circular(11),
                  //                       ),
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //               Positioned(
                  //                 left: 0,
                  //                 top: 0,
                  //                 child: Container(
                  //                   width: 330,
                  //                   height: 130,
                  //                   decoration: BoxDecoration(
                  //                     image: DecorationImage(
                  //                       image: AssetImage(
                  //                           "assets/bb28b24c90429f1673b19fa6c3a5e6f2.jpeg"),
                  //                       fit: BoxFit.fill,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       Positioned(
                  //         left: 8,
                  //         top: 135,
                  //         child: Text(
                  //           'Domino’s Pizza',
                  //           style: TextStyle(
                  //             color: Colors.black,
                  //             fontSize: 16,
                  //             fontFamily: 'Poppins',
                  //             fontWeight: FontWeight.w600,
                  //             height: 0,
                  //           ),
                  //         ),
                  //       ),
                  //       Positioned(
                  //         left: 285,
                  //         top: 98,
                  //         child: Container(
                  //           width: 34,
                  //           height: 20,
                  //           child: Stack(
                  //             children: [
                  //               Positioned(
                  //                 left: 0,
                  //                 top: 0,
                  //                 child: Container(
                  //                   width: 34,
                  //                   height: 20,
                  //                   decoration: ShapeDecoration(
                  //                     color: Color(0xFF1BC400),
                  //                     shape: RoundedRectangleBorder(
                  //                         borderRadius:
                  //                             BorderRadius.circular(5)),
                  //                   ),
                  //                 ),
                  //               ),
                  //               Positioned(
                  //                 left: 4,
                  //                 top: 4,
                  //                 child: Text(
                  //                   '4.5',
                  //                   style: TextStyle(
                  //                     color: Colors.white,
                  //                     fontSize: 11,
                  //                     fontFamily: 'Poppins',
                  //                     fontWeight: FontWeight.w700,
                  //                     height: 0,
                  //                   ),
                  //                 ),
                  //               ),
                  //               Positioned(
                  //                 left: 22,
                  //                 top: 5,
                  //                 child: Container(
                  //                   width: 9,
                  //                   height: 9,
                  //                   clipBehavior: Clip.antiAlias,
                  //                   decoration: BoxDecoration(),
                  //                   child: Stack(
                  //                     children: [
                  //                       Positioned(
                  //                         left: 0,
                  //                         top: 0,
                  //                         child: Container(
                  //                           width: 9,
                  //                           height: 9,
                  //                           child: Stack(children: [
                  //                             Container(
                  //                               child: SvgPicture.asset(
                  //                                   "assets/Star rate.svg"),
                  //                             )
                  //                           ]),
                  //                         ),
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //       Positioned(
                  //         left: 208,
                  //         top: 143,
                  //         child: Container(
                  //           width: 112,
                  //           height: 27,
                  //           child: Stack(
                  //             children: [
                  //               Positioned(
                  //                 left: 0,
                  //                 top: 0,
                  //                 child: Container(
                  //                   width: 27,
                  //                   height: 27,
                  //                   decoration: BoxDecoration(
                  //                     image: DecorationImage(
                  //                       image: AssetImage(
                  //                           "assets/a0390274b470321f83f85ca9ae5a3287.png"),
                  //                       fit: BoxFit.contain,
                  //                     ),
                  //                   ),
                  //                 ),
                  //               ),
                  //               Positioned(
                  //                 left: 31,
                  //                 top: 4,
                  //                 child: Text(
                  //                   '20% FLAT OFF',
                  //                   style: TextStyle(
                  //                     color: Color(0xFFFF0000),
                  //                     fontSize: 12,
                  //                     fontFamily: 'Poppins',
                  //                     fontWeight: FontWeight.w700,
                  //                     height: 0,
                  //                   ),
                  //                 ),
                  //               ),
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: _getRestaurentsController.modelTemp.data!.length,
                    itemBuilder: (context, index) {
                      final post =
                          _getRestaurentsController.modelTemp.data![index];
                      return promoCard(
                          post.id!,
                          post.name!,
                          post.tags!,
                          post.rating!,
                          post.discount!,
                          post.primaryImage!,
                          post.distance!);
                    },
                  ),
                ],
              ),
            );
          }
        }),
      ),
    );
  }

  Widget promoCard(int id, String name, String tags, double rating,
      int discount, String image, double distance) {
    return Center(
      child: Container(
        width: 330,
        height: 183,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 330,
                height: 183,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 130,
                      child: Container(
                        width: 330,
                        height: 53,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(11),
                              bottomRight: Radius.circular(11),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 330,
                        height: 130,
                        decoration: BoxDecoration(
                            //

                            ),
                        child: Image.network(
                          "$image",
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 8,
              top: 135,
              child: Text(
                '$name',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
            Positioned(
              left: 285,
              top: 98,
              child: Container(
                width: 34,
                height: 20,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 34,
                        height: 20,
                        decoration: ShapeDecoration(
                          color: Color(0xFF1BC400),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 4,
                      top: 4,
                      child: Text(
                        '$rating',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 22,
                      top: 5,
                      child: Container(
                        width: 9,
                        height: 9,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 9,
                                height: 9,
                                child: Stack(children: [
                                  Container(
                                    child: SvgPicture.asset(
                                        "assets/Star rate.svg"),
                                  )
                                ]),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              left: 208,
              top: 143,
              child: Container(
                width: 112,
                height: 27,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 27,
                        height: 27,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/a0390274b470321f83f85ca9ae5a3287.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 31,
                      top: 4,
                      child: Text(
                        '$discount% FLAT OFF',
                        style: TextStyle(
                          color: Color(0xFFFF0000),
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
