import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_cubit_tutorial/pages/merchant_availability.dart';

class MerchantAccount extends StatefulWidget {
  const MerchantAccount({super.key});

  @override
  State<MerchantAccount> createState() => _MerchantAccountState();
}

class _MerchantAccountState extends State<MerchantAccount> {
  bool isOpen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 100, left: 15, right: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "John Doe Inc.",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text("john.doe@website.com",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                      height: 5,
                    ),
                    Text("Makepe, Sainte-Monique",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500))
                  ],
                ),
                Column(
                  children: [
                    Text("Note",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey.shade400,
                            fontWeight: FontWeight.w500)),
                    Text("2.3",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold))
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildIconText(
                    Icons.person_2_outlined, "Ouvert/Ferme", context),
                CupertinoSwitch(
                    activeColor: Colors.orange,
                    value: isOpen,
                    onChanged: (value) {
                      setState(() {
                        isOpen = value;
                      });
                    }),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            _buildIconText(
              Icons.person_2_outlined,
              "Modifier le montant disponible",
              context,
            ),
            SizedBox(
              height: 30,
            ),
            _buildIconText(
              Icons.person_2_outlined,
              "Horaire d'ouverture/fermeture",
              context,
              const MerchantAvailability(),
            ),
            SizedBox(
              height: 30,
            ),
            _buildIconText(
              Icons.person_2_outlined,
              "Modifier son PIN",
              context,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIconText(IconData customIcon, String text, BuildContext context,
      [Widget route = const Scaffold(
        body: Center(
          child: Text('Not yet implemented 🫣'),
        ),
      )]) {
    return Row(
      children: [
        Icon(customIcon),
        SizedBox(
          width: 10,
        ),
        InkWell(
            onTap: () => {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => route))
                },
            child: Text(
              text,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ))
      ],
    );
  }
}
