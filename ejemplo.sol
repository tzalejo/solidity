pragma solidity >=0.7.0 <0.9.0; // vamos a indicar un rango de version para compilar solidity
import "./ejemplo.sol"; // importamos el archivo..

// declaramos un contrato con el nombre priemrcontrato
contract PrimerContrato{
    
    // En esta variable se encutra la direccion de la persoan que despliega el contrato..
    address owner; 
    
    constructor() public{
        owner = msg.sender; // indicamos la inicializacion de quien despliege el contrato 
    }

    
}
