pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Require{
    // funcion que verifica la  contraseña
    function password(string memory _pass) public pure returns(string memory){
        require( keccak256(abi.encodePacked(_pass)) != keccak256(abi.encodePacked("12345")),"Contraseña incorrecta" );
        return "contraseña correcta";
    }

    // 
}

