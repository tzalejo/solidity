pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract hash{
    // cpmputo del hash de un string
    function calcularHash(string memory _cadena) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena));
    }
    // cpmputo del hash de un string, un entero  y una direccion
    function calcularHash_dos(string memory _cadena, uint _k, address _direccion) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena, _k, _direccion));
    }
    // cpmputo del hash de un string, un entero  y una direccion mas otro string que no estan en una variable
    function calcularHash_tres(string memory _cadena, uint _k, address _direccion) public pure returns(bytes32){
        return keccak256(abi.encodePacked(_cadena, _k, _direccion, "hola", uint(2) ));
    }
    
   
}
