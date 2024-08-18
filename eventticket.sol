// SPDX-License-Identifier:MIT
pragma solidity >=0.7.0 <0.9.0;

contract ticket{
    uint256  numberofticket;
    uint256  ticketprice;
    uint256  totalamount;
    uint256  startat;
    uint256  endat;
    uint256  timerange;
    uint256  massage;

    constructor(uint256 _ticketprice){
        ticketprice=_ticketprice;
        startat=block.timestamp;
        endat=block.timestamp +7 days;
        timerange=(endat-startat) /60/60/24;


    }


    function taketicket(uint256 _value) public returns(uint256 totalid){
numberofticket++;
uint256 finalv=ticketprice*_value;
totalamount +=finalv;
totalid=numberofticket;
return totalid;
    } 

    function gettotal()public view returns (uint256){
        return totalamount;
    }


}