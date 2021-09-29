pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract CausasBeneficas {
    
    struct Causa{
        uint id;
        string name;
        uint precio_objetivo;
        uint cantidad_recaudado;
    }

    uint cantidad_causas = 0;
    
    mapping(string => Causa) causas;

    function NuevaCausa(string memory _n, uint _precio_obj) public payable{
        cantidad_causas = cantidad_causas++;
        // Causa memory causa = Causa(cantidad_causas, _n, _precio_obj, 0);
        causas[_n] = Causa(cantidad_causas, _n, _precio_obj, 0);
    }

    // func nos devuelve true en caso de que podamos donar a una causa
    function ObjetivoCumplido(string memory _n, uint _donar) private view returns(bool){
        Causa memory causaObj = causas[_n];
        if (causaObj.precio_objetivo >= (_donar + causaObj.cantidad_recaudado)){
            return true;
        }
        return false;
    }

    // func que nos permite donar a una causa
    function Donar(string memory _nombre, uint _cantidad) public returns(bool){
        
        if(ObjetivoCumplido(_nombre, _cantidad)){
            causas[_nombre].cantidad_recaudado = causas[_nombre].cantidad_recaudado + _cantidad;
            return true;
        }
        return false;
    }

    // func nos dice si hemos llegado al precio objetivo
    function ComprobarCausa(string memory _n) public view returns(bool, uint){
        Causa memory causa = causas[_n];
        if (causa.cantidad_recaudado >= causa.precio_objetivo){
            return (true, causa.cantidad_recaudado);
        }
        return (false, causa.cantidad_recaudado);
    }

}
