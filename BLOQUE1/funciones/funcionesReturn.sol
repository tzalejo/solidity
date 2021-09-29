pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract FuncionesReturns{
    

    // funcion que nos devuela un saludo
    function Saludos() public returns(string){
        return "Hola, como estas";
    }

    // func que devuelve la multiplicacion
    function Multiplicar(uint _a, uint _b) public returns(uint){
        return _a * _b;
    }

    // func q devuelve si es par o no
    function EsPar(uint _a) public returns(bool){
        if (_a%2 == 0){
            return true;
        }
        return false;
    }

    // funcion q nos devuleve el cociente, el residuo de una division y un
    // true si el residuo es 0 o false caso contrario
    function Division(uint _a, uint _b)public returns(uint, uint, bool){
        uint q = _a/_b;
        uint r = _a%_b;
        bool mult = false;
        
        if(r==0){
            mult = true;
        }

        return (q,r,mult);
    }


    // practica para el manejo de los valores devueltos multiples
    function Numeros() public returns(uint, uint, uint, uint, uint, uint){
        return (1,2,3,4,5,6);
    }

    function TodosLosValores() public {
        // declaramos las varibles donde se guardan los valores de returnos
        // de la funcion numeros e asignamos multiples
        (uint _a, uint _b, uint _c, uint _d, uint _e, uint _f) = Numeros();
    }

    function UltimoValor() public {
        (,,,,,uint ultimo) = Numeros();
    }
}
