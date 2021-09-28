// indicamos la version
pragma solidity  >=0.4.4 <0.7.0;

contract functiones_globales{
    
    // funcion msg.sender devuelve la direcion 
    function MSgSender() public view returns(address) {
        return msg.sender;
    }
    
    // funcion now 
    function Now() public view returns(uint) {
        return now;
    }
    
    // funcion del bloque bloack.ainbase
    function BlockCoinbase() public view returns(address) {
        return block.coinbase;
    }
    
    // funcion block.difficuty
    function BlockDifficulty() public view returns(uint) {
        return block.difficulty;
    }
    
    // funcion block.number.
    function BlockNumber() public view returns(uint) {
        return block.number;
    }
    
    //funcion byts msg.sig 
    function MsgSig() public view returns(bytes4) {
        return msg.sig;
    }
    
    //function tx.gaspricev
    function txGasPrice() public view returns(uint) {
        return tx.gasprice;
    }
}
