import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {

  String? _gender;
  DateTime? _selectedDate;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 249, 244, 244),

      ),
      backgroundColor: Color.fromARGB(255, 249, 244, 244), // Setting the background color
      body: SafeArea(
        child: SingleChildScrollView (
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Setting the back button
              
              SizedBox(height: 10), // Adding space between the back button and the Profile Picture

              // Profile picture
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    radius: 54,
                    backgroundColor: Color.fromARGB(255, 22, 127, 113),
                    child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Color.fromARGB(255, 216, 216, 216),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 18,
                      backgroundColor: Color.fromARGB(255, 22, 127, 113),
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.image,
                          size: 20,
                          color: Color.fromARGB(255, 22, 127, 113),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10), // Adding space between the profile picture and the TEXT

              InkWell(
                onTap: () {
                  // Handle photo upload
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => _bottomSheet(),
                  );
                },
                child: Text(
                  'AJOUTER UNE PHOTO',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 22, 127, 113),
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              SizedBox(height: 10), // Adding space between the text and the form

                            // Nom
              _buildTextField("Nom", _nameController),

              // Prénom
              _buildTextField("Prénom", _surnameController),

              // Date de naissance
              _buildDateField(),

              // Email
              _buildTextField("Email", _emailController,
                  prefixIcon: Icon(Icons.email)),

              // Téléphone
              _buildTextField("Téléphone", _phoneController,
                  keyboardType: TextInputType.number,
                  prefixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.flag,),
                      SizedBox(width: 5),
                      Text("(+227)"),
                      SizedBox(width: 8),
                    ],
                  )),

              // Genre
              _buildGenderDropdown(),

              // Statut (étudiant)
              _buildTextField("Statut", TextEditingController(text: "Student",),
                  enabled: false),

              SizedBox(height: 20),

              // Bouton Update
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    backgroundColor: Color.fromARGB(255, 14, 165, 233),
                  ),
                  onPressed: () {},
                  child: Text("Update", style: TextStyle(fontSize: 18, color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomSheet() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: <Widget>[
          Text(
            "Choose Profile Photo",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              ElevatedButton.icon(
                onPressed: () {
                  // Handle camera action
                },
                icon: Icon(Icons.camera_alt),
                label: Text("Camera"),
              ),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle gallery action
                },
                icon: Icon(Icons.photo_library),
                label: Text("Gallery"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTextField(String label, TextEditingController controller,
      {Widget? prefixIcon, TextInputType? keyboardType, bool enabled = true}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: TextField(
        controller: controller,
        enabled: enabled,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          hintText: label,
          prefixIcon: prefixIcon != null ? Padding(
            padding: const EdgeInsets.only(left: 10, right: 8),
            child: prefixIcon,
          ) : null,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Color.fromARGB(0, 0, 0, 0))),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }

  Widget _buildDateField() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () async {
          DateTime? picked = await showDatePicker(
            context: context,
            initialDate: DateTime(2005),
            firstDate: DateTime(1950),
            lastDate: DateTime.now(),
          );
          if (picked != null) {
            setState(() {
              _selectedDate = picked;
            });
          }
        },
        child: AbsorbPointer(
          child: TextField(
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              hintStyle: TextStyle(color: Colors.black),
              hintText: _selectedDate == null
                  ? "Date of birth"
                  : "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}",
              prefixIcon: Icon(Icons.calendar_today),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              filled: true,
              fillColor: Colors.white,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildGenderDropdown() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: DropdownButtonFormField<String>(
        value: _gender,
        onChanged: (val) => setState(() => _gender = val),
        items: ['Male', 'Female', 'Other']
            .map((e) => DropdownMenuItem(value: e, child: Text(e)))
            .toList(),
        decoration: InputDecoration(
          hintText: "Gender",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}




