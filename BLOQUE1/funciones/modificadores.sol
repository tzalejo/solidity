pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract Modificadores{
    // modificadro view para acceder a los datos
    string[] lista_alumnos;

    function SetAlumnos(string memory _a)public {
        lista_alumnos.push(_a);
    }

    function GetAlumno(uint _p) public view returns(string memory){
        return lista_alumnos[_p];
    }

    // otro ejemplo con view 
    uint valor = 10;
    function SumarValor(uint _a) public view returns(uint){
        return valor + _a;
    }

    // modificador pure

    function Exponente(uint _a , uint _b) public pure returns(uint){
        return _a**_b;
    } 

    // modificador payable
    struct Cartera{
        string nombre_persona;
        address direccion;
        uint dinero;
    }
    mapping(string => Cartera)  DineroCartera;
    
    function Pagar(string memory _nombre, uint _cantidad) public payable{
        Cartera memory mi_cartera;
        mi_cartera = Cartera(_nombre, msg.sender, _cantidad);
        DineroCartera[msg.sender] = mi_cartera;
    }

    function Saldo()public view returns(Cartera memory){
        return DineroCartera[msg.sender];
    }
} 
