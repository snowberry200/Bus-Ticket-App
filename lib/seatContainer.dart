// ignore_for_file: unnecessary_const, file_names

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class SeatContainer extends StatefulWidget {
  final String seatState;
  final ValueSetter onTap;
  final int seat;
  final List value;
  final selected = Colors.orange;
  const SeatContainer(
      {Key? key,
      required this.value,
      required this.seatState,
      required this.onTap,
      required this.seat}): super(key: key);

  @override
  State<SeatContainer> createState() => _SeatContainerState();
}

class _SeatContainerState extends State<SeatContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 20,
        height: 30,
        decoration: (BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(6)),
          color: widget.value.contains(widget.seat)
              ? Colors.orangeAccent
              : widget.seatState == 'booked'
                  ? const Color(0xff406B4A)
                  : Colors.teal,
        )),
      ),
      onTap: () {
        if (widget.seatState == 'booked') {
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            behavior: SnackBarBehavior.floating,
            elevation: 30,
            backgroundColor: CupertinoColors.destructiveRed,
            content: const Text(
              'Already Booked! please choose a different seat...',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: CupertinoColors.white),
            ),
          ));
        } else {
          widget.onTap(widget.seat);
        }
      },
    );
  }
}
