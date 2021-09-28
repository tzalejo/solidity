pragma solidity >=0.4.4 <0.7.0;

contract Operadores{

    //operadores matematicos
    uint a = 32;
    uint b = 4;

    uint public suma = a+b;
        uint public resta = a-b;
        uint public division = a/b;
        uint public multiplicacion = a*b;
        uint public residuo = a%b;
        uint public exponenciacion = a**b;
        
       // comparar enteros y nos devuelve booleanos

       bool public test_1 = a>b;
       bool public test_2 = a<b;
       bool public test_3 = 3==3;
       bool public test_4 = a==b;
       bool public test_5 = a!=b;
       bool public test_6 = a>=b;

       //operadores booleanos
    function divisibilidad(uint _d) public view reutrns(bool){
        uint ultima_cifra = _d%10;
        if((ultima_cifra == 0 || ultima_cifra == 5)){
            return true;
        }
        return false;
    }
}
  
