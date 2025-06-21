import 'package:flutter/material.dart';
import 'package:handyman/utils/app_theme.dart';
import 'package:handyman/widget/custom_button.dart';
import 'package:handyman/widget/success_screen.dart';

import 'header_worker.dart';

class WorkerDetails extends StatefulWidget {
  const WorkerDetails({Key? key}) : super(key: key);
  static const String routeName = 'worker-details';

  @override
  _WorkerDetailsState createState() => _WorkerDetailsState();
}

class _WorkerDetailsState extends State<WorkerDetails> {
  // Selected values for each field.
  String? selectedLocation;
  String? selectedAvailability;
  String? selectedPhoneNumber;

  // Sample lists for each field.
  final List<String> locations = ['New York', 'Los Angeles', 'Chicago'];
  final List<String> availabilityOptions = ['Morning', 'Afternoon', 'Evening'];
  final List<String> phoneNumbers = [
    '123-456-7890',
    '987-654-3210',
    '555-555-5555'
  ];

  void _showBottomSheet({
    required List<String> items,
    required String title,
    required ValueChanged<String> onSelect,
  }) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          padding: const EdgeInsets.all(16),
          // Column only takes up the needed vertical space.
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Title of the bottom sheet.
              Text(
                title,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 10),
              // Map each item to a ListTile widget.
              ...items.map((item) {
                return ListTile(
                  title: Text(item),
                  onTap: () {
                    // Call the provided callback to update the selected value.
                    onSelect(item);
                  },
                );
              }).toList(),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppTheme.black,
                  foregroundColor: AppTheme.white,
                ),
                onPressed: () {
                  // Dismiss the bottom sheet.
                  Navigator.pop(context);
                },
                child: const Text('Continue'),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            HeaderWorker(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: screenSize.height * .06),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(selectedLocation ?? "Location",
                          style: textTheme.titleSmall),
                      InkWell(
                        onTap: () {
                          _showBottomSheet(
                            items: locations,
                            title: 'Select Location',
                            onSelect: (value) {
                              setState(() {
                                selectedLocation = value;
                              });
                            },
                          );
                        },
                        child: Row(
                          children: const [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * .06),
                  // Tappable "Availability" field.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(selectedAvailability ?? "Availability",
                          style: textTheme.titleSmall),
                      InkWell(
                        onTap: () {
                          _showBottomSheet(
                            items: availabilityOptions,
                            title: 'Select Availability',
                            onSelect: (value) {
                              setState(() {
                                selectedAvailability = value;
                              });
                            },
                          );
                        },
                        child: Row(
                          children: const [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * .06),
                  // Tappable "Phone Number" field.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(selectedPhoneNumber ?? "Phone Number",
                          style: textTheme.titleSmall),
                      InkWell(
                        onTap: () {
                          _showBottomSheet(
                            items: phoneNumbers,
                            title: 'Select Phone Number',
                            onSelect: (value) {
                              setState(() {
                                selectedPhoneNumber = value;
                              });
                            },
                          );
                        },
                        child: Row(
                          children: const [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * .06),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(selectedPhoneNumber ?? "Reviews",
                          style: textTheme.titleSmall),
                      InkWell(
                        onTap: () {
                          _showBottomSheet(
                            items: phoneNumbers,
                            title: 'Select Phone Number',
                            onSelect: (value) {
                              setState(() {
                                selectedPhoneNumber = value;
                              });
                            },
                          );
                        },
                        child: Row(
                          children: const [
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * .06),
                  // Tappable "Payment" field.
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment", style: textTheme.titleSmall),
                      InkWell(
                        onTap: () {
                          // Example: using the same bottom sheet function for Payment if needed.
                          // You can pass a different list and title or create another list.
                          _showBottomSheet(
                            items: ['Cash', 'Credit Card', 'Online Payment'],
                            title: 'Select Payment Method',
                            onSelect: (value) {
                              // Here you can store the selected payment method if needed.
                              // For demonstration, we'll just print it.
                              print('Selected Payment: $value');
                            },
                          );
                        },
                        child: Row(
                          children: const [
                            Icon(
                              Icons.payment_outlined,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenSize.height * .06),
                  CustomButton(
                    action: () {
                      Navigator.pushNamed(
                          context, SuccessScreen.routeName);
                    },
                    text: 'Reserve',
                    widthOfElevatedButton: 0.3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
