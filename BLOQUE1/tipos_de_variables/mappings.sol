pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2; // para devolver un tipo de datos complejo
contract Mappings{
    // declarmos un mapping para eligr un numero
    mapping (address => uint) public elegirNumero;

    function ElegirNro(uint _nro) public{
        elegirNumero[msg.sender] = _nro;
    }

    function consultarNro() public view returns(uint){
        return elegirNumero[msg.sender];
    }

    // declaramos un mapping que relaciona el nombre de una persona con su cantidad d dinero
    mapping (string => uint) public cantidadDinero;

    function Dinero(string memory _nombre, uint _cantidad) public {
        cantidadDinero[_nombre] = _cantidad;
    }
 

    function obtenerDinero(string memory _nombre) public view returns(uint){
        return cantidadDinero[_nombre];
    }
    
    // ej de mapping con un tipo de datos complejo

    struct Persona{
        string nombre;
        uint edad;
    }

    mapping (uint => Persona) personas;

    function setPersona(uint _dni, string memory _nombre, uint _edad) public{
        personas[_dni]  = Persona(_nombre, _edad);
    }

    function getPersona(uint _dni) public view returns(Persona memory){
        return personas[_dni];
    }
}
 
