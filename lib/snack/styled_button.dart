import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xFFEA71C5).withValues(alpha: 0.5),
              spreadRadius: 0,
              blurRadius: 30,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
            colors: [Color(0xFFE970C4), Color(0xFFF69EA3)],
          ),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white24),
          //bocolor: Colors.white),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ));
  }
}

class StyledButtonDetail extends StatelessWidget {
  const StyledButtonDetail({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xFFEA71C5).withValues(alpha: 0.5),
              spreadRadius: 0,
              blurRadius: 30,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
            colors: [Color(0xFFE970C4), Color(0xFFF69EA3)],
          ),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white24),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Center(
            child: Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ));
  }
}

class StyledButtonHome extends StatelessWidget {
  const StyledButtonHome({required this.text, super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xFFEA71C5).withValues(alpha: 0.5),
              spreadRadius: 0,
              blurRadius: 30,
              offset: Offset(0, 0), // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
            colors: [Color(0xFFE98DE5), Color(0xFFBC8CE2)],
          ),
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.white24),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: -1,
            ),
          ),
        ));
  }
}
