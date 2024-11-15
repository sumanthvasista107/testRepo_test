
        import 'package:flutter/material.dart';

        import 'dart:html' as html; // Import for web downloads

        import '../constants/colors.dart';

        
        class MainDesktop extends StatelessWidget {

          const MainDesktop({super.key, required this.onNavItemTapSocial});

          final Function(int) onNavItemTapSocial;

          
        
          // Function to download PDF from the local files in the web directory

          void downloadPDF() {

            const url = 'https://testrepo_test.vercel.app/assets/public/Test.pdf'; // The relative path to your PDF in the web directory

            final anchor = html.AnchorElement(href: url)

              ..setAttribute('download', 'Test') // Name of the downloaded file

              ..click();

          }

          

          @override

          Widget build(BuildContext context) {

            final screenSize = MediaQuery.of(context).size;

            final screenWidth = screenSize.width;

            final screenHeight = screenSize.height;

            

            return Container(

              margin: const EdgeInsets.symmetric(horizontal: 20.0),

              height: screenHeight / 1.2,

              constraints: const BoxConstraints(

                minHeight: 350.0,

              ),

              child: Row(

                mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                children: [

                  Column(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      const Text(

                        "data",

                        style: TextStyle(

                          fontSize: 30.0,

                          height: 1.5,

                          fontWeight: FontWeight.bold,

                          color: CustomColor.whitePrimary,

                        ),

                      ),

                      const SizedBox(height: 15),

                      SizedBox(

                        width: 250,

                        child: ElevatedButton(

                          onPressed: () {

                            onNavItemTapSocial(3);

                          },

                          style: ElevatedButton.styleFrom(

                            shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(10.0),

                            ),

                            backgroundColor: CustomColor.yellowPrimary,

                          ),

                          child: const Text("Get in touch",style: TextStyle(color: CustomColor.whitePrimary),),

                        ),

                      ),

                      const SizedBox(height: 15), // Add spacing between buttons

                      SizedBox(

                        width: 250,

                        child: ElevatedButton(

                          onPressed: downloadPDF, // Call the download function

                          style: ElevatedButton.styleFrom(

                            shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(10.0),

                            ),

                            backgroundColor: CustomColor.yellowPrimary,

                          ),

                          child: const Text("Download Resume",style: TextStyle(color: CustomColor.whitePrimary),),

                        ),

                      ),

                    ],

                  ),

                  Image.asset(

                    "assets/anu.jpg",

                    width: screenWidth / 4,

                  ),

                ],

              ),

            );

          }

        }

        
