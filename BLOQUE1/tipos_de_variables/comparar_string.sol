pragma solidity >=0.4.4 <0.7.0;
pragma experimental ABIEncoderV2;

contract CompararString{
    function Comparar(string memory _j, string memory _i)public view returns(bool){
        bytes32 hash_i = keccak256(abi.encodePacked(_i));
        bytes32 hash_j = keccak256(abi.encodePacked(_j));

        if(hash_j == hash_i){
            return true;
        }
        return false;
    }
}
    
