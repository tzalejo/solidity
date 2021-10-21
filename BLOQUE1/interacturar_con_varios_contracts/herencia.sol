//Especificar la version
pragma solidity >=0.4.4 <0.7.0;

contract Banco {
    
    // structura 
    struct Cliente {
        string nombre;
        address direecion;
        uint dinero;
    }
    
    // mapping
    mapping (string => Cliente) clientes;
    
    // funcion q nos permitea dar alta un clientes
    function nuevoCliente(string memory _nombre) public {
        clientes[_nombre] = Cliente(_nombre, msg.sender, 0);
    }
}

// Usuario herencia de banco
contract Usuario is Banco{
    
    function altaCliente(string memory _nombre) public {
        nuevoCliente(_nombre);
    }    
    
    function ingresarDinero(string memory _nombre, uint _cantidad) public {
        clientes[_nombre].dinero += _cantidad;
    }
    
    function retirarDinero(string memory _nombre , uint _dinero) public returns(bool) {
        
        if(uint(clientes[_nombre].dinero) - uint(_dinero) >= 0){
             clientes[_nombre].dinero -= _dinero;
             return true;
        }
        return false;
    }
    
    function consultarDinero(string memory _nombre) public view returns(uint){
        return clientes[_nombre];
    }
    
}
