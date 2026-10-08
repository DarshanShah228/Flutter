import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalInformation extends StatefulWidget {
  const PersonalInformation({super.key});

  @override
  State<PersonalInformation> createState() => _PersonalInformationState();
}

class _PersonalInformationState extends State<PersonalInformation> {
  // Page Navigation Controllers
  final PageController _pageController = PageController();
  int _currentStep = 0;

  // Form Validation Keys (One for each section)
  final List<GlobalKey<FormState>> _formKeys = [
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
    GlobalKey<FormState>(),
  ];

  // STEP 1: Personal Info Controllers
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _genderController = TextEditingController();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _referralController = TextEditingController();

  // STEP 2: Contact Info Controllers
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

  // STEP 3: Employment Info Controllers
  final TextEditingController _workplaceController = TextEditingController();
  final TextEditingController _ippisController = TextEditingController();
  final TextEditingController _bankNameController = TextEditingController();
  final TextEditingController _accountController = TextEditingController();

  @override
  void dispose() {
    _pageController.dispose();
    // Clean up all controllers to prevent memory leaks
    _titleController.dispose(); _genderController.dispose();
    _firstNameController.dispose(); _lastNameController.dispose();
    _dobController.dispose(); _referralController.dispose();
    _emailController.dispose(); _phoneController.dispose();
    _addressController.dispose(); _stateController.dispose();
    _cityController.dispose(); _workplaceController.dispose();
    _ippisController.dispose(); _bankNameController.dispose();
    _accountController.dispose();
    super.dispose();
  }

  void _nextStep() {
    if (_formKeys[_currentStep].currentState!.validate()) {
      if (_currentStep < 2) {
        setState(() => _currentStep++);
        _pageController.animateToPage(
          _currentStep,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else {
        _submitForm();
      }
    }
  }

  void _previousStep() {
    if (_currentStep > 0) {
      setState(() => _currentStep--);
      _pageController.animateToPage(
        _currentStep,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _submitForm() {
    // Process form data safely via your controllers
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Form Submitted! IPPIS: ${_ippisController.text}')),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: _currentStep > 0
            ? IconButton(
          icon: const Icon(CupertinoIcons.arrow_left, color: Colors.orange),
          onPressed: _previousStep,
        )
            : null,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Section Titles & Top Indicators
            _buildHeaderProgress(),
            const SizedBox(height: 24),
            // Multi-step Viewport area
            Expanded(
              child: PageView(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(), // Blocks accidental thumb swiping
                children: [
                  _buildPersonalInfoStep(),
                  _buildContactInfoStep(),
                  _buildEmploymentInfoStep(),
                ],
              ),
            ),
            // Persistent Bottom Primary Action Button
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E3A5F), // Dark Navy Blue
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: _nextStep,
                  child: Text(
                    _currentStep == 2 ? 'Complete' : 'Continue',
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildHeaderProgress() {
    List<String> titles = ["Personal Information", "Contact Information", "Employment Information"];
    return Column(
      children: [
        Text(
          titles[_currentStep],
          style: const TextStyle(color: Colors.orange, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(3, (index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              height: 4,
              width: 80,
              color: index <= _currentStep ? const Color(0xFF1E3A5F) : Colors.grey.shade300,
            );
          }),
        ),
      ],
    );
  }

  Widget _buildPersonalInfoStep() {
    return Form(
      key: _formKeys[0],
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          _buildTextField(label: 'Title', controller: _titleController),
          _buildTextField(label: 'Gender', controller: _genderController),
          _buildTextField(label: 'First Name', controller: _firstNameController),
          _buildTextField(label: 'Last Name', controller: _lastNameController),
          _buildTextField(label: 'Date of Birth', controller: _dobController),
          _buildTextField(label: 'Referral Code', controller: _referralController, isRequired: false),
        ],
      ),
    );
  }

  Widget _buildContactInfoStep() {
    return Form(
      key: _formKeys[1],
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          _buildTextField(label: 'Email', controller: _emailController, keyboardType: TextInputType.emailAddress),
          _buildTextField(label: 'Phone Number', controller: _phoneController, keyboardType: TextInputType.phone),
          _buildTextField(label: 'House Address', controller: _addressController),
          _buildTextField(label: 'State', controller: _stateController),
          _buildTextField(label: 'City', controller: _cityController),
        ],
      ),
    );
  }

  Widget _buildEmploymentInfoStep() {
    return Form(
      key: _formKeys[2],
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        children: [
          _buildTextField(label: 'Place of Work', controller: _workplaceController),
          _buildTextField(label: 'IPPIS Number', controller: _ippisController, keyboardType: TextInputType.number),
          _buildTextField(label: 'Salary Bank Name', controller: _bankNameController),
          _buildTextField(label: 'Salary Bank Account', controller: _accountController, keyboardType: TextInputType.number),
        ],
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    bool isRequired = true,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(color: Colors.grey, fontSize: 14),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF1E3A5F), width: 2),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400, width: 1),
          ),
        ),
        validator: (value) {
          if (isRequired && (value == null || value.trim().isEmpty)) {
            return '$label is required';
          }
          return null;
        },
      ),
    );
  }
}
