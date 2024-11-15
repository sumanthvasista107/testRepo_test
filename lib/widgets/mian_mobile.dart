

        import 'package:flutter/material.dart';

        import 'dart:html' as html; // Import for web downloads

        import '../constants/colors.dart';

        

        class MainMobile extends StatelessWidget {

        const MainMobile({super.key, required this.onNavItemTapSocialMobile});

        final Function(int) onNavItemTapSocialMobile;

        

        // Function to download PDF from the local files in the web directory

        void downloadPDF() {

        const url = 'https://github.com/sumanthvasista107/testRepo_test/blob/main/public/Test.pdf?raw=true'; // The relative path to your PDF in the web directory

        final anchor = html.AnchorElement(href: url)

        ..setAttribute('download', 'Test.pdf') // Name of the downloaded file

            ..click();

        }

        

        @override

        Widget build(BuildContext context) {

            final screenSize = MediaQuery.of(context).size;

            final screenWidth = screenSize.width;

            final screenHeight = screenSize.height;

        

        return Container(

            margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),

            height: screenHeight,

            constraints: const BoxConstraints(

            minHeight: 560.0,

        ),

        child: Column(

            mainAxisAlignment: MainAxisAlignment.start,

                               crossAxisAlignment: CrossAxisAlignment.center,

        children: [

                  // Avatarimage

        ShaderMask(

            shaderCallback: (bounds)

        {

        return LinearGradient(colors: [

            CustomColor.scaffloldBg.withOpacity(0.6),

            CustomColor.scaffloldBg.withOpacity(0.6),

        ]).createShader(bounds);

        },

        blendMode: BlendMode.srcATop,

        child: Image.asset(

        "assets/anu.jpg",

        width: screenWidth / 2,

        ),

        ),

        const SizedBox(height: 30.0),

        const Align(

            alignment: Alignment.topLeft,

        child: Text(

        "data",

        style: TextStyle(

            fontSize: 24.0,

                      height: 1.5,

        fontWeight: FontWeight.bold,

        color: CustomColor.whitePrimary,

        ),

        ),

        ),        const SizedBox(height: 15),

        Align(

            alignment: Alignment.topLeft,

        child: SizedBox(

        width: 180.0,

        child: ElevatedButton(

            onPressed: ()

        {

            onNavItemTapSocialMobile(3);

        },

        style: ElevatedButton.styleFrom(

            shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(20.0),

        ),

        backgroundColor: CustomColor.yellowPrimary,

        ),

        child: const

        Text("Get in touch", style: TextStyle(color: CustomColor.whitePrimary), ),

        ),

        ),

        ),

        const SizedBox(height: 15), // Add some spacing

        Align(

            alignment: Alignment.topLeft,

        child: SizedBox(

        width: 180.0,

        child: ElevatedButton(

            onPressed: downloadPDF, // Call the download function

        style: ElevatedButton.styleFrom(

            shape: RoundedRectangleBorder(

            borderRadius: BorderRadius.circular(20.0),

        ),

        backgroundColor: CustomColor.yellowPrimary,

        ),

        child: const

        Text("Download Resume", style: TextStyle(color: CustomColor.whitePrimary), ),

        ),

        ),

        ), // Download PDF buttoN

        ],

        ),

        );

        }

        }
