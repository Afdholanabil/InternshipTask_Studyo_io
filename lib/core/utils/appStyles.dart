import 'dart:math';

import 'package:flutter/material.dart';
import 'package:internship_task_studyoio/core/utils/sizeConfig.dart';

const bgColor = Color.fromARGB(255, 19, 15, 38);
const green = Color.fromARGB(255, 69, 170, 67);
const putih = Color.fromARGB(255, 249, 250, 251);
const abu1 = Color.fromARGB(255, 218, 215, 205);
const abu2 = Color.fromARGB(255, 107, 114, 128);
const abu3 = Color.fromARGB(255, 218, 218, 218);
const oren = Color.fromARGB(255, 228, 174, 69);

const biru = Color.fromARGB(255, 28, 100, 242);
const hitam1 = Color.fromARGB(255, 31, 42, 55);
const hitam2 = Color.fromARGB(255, 55, 65, 81);

const red1 = Color(0xffe02424);
const redallert = Color(0xffFF0000);
const green2 = Color(0xff128C7E);
const grey1 = Color(0xffD9D9D9);
final grey2 = Colors.grey.shade200;
const grey3 = Color(0xffD1D5DB);
const grey4 = Color(0xff6B7280);
const black = Colors.black;
const black2 = Color.fromARGB(255, 107, 114, 128);
const black3 = Color.fromARGB(255, 51, 51, 51);
const orange1 = Color(0xffF33C04);
const orange2 = Color(0xffFDE8E8);
const white = Colors.white;

const _chars = 'AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
Random _rnd = Random();

String getRandomString(int length) => String.fromCharCodes(Iterable.generate(
    length, (_) => _chars.codeUnitAt(_rnd.nextInt(_chars.length))));

final paddingHorozontal1 = SizeConfig.blockSizeHorizontal! * 2;
final paddingHorozontal2 = SizeConfig.blockSizeHorizontal! * 4;
final paddingHorozontal3 = SizeConfig.blockSizeHorizontal! * 6;
final paddingHorozontal3_5 = SizeConfig.blockSizeHorizontal! * 8;
final paddingHorozontal4 = SizeConfig.blockSizeHorizontal! * 10;
final paddingHorozontal5 = SizeConfig.blockSizeHorizontal! * 12;
final paddingHorozontal6 = SizeConfig.blockSizeHorizontal! * 24;
final paddingHorozontal7 = SizeConfig.blockSizeHorizontal! * 28;
final paddingHorozontal8 = SizeConfig.blockSizeHorizontal! * 36;
final paddingVertical1 = SizeConfig.blockSizeVertical! * 2;
final paddingVertical2 = SizeConfig.blockSizeVertical! * 4;
final paddingVertical3 = SizeConfig.blockSizeVertical! * 6;
final paddingVertical4 = SizeConfig.blockSizeVertical! * 10;
final paddingVertical5 = SizeConfig.blockSizeVertical! * 12;
final paddingVertical6 = SizeConfig.blockSizeVertical! * 20;