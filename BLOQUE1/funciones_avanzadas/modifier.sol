// version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Modificadores{


    // ejemplo que nos comprueba si la direccion de la persona es la del propietario
    address public owner;

    constructor() public {
        owner = msg.sender;
    }

    modifier soloPropietario(){
        require(msg.sender == owner, "No tienes permiso para ejecutar la funcion");
        _;
    }

    function ejemplo() public soloPropietario(){
        // codigo de la fc para el prpipietario del contrato    
    }
    
    //******* */
    
    // ejecutar solo los clientes 
    struct Cliente{
        address direccion;
        string nombre;
    }
    mapping(string => address) clientes;

    function altaCliente(string memory _nombre) public{
        clientes[_nombre] = msg.sender;
    }

    modifier soloClientes(string memory _nombre){
        require(clientes[_nombre]== msg.sender, "No es el cliente");
        _;
    }

    function main(string memory _nombre) public soloClientes(_nombre) {
        // ejecucion del main
    }

}