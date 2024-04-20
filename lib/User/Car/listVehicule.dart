import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'gridDashboard.dart';
import 'add.dart';
import '/User/Car/Vehicledetail.dart';

class VehiculePage extends StatefulWidget {
  @override
  VehiculePageState createState() => new VehiculePageState();
}

class VehiculePageState extends State<VehiculePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Set background color to transparent
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'images/back.png', // Adjust the path to your image asset
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: <Widget>[
              SizedBox(height: 50), // Reduced height to 50
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "My vehicles",
                          style: GoogleFonts.courgette(
                            // Changed font to Courgette
                            textStyle: TextStyle(
                              color: Color(0xFF15256e),
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          "Check your vehicles infos",
                          style: GoogleFonts.openSans(
                            textStyle: TextStyle(
                              color: Color(0xffa29aac),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {},
                      alignment: Alignment.topCenter,
                      icon: Image.asset("images/caricon.png", width: 64),
                    )
                  ],
                ),
              ),
              SizedBox(height: 40),
              // Grid Dashboard
              GridDashboard(),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddVehicule()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}