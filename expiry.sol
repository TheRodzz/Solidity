pragma solidity ^0.8.7;

contract expire {

    uint deployedOn;
    uint duration;

    // deployedOn represents the time at which the contract was deployed
    // deployedOn + duration represents the time when contract should expire
    // this duration has been hardcoded for the purpose of this demonstration
    constructor(){
        deployedOn = block.timestamp;
        duration = 1 minutes;
    }

    // event that is emitted when the contract expires
    event expired();
   //event that is emitted if contract not expired
    event notExpired();


    // check expiry function checks if the expiry time has passed
    function checkExpiry()public {
        if(block.timestamp < deployedOn+duration){
            emit notExpired();
        }
        else emit expired();
    }  
}
