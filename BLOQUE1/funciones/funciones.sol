pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Funciones{
    // añadir dentro de un array de direcciones, la direccion de la persona que llame a la funcion.
    address[] direcciones;

    function nuevaFuncion() public{
        direcciones.push(msg.sender);
    }

    // computar el hash de los datos proporcionados como parametro
    bytes32 public hash;

    function hashComputer(string memory _d) public {
        hash = keccak256(_d);
    }

    // declaramos un tipo de datos complejo que es comida
    struct Comida{
        string nombre;
        string ingrediente;
    }

    Comida public hamburguesa;

    function Hambur(string memory _i) public {
        hamburguesa = Comida('hamburguesa', _i);
    }
}
