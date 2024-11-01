import 'package:crazy_animation/widgets/logo_animated.dart';
import 'package:crazy_animation/widgets/top_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';



class CrazyAnimation extends StatelessWidget {
  const CrazyAnimation({super.key});

  @override
  Widget build(BuildContext context) {

    var size = Get.size;
    RxBool menuClicked = false.obs;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(21.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //LogoAnimation(menuClicked: menuClicked),
               //LogoAnimation(),
                GestureDetector(
                    onTap: (){
                      menuClicked.value = !menuClicked.value;
                    },
                    child: Icon(Icons.menu)),

                SizedBox(height: size.width * .075,),

                SizedBox(
                  width: size.width,
                  height: size.width * 1.1,
                  child: Obx(() => Stack(
                    children: [
                      
                      TopCard(menuClicked: menuClicked, defaultWidth: size.width * .44, dynamicWidth: size.width, defaultHeight: size.width * 1.1, dynamicHeight: size.width * 1.1, colors: Colors.black),

                     //  AnimatedContainer(
                     //    duration: const Duration(milliseconds: 355),
                     //    curve: Curves.easeOut,
                     //    width: menuClicked.value ? size.width : size.width * .44,
                     //    height: size.width * 1.1,
                     //    decoration: BoxDecoration(
                     //      color: Colors.black,
                     //      borderRadius: BorderRadius.circular(menuClicked.value ? 55 : 100),
                     //
                     //    ),
                     //
                     //  child: AnimatedOpacity(
                     //   duration: const Duration(milliseconds: 355),
                     //   curve: Curves.easeOut,
                     //   opacity: menuClicked.value ? 0 : 1,
                     //   child: ClipRRect(
                     //          borderRadius: BorderRadius.circular(100),
                     //          child: Image.asset("assets/images/Ismail1.jpg",
                     //          fit: BoxFit.cover,
                     //          ),
                     //        ),
                     // ),
                     //  ),


                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 355),
                        curve: Curves.easeOut,
                        right: 0,
                        top: menuClicked.value ? 65 : 0,
                        child: Padding(
                          padding:  EdgeInsets.all(menuClicked.value ? 17 : 0),

                         child:  TopCard(menuClicked: menuClicked, defaultWidth: size.width * .44, dynamicWidth: size.width -42 -34, defaultHeight: size.width * .65, dynamicHeight: size.width * 1.1 - 65 -34, colors: Color(0xff575757)
                          //    AnimatedOpacity(
                          //   duration: const Duration(milliseconds: 355),
                          //   curve: Curves.easeOut,
                          //   opacity: menuClicked.value ? 1 : 0,
                          //   child: Column(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     crossAxisAlignment: CrossAxisAlignment.center,
                          //     children: [
                          //       Text.rich(
                          //         TextSpan(
                          //             children: [
                          //               WidgetSpan(child: Icon(Icons.shopping_cart,color: Colors.white,size: size.width * .065,),alignment: PlaceholderAlignment.middle),
                          //               TextSpan(
                          //                   text: "  items in cart",
                          //                   style: TextStyle(
                          //                     color: Colors.white,
                          //                     fontWeight: FontWeight.w900,
                          //                     fontSize: size.width * .045,
                          //                   )
                          //               )
                          //             ]
                          //         ),
                          //         textAlign: TextAlign.center,
                          //       ),
                          //
                          //       Padding(
                          //         padding: const EdgeInsets.all(21.0),
                          //         child: Text.rich(
                          //           TextSpan(
                          //               children: [
                          //                 WidgetSpan(child: Icon(Icons.history_toggle_off,color: Colors.white,size:size.width*.065,),alignment: PlaceholderAlignment.middle),
                          //                 TextSpan(
                          //                     text: "  purchase history",
                          //                     style: TextStyle(
                          //                       color: Colors.white,
                          //                       fontWeight: FontWeight.w900,
                          //                       fontSize: size.width * .045,
                          //                     )
                          //                 )
                          //               ]
                          //           ),
                          //           textAlign: TextAlign.center,
                          //         ),
                          //       ),
                          //
                          //       Text.rich(
                          //           TextSpan(
                          //               children: [
                          //                 WidgetSpan(child: Icon(Icons.settings,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                          //                 TextSpan(
                          //                     text: "  app settings",
                          //                     style: TextStyle(
                          //                       color: Colors.white,
                          //                       fontWeight: FontWeight.w900,
                          //                       fontSize: size.width * .045,
                          //                     )
                          //                 )
                          //               ]
                          //           )
                          //       )
                          //     ],
                          //   ),
                          // )
                         ),

                          //   child: AnimatedContainer(
                          //   duration: const Duration(milliseconds: 355),
                          //   curve: Curves.easeOut,
                          //   width: menuClicked.value ? size.width -42 -34 : size.width * .44,
                          //   height: menuClicked.value ? size.width * 1.1 - 65 -34 : size.width * .65,
                          //   decoration: BoxDecoration(
                          //     color: Color(0xff575757),
                          //     borderRadius: BorderRadius.circular(menuClicked.value ? 55 : 100),
                          //   ),
                          //   child: AnimatedOpacity(
                          //     duration: const Duration(milliseconds: 355),
                          //     curve: Curves.easeOut,
                          //     opacity: menuClicked.value ? 0 : 1,
                          //     child: Stack(
                          //       alignment: Alignment.center,
                          //       children: [
                          //         ClipRRect(
                          //           borderRadius: BorderRadius.circular(100),
                          //           child: AnimatedOpacity(
                          //             duration: const Duration(milliseconds: 355),
                          //             curve: Curves.easeOut,
                          //             opacity: menuClicked.value ? 0 : 1,
                          //             child: Image.asset("assets/images/Ismail2.png",
                          //               fit: BoxFit.cover,
                          //               width: size.width * .44,
                          //               height: size.width * .65,
                          //             ),
                          //           ),
                          //         ),
                          //         AnimatedOpacity(
                          //           duration: const Duration(milliseconds: 355),
                          //           curve: Curves.easeOut,
                          //           opacity: menuClicked.value ? 1 : 0,
                          //           child: Column(
                          //             mainAxisAlignment: MainAxisAlignment.center,
                          //             crossAxisAlignment: CrossAxisAlignment.center,
                          //             children: [
                          //               Text.rich(
                          //                 TextSpan(
                          //                     children: [
                          //                       WidgetSpan(child: Icon(Icons.shopping_cart,color: Colors.white,size: size.width * .065,),alignment: PlaceholderAlignment.middle),
                          //                       TextSpan(
                          //                           text: "  items in cart",
                          //                           style: TextStyle(
                          //                             color: Colors.white,
                          //                             fontWeight: FontWeight.w900,
                          //                             fontSize: size.width * .045,
                          //                           )
                          //                       )
                          //                     ]
                          //                 ),
                          //                 textAlign: TextAlign.center,
                          //               ),
                          //
                          //               Padding(
                          //                 padding: const EdgeInsets.all(21.0),
                          //                 child: Text.rich(
                          //                   TextSpan(
                          //                       children: [
                          //                         WidgetSpan(child: Icon(Icons.history_toggle_off,color: Colors.white,size:size.width*.065,),alignment: PlaceholderAlignment.middle),
                          //                         TextSpan(
                          //                             text: "  purchase history",
                          //                             style: TextStyle(
                          //                               color: Colors.white,
                          //                               fontWeight: FontWeight.w900,
                          //                               fontSize: size.width * .045,
                          //                             )
                          //                         )
                          //                       ]
                          //                   ),
                          //                   textAlign: TextAlign.center,
                          //                 ),
                          //               ),
                          //
                          //               Text.rich(
                          //                   TextSpan(
                          //                       children: [
                          //                         WidgetSpan(child: Icon(Icons.settings,color: Colors.white,size: size.width*.065,),alignment: PlaceholderAlignment.middle),
                          //                         TextSpan(
                          //                             text: "  app settings",
                          //                             style: TextStyle(
                          //                               color: Colors.white,
                          //                               fontWeight: FontWeight.w900,
                          //                               fontSize: size.width * .045,
                          //                             )
                          //                         )
                          //                       ]
                          //                   )
                          //               )
                          //             ],
                          //           ),
                          //         )
                          //       ],
                          //     ),
                          //   ),
                          // ),
                        ),

                      ),

                      AnimatedPositioned(
                        duration: const Duration(milliseconds: 355),
                        curve: Curves.easeOut,
                        bottom: menuClicked.value ? size.width * 1.1 - size.width * 0.12 - 17 :0,
                        right: menuClicked.value ? 17 : 0,

                       child:  TopCard(menuClicked: menuClicked, defaultWidth: size.width * .44, dynamicWidth: size.width * 0.12, defaultHeight: size.width * .44, dynamicHeight: size.width * 0.12, colors: Colors.grey

                  ),

                        // child: AnimatedContainer(
                        //   duration: const Duration(milliseconds: 355),
                        //   curve: Curves.easeOut,
                        //   width: menuClicked.value ? size.width * 0.12 : size.width * .44,
                        //   height: menuClicked.value ? size.width * 0.12 : size.width * .43,
                        //   decoration: BoxDecoration(
                        //     color: Colors.grey,
                        //     borderRadius: BorderRadius.circular(100),
                        //
                        //   ),
                        //
                        //     child: ClipRRect(
                        //       borderRadius: BorderRadius.circular(100),
                        //       child: AnimatedOpacity(
                        //         duration: const Duration(milliseconds: 355),
                        //         curve: Curves.easeOut,
                        //         opacity: menuClicked.value ? 0 : 1,
                        //         child: Image.asset("assets/images/Ismail3.jpeg",
                        //           fit: BoxFit.cover,
                        //         ),
                        //       ),
                        //     ),
                        //   ),
                        ),

                    ],
                  ),)
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
