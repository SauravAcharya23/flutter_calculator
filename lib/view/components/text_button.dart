import 'package:flutter/material.dart';

Widget textbutton( String btnvalue,{required onPressed}){
  return Expanded(
    child: Container(
      margin: const EdgeInsets.only(top: 4,right: 4),
    
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: Colors.white, 
          padding: const EdgeInsets.all(25.0),
          elevation: 4.0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7.0)),
        ),
        onPressed: (() => onPressed(btnvalue)), 
        child: Text(
          btnvalue,
          style: const TextStyle(fontSize: 22, color: Colors.black, fontWeight: FontWeight.w600),
        )
      ),
    )
  );
}