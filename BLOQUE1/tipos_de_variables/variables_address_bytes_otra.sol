// indcar la version
pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract variables_string_address_otra{
    
    //variables de tipo string (cadena de texto)
    string mi_string;
    string public mi_string_saludos = "Hola ale";
    string public mi_string_vacio = "";
    
    //variables booleanas
    bool mi_bolean;
    bool public mi_bolean_inicializada = true;
    
    // variables de tipo bytes, hay que especificar el nro
    bytes32 mi_bytes;
    bytes4 mi_bytes_4;
    
    string public nombre ="alejandro";
    bytes32 public hash = keccak256(abi.encodePacked(nombre));
    bytes4 public identificador;
    
    function ejemploBytes4() public {
        identificador = msg.sig;
    }
    
    //variables address
    address mi_address;
    address public mi_address_local_1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public mi_address_local_2 = 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db;
    
}
