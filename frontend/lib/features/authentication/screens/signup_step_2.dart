// Step 2 of Signup Process
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:watchary/core/constants/colors.dart';
import 'package:watchary/features/authentication/screens/login.dart';

class SignupScreenStep2 extends StatefulWidget {
  final String name;
  final String email;
  final String password;

  const SignupScreenStep2({
    super.key,
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  State<SignupScreenStep2> createState() => _SignupScreenStep2State();
}

class _SignupScreenStep2State extends State<SignupScreenStep2> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _selectedDate;
  String? _selectedGender;
  final List<String> _genders = ['Male', 'Female', 'Non-binary', 'Prefer not to say'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back Button
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
                const SizedBox(height: 24),
                // Logo
                Center(
                  child: Hero(
                    tag: 'app_logo',
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(24)),
                      child: Image.asset(
                        'assets/logos/Watchary-logo-without-txt-light.png',
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                // Signup Text
                Text(
                  'Create Account',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        fontSize: 32,
                      ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  'Step 2: Additional Information',
                  style: Theme.of(context).textTheme.bodyLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),
                // Date of Birth Field
                GestureDetector(
                  onTap: () async {
                    final DateTime? picked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now().subtract(const Duration(days: 365 * 18)),
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                      builder: (context, child) {
                        return Theme(
                          data: Theme.of(context).copyWith(
                            colorScheme: const ColorScheme.dark(
                              primary: WColors.secondary,
                              onPrimary: Colors.white,
                              surface: Color(0xFF1F1F1F),
                              onSurface: Colors.white,
                            ),
                            textButtonTheme: TextButtonThemeData(
                              style: TextButton.styleFrom(
                                foregroundColor: WColors.secondary,
                              ),
                            ),
                          ),
                          child: child!,
                        );
                      },
                    );
                    if (picked != null && picked != _selectedDate) {
                      setState(() {
                        _selectedDate = picked;
                      });
                    }
                  },
                  child: AbsorbPointer(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Date of Birth',
                        prefixIcon: const Icon(Icons.calendar_today, color: WColors.primary),
                        suffixIcon: _selectedDate != null
                            ? IconButton(
                                icon: const Icon(Icons.clear, color: WColors.primary),
                                onPressed: () {
                                  setState(() {
                                    _selectedDate = null;
                                  });
                                },
                              )
                            : null,
                      ),
                      controller: TextEditingController(
                        text: _selectedDate != null ? DateFormat('MMMM dd, yyyy').format(_selectedDate!) : '',
                      ),
                      validator: (value) {
                        if (_selectedDate == null) {
                          return 'Please select your date of birth';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                // Gender Dropdown
                DropdownButtonFormField<String>(
                  value: _selectedGender,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedGender = newValue;
                    });
                  },
                  items: _genders.map((gender) {
                    return DropdownMenuItem<String>(
                      value: gender,
                      child: Text(gender),
                    );
                  }).toList(),
                  decoration: const InputDecoration(
                    hintText: 'Gender',
                    prefixIcon: Icon(Icons.person, color: WColors.primary),
                  ),
                  dropdownColor: const Color.fromARGB(255, 232, 236, 243),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please select your gender';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 48),
                // Create Account Button
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Account created successfully!'),
                          backgroundColor: Colors.green,
                        ),
                      );
                      // Navigate to Login Screen after successful account creation
                      Future.delayed(const Duration(seconds: 2), () {
                        if (context.mounted) {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginScreen()),
                            (route) => false,
                          );
                        }
                      });
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    minimumSize: const Size(double.infinity, 56),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 5,
                    shadowColor: Colors.red.withValues(alpha: 0.5),
                  ),
                  child: const Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
