import 'dart:core' as data;
import 'dart:core';
import 'package:demo_flutter2/Dialogboxes/certificate_detailsSubmissoinconfrimation.dart';
import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class CertRegistrationScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CertRegistrationScreenState();
  }
}

class CertRegistrationScreenState extends State<CertRegistrationScreen> {
  //Date

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildlogoImage() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.message,
            color: Color.fromRGBO(19, 199, 190, 1),
            size: 70,
          ),
          SizedBox(height: 50),
          Text(
            "Certificate Details",
            style: GoogleFonts.oswald(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
    );
  }

  Widget _buildCustomerAddress() {
    return TextFormField(
      keyboardType: TextInputType.multiline,
      maxLines: 3,
      decoration: InputDecoration(
          labelText: 'Address',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
    );
  }

  Widget _buildManufactureName() {
    return TextFormField(
      decoration: InputDecoration(
          labelText: 'Name',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
    );
  }

  Widget _buildTapeType() {
    return TextField(
      decoration: InputDecoration(
          labelText: 'Build Type',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
    );
  }

  Widget _buildVehicleModel() {
    return TextField(
      decoration: InputDecoration(
          labelText: 'Vehicle Model',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
    );
  }

  Widget _builfillment() {
    return TextField(
      decoration: InputDecoration(
          labelText: 'Build Fillment',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
    );
  }

  Widget _buildLocationRTO() {
    return TextField(
      decoration: InputDecoration(
          labelText: 'RTO Location',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 8)),
    );
  }

  Widget _buildDealereName() {
    return TextField(
      decoration: InputDecoration(
          labelText: 'Dealer Name',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 8)),
    );
  }

  Widget _buildVehicleRegNoName() {
    return TextField(
      decoration: InputDecoration(
          labelText: 'Vehicle Registration Number',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 8)),
    );
  }

  Widget _buildEngineNo() {
    return TextField(
      decoration: InputDecoration(
          labelText: 'Engine Number',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 8)),
    );
  }

  Widget _buildChasisNo() {
    return TextField(
      decoration: InputDecoration(
          labelText: 'Chasis Number',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
    );
  }

  Widget _buildCustomerName() {
    return TextField(
      decoration: InputDecoration(
          labelText: 'Customer Name',
          contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5)),
    );
  }

  Widget _buildCustomerPhoneNo() {
    return TextField(
      // style: ,
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          labelText: 'Customer Phone number',
          contentPadding: EdgeInsets.symmetric(horizontal: 1, vertical: 1)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(19, 199, 190, 1),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildlogoImage(),
              SizedBox(height: 10),
              _buildManufactureName(),
              SizedBox(height: 10),
              _buildTapeType(),
              SizedBox(height: 10),

              _buildVehicleModel(),
              SizedBox(height: 10),

              _builfillment(),
              SizedBox(height: 10),

              _buildLocationRTO(),
              SizedBox(height: 10),

              _buildDealereName(),
              SizedBox(height: 10),

              _buildVehicleRegNoName(),
              SizedBox(height: 10),

              _buildEngineNo(),
              SizedBox(height: 10),

              _buildChasisNo(),
              SizedBox(height: 10),

              _buildCustomerName(),
              SizedBox(height: 10),

              _buildCustomerPhoneNo(),
              SizedBox(height: 20),
              _buildCustomerAddress(),
              SizedBox(height: 20),
              // ignore: deprecated_member_use
              Container(
                height: 1.4 * (MediaQuery.of(context).size.height / 20),
                width: 5 * (MediaQuery.of(context).size.width / 7),
                margin: EdgeInsets.symmetric(vertical: 30),
                // ignore: deprecated_member_use
                child: RaisedButton(
                  color: Color.fromRGBO(19, 199, 190, 1),
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) =>
                            CertDetailsAddConfirmatinDialog());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
