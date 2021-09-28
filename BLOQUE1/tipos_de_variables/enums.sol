// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.4 <0.7.0;


contract Enumaracion{
    //enumaracion de interruptor
    enum estado {ON, OFF}
    
    //variable de tipo enum
    estado state;
    
    //modificar 
    function encender() public {
        state = estado.ON;
    }
    
    function fijarEstado(uint _k) public {
        state = estado(_k);
    }
    
    function MiEstado() public view returns(estado){
        return state;
    }
    
    function apagar() public {
        state = estado.OFF;
    }
    
    // enumeracion de direcciones
    enum direcciones {ARRIBA, ABAJO, DERECHA, IZQUIERDA}
    
    // declaracion de direcciones(enum)
    direcciones miDireccion = direcciones.DERECHA;
    
    function arriba() public {
        miDireccion = direcciones.ARRIBA;
    }
    
    function abajo() public {
        miDireccion = direcciones.ABAJO;
    }
    
    function derecha() public {
        miDireccion = direcciones.DERECHA;
    }
    
    function izquierda() public {
        miDireccion = direcciones.IZQUIERDA;
    }
    
    function fijarDirecciones(uint _k) public {
        miDireccion = direcciones(_k);
    }
    
    function Direcciones() public view returns(direcciones){
        return miDireccion;
    }
    
}
