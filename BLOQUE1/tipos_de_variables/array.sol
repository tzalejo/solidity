pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2; // para devolver un tipo de datos complejo
contract Arrays{
    // array de enteros de logitud fija 5
    uint[5] public array_enteros = [1,2,3];

    // array de enteros de 32 bits de logitud fija con 7 posiciones
    uint32[7] public array_enteros_32_bits;

    //array de string de logitud fija 15
    string[15] public array_string;

    // array dinamico de enteros
    uint[] public array_dinamicos;

    struct Persona{
        string nombre;
        uint eadd;
    }
    // array dinamico de tipo Persona(complejo)
    Persona [] public array_dinamico_personas;

    function set_array(uint _n) public {
        array_dinamicos.push(_n);
    }

    function set_array_persona(string _nombre, uint _edad) public{
        array_dinamico_personas.push(Persona(_nombre, _edad));
    }
    
} 
