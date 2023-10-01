import 'package:flutter/material.dart';
import 'package:flutter_gallery_3d/gallery3d.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
   final List<Map<String, dynamic>> itemList = [
    {'image': "assets/images/al-aqsa.jpg", 'text': 'Masjid Al-Aqsa'},
    {'image': "assets/images/masjid-al-Nabwi.jpg", 'text': 'Masjid Al-Nabwi saw'},
    {'image': "assets/images/morocco.jpg", 'text': 'Morocco Masjid'},
    {'image': "assets/images/shiekh-zayed.jpg", 'text': 'Masjid Shiekh Zayed'},
    {'image': "assets/images/suleymaniye.jpg", 'text': 'Masjid Suleymaniye'},
    {'image':"assets/images/sultan-ahmet.jpg", 'text': 'Masid Sultan-Ahmet'},
    {'image': "assets/images/turkey.jpg", 'text': 'Turkey Masjid'},
  
    // Add more items as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:SingleChildScrollView(
      child: Center(child:Column(children: [
        SizedBox(height:60),
        Gallery3D(
          width: 300, // Set the width of the Gallery3D widget.
          height: 400, // Set the height of the Gallery3D widget.
          controller: Gallery3DController(
            itemCount: 5, // Set the number of items in the Gallery.
            
          ),
          itemBuilder: (BuildContext context, int index) {
            // Define how each item should be built.
            return Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Image.asset(
                      itemList[index]['image'],
                      width: 40, // Adjust image width as needed
                      height: 40, // Adjust image height as needed
                      fit: BoxFit.cover,
                    ),
                  );
          },
          onItemChanged: (int index) {
            // Handle item change events.
            print('Item changed to index $index');
          },
          onClickItem: (int index) {
            // Handle item click events.
            print('Item clicked: index $index');
          }, itemConfig:  GalleryItemConfig(
              width: 220, // Customize item width.
              height: 300, // Customize item height.
              radius: 10, // Customize item radius.
              // Add any other configuration options as needed.
            ),
        ),
        
        Padding(
          padding: const EdgeInsets.only(top:5, left:40,right:40.0),
          child: Text(textAlign:TextAlign.center,"Islamic mosques, often simply referred to as masjids in Arabic, stand as the spiritual and architectural heart of the Muslim community. These places of worship hold immense significance in Islam, serving as more than just buildings; they are symbols of faith, unity, and devotion."),
        )
        ],)),
    ));
  }
}