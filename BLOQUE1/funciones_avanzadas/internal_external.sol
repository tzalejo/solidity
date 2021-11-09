pragma solidity >=0.4.4 <0.7.0;

contract Comida {
    struct Plato {
        string nombre;
        string ingredientes;
        uint tiempo;
    }
    // Declaramos un array dinamico de Plato
    Plato [] todoPlatos;
    
    // Relacionamos con un maping el nombre del plato con sus ingredientes
    mapping(string => string) platoIngredientes;

    // Fc que nos permite dar de alta un neuvo plato
    function NuevoPlato(string memory _nombre, string memory _ingredientes, uint _tiempo) internal{
        todoPlatos.push(Plato(_nombre, _ingredientes, _tiempo));
        platoIngredientes[_nombre] = _ingredientes;
    }

    function Ingredientes(string memory _nombre) internal view returns(string memory){
        return platoIngredientes[_nombre];
    }

}

contract Sandwich is Comida {
    function sandwich(string memory _ingredientes , uint _tiempo) external{
        NuevoPlato('Lomito', _ingredientes, _tiempo);
    }

    function papas(string memory _ingredientes , uint _tiempo) external{
        NuevoPlato('Papafritas', _ingredientes, _tiempo);
    }

    function verIngredientes(string memory _nombreComida) external view returns(string memory){
        return Ingredientes(_nombreComida);
    }
}