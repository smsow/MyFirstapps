import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GridItem {
  final String imageUrl;
  final String title;

  GridItem({required this.imageUrl, required this.title});
}

class MainPage extends StatelessWidget {
  final List<GridItem> items = [
    GridItem(imageUrl: 'https://www.soin-et-nature.com/media/cache/shop_product_large_thumbnail/products/7/4/4/5/7445.jpg', title: 'Doliprane 1000mg paracetamol\n1250 cfa'),
    GridItem(imageUrl: 'https://cdn.pim.mesoigner.fr/mesoigner/a6e582ef1ae43fa860edf3ed1fd34718/mesoigner-thumbnail-300-300-inset/256/810/rhumagrip-comprime.jpg.webp', title: 'Rhumagrip 16 comp paracetamol\n1550 cfa'),
    GridItem(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKsshgDk2i95VBvGa3de6g8G12reVQ7YVvWw&s', title: 'Fluorcaril 250mg dentifrice\n1750 cfa'),
    GridItem(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpsJ37OOTNdlC7VVH2DBoWEt5pFdRdsNRTCA&s', title: 'Efferalgan VIT-C 250mg paracetamol\n750 cfa'),
    GridItem(imageUrl: 'https://www.soin-et-nature.com/media/cache/shop_product_large_thumbnail/products/7/4/4/5/7445.jpg', title: 'Doliprane 1000mg paracetamol\n1250 cfa'),
    GridItem(imageUrl: 'https://cdn.pim.mesoigner.fr/mesoigner/a6e582ef1ae43fa860edf3ed1fd34718/mesoigner-thumbnail-300-300-inset/256/810/rhumagrip-comprime.jpg.webp', title: 'Rhumagrip 16 comp paracetamol\n1550 cfa'),
    GridItem(imageUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKsshgDk2i95VBvGa3de6g8G12reVQ7YVvWw&s', title: 'Fluorcaril 250mg dentifrice\n1750 cfa'),
    // Add more items as needed
  ];

  final TextEditingController _searchController = TextEditingController();
  final FocusNode _searchFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Dismiss keyboard when tapping outside of text field
        FocusScope.of(context).unfocus();
      },
      child: SafeArea(
        child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _navbar(context),
              Expanded(child: _gridView(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _navbar(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Menu",
            style: GoogleFonts.comfortaa(
              textStyle: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 343.0,
            height: 52.0,
            child: TextField(
              controller: _searchController,
              focusNode: _searchFocus,
              onTap: () {
                // Show keyboard when tapping on TextField
                _searchFocus.requestFocus();
              },
              decoration: InputDecoration(
                hintText: "Search any item",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(0),
                ),
                fillColor: Color(0xFF0D430B),
                filled: false,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _gridView(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: (160 / 240), // Adjusted height to accommodate the text
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return _gridItem(context, items[index]);
        },
      ),
    );
  }

  Widget _gridItem(BuildContext context, GridItem item) {
    return Container(
      height: 240, // Adjusted height to accommodate the text
      width: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 160,
            height: 160,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(item.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 20), // Adjusted spacing to separate image and text
          Text(
            item.title,
            style: TextStyle(
              fontSize: 16,
              fontFamily: 'Arial',
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MainPage(),
  ));
}
