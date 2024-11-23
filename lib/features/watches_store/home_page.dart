import 'package:flutter/material.dart';

class WatcheStoreHomePage extends StatelessWidget {
  const WatcheStoreHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      body: SizedBox(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: SafeArea(
          child: Column(
            children: [
              _buildBigTitle(),
              _buildWatchImage(),
              _buildDiscoverButon(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBigTitle() {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        width: double.infinity,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LUXURY WATCHES",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Alike',
                fontSize: 40,
              ),
            ),
            Text(
              "Your gateway to the world of luxury timepieces.",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildWatchImage() {
    return Expanded(
      flex: 3,
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: ExactAssetImage(
              "assets/watches_store/images/watch_03_rotate.png",
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDiscoverButon() {
    return Expanded(
      flex: 2,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Iconics designs and elegance.",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.normal,
                fontSize: 15,
              ),
            ),
            MaterialButton(
              onPressed: () {},
              color: Colors.white,
              elevation: 0,
              padding: const EdgeInsets.all(25),
              height: 150,
              shape: const CircleBorder(),
              child: const Text(
                "Discover",
                textAlign: TextAlign.center,
                maxLines: 2,
                style: TextStyle(
                  color: Color(0xFF121212),
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


      //   body: const ModelViewer(
      //     backgroundColor: Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
      //     src: 'assets/Astronaut.glb',
      //     alt: 'A 3D model of an astronaut',
      //     ar: true,
      //     arModes: ['scene-viewer', 'webxr', 'quick-look'],
      //     autoRotate: true,
      //     iosSrc: 'https://modelviewer.dev/shared-assets/models/Astronaut.usdz',
      //     disableZoom: true,
      //   ),
      // )