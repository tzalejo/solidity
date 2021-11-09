pragma solidity >=0.4.4 <0.7.0;

// Definimos una libreria.
library Operaciones {
    
    function division(uint _i, uint _j) public pure returns(uint){
        require(_j>0, "No podemos dividir por cero");
        return _i / _j;
    }

    function multiplicacion(uint _i, uint _j) public pure returns(uint){
        // Porque de este modo no se realiza la multiplicación internamente.
        // Ya sabemos que dará cero, no hace falta que internamente se realice la multiplicación.
        if(_i==0 || _j==0){
            return 0;
        }
        return _i * _j;
    }

}

// importar la libreria import ./Operaciones
contract Calculos {
    using Operaciones for *;

    function calculo(uint _a, uint _b) public pure returns(uint, uint){
        uint q = _a.division(_b);
        uint m = _a.multiplicacion(_b);
        return ( q, m);
    }

}
