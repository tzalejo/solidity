pragma solidity >=0.4.4 <0.7.0;

contract Estructuras{

    // Cliente de una pagina web de pago
    struct Cliente{
        uint id;
        string name;
        string dni;
        string mail;
        uint phone_number;
        uint credit_number;
        uint secret_number;
    }
    // declaramos una variable de tipo cliente
    Cliente  cliente_str = Cliente(1,"Ale", "123456","tzalejo@gmail.com", 123456, 126, 11 );

    // amazon 
    struct Producto{
        string nombre;
        uint precio;
    }
    Producto movil = Producto('samsung', 300);

    // proyecto cooperativo de ong
    struct ONG{
        address ong;
        string nombre;
    }
    ONG caritas = ONG(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4, 'Caritas');

    struct Causa{
        uint id;
        string nombre;
        uint precio_objetivo;
    }

    Causa medicamentos = Causa(1, "medicamentos", 1000);

}
