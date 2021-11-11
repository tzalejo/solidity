pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Require{
    // funcion que verifica la  contraseña
    function password(string memory _pass) public pure returns(string memory){
        require( keccak256(abi.encodePacked(_pass)) == keccak256(abi.encodePacked("12345")),"Contraseña incorrecta" );
        return "contraseña correcta";
    }

    uint tiempo = 0;
    uint public cartera = 0;
    // funcion que nos permita pagar
    function pagar(uint _cantidad) public returns(uint) {
        require(now > tiempo + 5 seconds, "Aun no puedes pagar");
        tiempo = now;
        cartera = cartera + _cantidad;
        return cartera;
    }

    // funciones con una lista
    string[] nombres;
    function nuevoNombre(string memory _nombre) public {
        for(uint i=0; i<nombres.length; i++){
            require( keccak256(abi.encodePacked(_nombre)) != keccak256(abi.encodePacked(nombres[i])), "Ya esta en la lista" );
        }
        nombres.push(_nombre);
    }
}
