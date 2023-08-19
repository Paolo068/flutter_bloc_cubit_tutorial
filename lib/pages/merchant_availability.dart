import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MerchantAvailability extends StatefulWidget {
  const MerchantAvailability({super.key});

  @override
  State<MerchantAvailability> createState() => _MerchantAvailabilityState();
}

class _MerchantAvailabilityState extends State<MerchantAvailability> {
  final TimeOfDay _openTime = const TimeOfDay(hour: 08, minute: 00);
  TimeOfDay _mondayOpenTime = const TimeOfDay(hour: 08, minute: 00);
  TimeOfDay _tuesdayOpenTime = const TimeOfDay(hour: 08, minute: 00);
  TimeOfDay _wednesdayOpenTime = const TimeOfDay(hour: 08, minute: 00);
  TimeOfDay _thursdayOpenTime = const TimeOfDay(hour: 08, minute: 00);
  TimeOfDay _fridayOpenTime = const TimeOfDay(hour: 08, minute: 00);
  TimeOfDay _saturdayOpenTime = const TimeOfDay(hour: 08, minute: 00);
  TimeOfDay _sundayOpenTime = const TimeOfDay(hour: 08, minute: 00);

  final TimeOfDay _closeTime = const TimeOfDay(hour: 18, minute: 00);
  TimeOfDay _mondayCloseTime = const TimeOfDay(hour: 18, minute: 00);
  TimeOfDay _tuesdayCloseTime = const TimeOfDay(hour: 18, minute: 00);
  TimeOfDay _wednesdayCloseTime = const TimeOfDay(hour: 18, minute: 00);
  TimeOfDay _thursdayCloseTime = const TimeOfDay(hour: 18, minute: 00);
  TimeOfDay _fridayCloseTime = const TimeOfDay(hour: 18, minute: 00);
  TimeOfDay _saturdayCloseTime = const TimeOfDay(hour: 18, minute: 00);
  TimeOfDay _sundayCloseTime = const TimeOfDay(hour: 18, minute: 00);

  // SET OPEN TIME FUNCTIONS

  _setMondayOpenTime() {
    showTimePicker(context: context, initialTime: _openTime).then((value) {
      setState(() {
        _mondayOpenTime = value!;
      });
    });
  }

  _setTuesdayOpenTime() {
    showTimePicker(context: context, initialTime: _openTime).then((value) {
      setState(() {
        _tuesdayOpenTime = value!;
      });
    });
  }

  _setWednesdayOpenTime() {
    showTimePicker(context: context, initialTime: _openTime).then((value) {
      setState(() {
        _wednesdayOpenTime = value!;
      });
    });
  }

  _setThursdayOpenTime() {
    showTimePicker(context: context, initialTime: _openTime).then((value) {
      setState(() {
        _thursdayOpenTime = value!;
      });
    });
  }

  _setFridayOpenTime() {
    showTimePicker(context: context, initialTime: _openTime).then((value) {
      setState(() {
        _fridayOpenTime = value!;
      });
    });
  }

  _setSaturdayOpenTime() {
    showTimePicker(context: context, initialTime: _openTime).then((value) {
      setState(() {
        _saturdayOpenTime = value!;
      });
    });
  }

  _setSundayOpenTime() {
    showTimePicker(context: context, initialTime: _openTime).then((value) {
      setState(() {
        _sundayOpenTime = value!;
      });
    });
  }

// SET CLOSE TIME FUNCTIONS

  _setMondayCloseTime() {
    showTimePicker(context: context, initialTime: _closeTime).then((value) {
      setState(() {
        _mondayCloseTime = value!;
      });
    });
  }

  _setTuesdayCloseTime() {
    showTimePicker(context: context, initialTime: _closeTime).then((value) {
      setState(() {
        _tuesdayCloseTime = value!;
      });
    });
  }

  _setWednesdayCloseTime() {
    showTimePicker(context: context, initialTime: _closeTime).then((value) {
      setState(() {
        _wednesdayCloseTime = value!;
      });
    });
  }

  _setThursdayCloseTime() {
    showTimePicker(context: context, initialTime: _closeTime).then((value) {
      setState(() {
        _thursdayCloseTime = value!;
      });
    });
  }

  _setFridayCloseTime() {
    showTimePicker(context: context, initialTime: _closeTime).then((value) {
      setState(() {
        _fridayCloseTime = value!;
      });
    });
  }

