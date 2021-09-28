// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.4 <0.7.0;


contract Tiempo{
  // unidades de Tiempo
  uint public tiempo_actual = now;  
  uint public un_minuto = 1 minutes; // devuelve los segund q tien un minuto.
  uint public dos_horas = 2 hours;
  uint public cincuenta_dias = 50 days;
  uint public una_semana = 1 weeks; // devuelve los segundo que tiene una semana.
  
  function MasSegundos() public view returns(uint){
      return now + 50 seconds;
  }
  
  function MasHoras() public view returns(uint){
      return now + 1 hours;
  }
  
  function MasDias() public view returns(uint){
      return now + 1  days;
  }
  
  function MasSemana() public view returns(uint){
      return now +1 weeks;
  }
  
}
