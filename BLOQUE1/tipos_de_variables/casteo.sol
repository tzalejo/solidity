// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.4 <0.7.0;


contract Casteo{
  // unidades de Tiempo
  uint8 entero_8_b = 42;
  uint64 entero_64_b = 60000;
  uint entero_256_b = 1000000;
  int16 entero_16_b = 156;
  int120 entero_120_b =900000;
  int entero = 500000;
  
  // casteo de las variables;
  uint64 public casteo_1 = uint64(entero_8_b);
  uint64 public casteo_2 = uint64(entero_256_b);
  uint8 public casteo_3 = uint8(entero_16_b);
  int public casteo_4 = int(entero_120_b);
  int public casteo_5 = int(entero_256_b);
  
  function convertir(uint8 _k) public pure returns(uint64){
      return uint64(_k);
  }
  
}
