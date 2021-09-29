pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;
contract Funciones{
    // añadir dentro de un array de direcciones, la direccion de la persona que llame a la funcion.
    address[] public direcciones;

    function nuevaFuncion() public{
        direcciones.push(msg.sender);
    }
    
        // computar el hash de los datos proporcionados como parametro
    bytes32 public hash;

    function hashComputer(string memory _d) public {
        hash = keccak256(abi.encodePacked(_d));

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
    
    // Declaramos un tipo de estructura, alumno
    struct Alumno{
        string nombre;
        address direccion;
        uint edad;
    }
    
    bytes32  public hash_id_alumno;
    
    function hashIdAlumno(string memory _nombre, address _direccion, uint _edad) private {
        hash_id_alumno = keccak256(abi.encodePacked(_nombre,_direccion, _edad));
    }
    
    // Guardamos con la funcion public dentro de una lista los alumnos.
    Alumno[] public listaAlumno;
    mapping (string => bytes32) alumnos;
    
    function setAlumno(string memory _nombre, uint _edad) public {
        listaAlumno.push(Alumno(_nombre, msg.sender, _edad));
        hashIdAlumno(_nombre, msg.sender, _edad);
        alumnos[_nombre] = hash_id_alumno;
    }
}
