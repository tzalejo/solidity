pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Modificadores{
    // modificador public
    uint public mi_entero = 45;
    string public mi_string = "Alejandro";
    address public owner;

    constructor() public{
        owner = msg.sender;
    }


    //modificador private
    uint private mi_entero_privado = 10;
    bool private flag = true;
    
    function test(uint _k) public {
        mi_entero_privado = _k;
    }


    // modificar internal solo puede ser llamada internamente
    bytes32 internal hash = keccak456(abi.encodePacked("hola hash"));
    address internal direccion = 0x5B38Da6a701c568545dCfcb03FcB875f56beddC4;
    

}