  _setSaturdayCloseTime() {
    showTimePicker(context: context, initialTime: _closeTime).then((value) {
      setState(() {
        _saturdayCloseTime = value!;
      });
    });
  }

  _setSundayCloseTime() {
    showTimePicker(context: context, initialTime: _closeTime).then((value) {
      setState(() {
        _sundayCloseTime = value!;
      });
    });
  }

  bool isMonday = false;
  bool isTuesday = false;
  bool isWednesday = false;
  bool isThursday = false;
  bool isFriday = false;
  bool isSaturday = false;
  bool isSunday = false;

  onMondaySwitch(value) {
    setState(() {
      isMonday = value;
    });
  }

  onTuesdaySwitch(value) {
    setState(() {
      isTuesday = value;
    });
  }

  onWednesdaySwitch(value) {
    setState(() {
      isWednesday = value;
    });
  }

  onThursdaySwitch(value) {
    setState(() {
      isThursday = value;
    });
  }

  onFridaySwitch(value) {
    setState(() {
      isFriday = value;
    });
  }

  onSaturdaySwitch(value) {
    setState(() {
      isSaturday = value;
    });
  }

  onSundaySwitch(value) {
    setState(() {
      isSunday = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildSwitchDay(
                    "Lundi",
                    isMonday,
                    onMondaySwitch,
                    context,
                    _mondayOpenTime,
                    _mondayCloseTime,
                    _setMondayOpenTime,
                    _setMondayCloseTime),
                _buildSwitchDay(
                    "Mardi",
                    isTuesday,
                    onTuesdaySwitch,
                    context,
                    _tuesdayOpenTime,
                    _tuesdayCloseTime,
                    _setTuesdayOpenTime,
                    _setTuesdayCloseTime),
                _buildSwitchDay(
                    "Mercredi",
                    isWednesday,
                    onWednesdaySwitch,
                    context,
                    _wednesdayOpenTime,
                    _wednesdayCloseTime,
                    _setWednesdayOpenTime,
                    _setWednesdayCloseTime),
                _buildSwitchDay(
                    "Jeudi",
                    isThursday,
                    onThursdaySwitch,
                    context,
                    _thursdayOpenTime,
                    _thursdayCloseTime,
                    _setThursdayOpenTime,
                    _setThursdayCloseTime),
                _buildSwitchDay(
                    "Vendredi",
                    isFriday,
                    onFridaySwitch,
                    context,
                    _fridayOpenTime,
                    _fridayCloseTime,
                    _setFridayOpenTime,
                    _setFridayCloseTime),
                _buildSwitchDay(
                    "Samedi",
                    isSaturday,
                    onSaturdaySwitch,
                    context,
                    _saturdayOpenTime,
                    _saturdayCloseTime,
                    _setSaturdayOpenTime,
                    _setSaturdayCloseTime),
                _buildSwitchDay(
                    "Dimanche",
                    isSunday,
                    onSundaySwitch,
                    context,
                    _sundayOpenTime,
                    _sundayCloseTime,
                    _setSundayOpenTime,
                    _setSundayCloseTime),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildSwitchDay(
      String day,
      bool isDay,
      Function switchDay,
      BuildContext _,
      TimeOfDay openTime,
      TimeOfDay closeTime,
      Function setOpenTime,
      Function setCloseTime) {
    return Padding(
      padding: const EdgeInsets.only(right: 10, bottom: 25, left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CupertinoSwitch(
            activeColor: Colors.orange,
            value: isDay,
            onChanged: (value) => switchDay(value),
          ),
          const SizedBox(
            width: 5,
          ),
          Expanded(
              child: Text(
            day,
            style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          )),
          const SizedBox(
            width: 10,
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () => setOpenTime(),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 17),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10)),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "De:     ",
                            style: TextStyle(color: Colors.grey.shade400)),
                        TextSpan(
                          text: openTime.format(context).toString(),
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              GestureDetector(
                onTap: () => setCloseTime(),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 13, vertical: 17),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(10)),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "A     ",
                            style: TextStyle(color: Colors.grey.shade400)),
                        TextSpan(
                            text: closeTime.format(context).toString(),
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500))
                      ],
                    ),
                  ),
                ),
              ),
              // SizedBox(
              //   width: 10,
              // )
            ],
          )
        ],
      ),
    );
  }
}
