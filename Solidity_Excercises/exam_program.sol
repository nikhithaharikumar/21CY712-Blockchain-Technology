// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 * @custom:dev-run-script ./scripts/deploy_with_ethers.ts
 */
contract firstprogram {

    int256 number;
    string name;
    string department;
    int256 mark1;
    int256 mark2;
    int256 mark3;
    int256 total;
    int256 avg;



    function store(int256 _number,string memory _name,string memory _department,int256 _mark1,int256 _mark2,int256 _mark3) public
    {
        number = _number;
        name = _name;
        department = _department;
        mark1 = _mark1;
        mark2 = _mark2;
        mark3 = _mark3;
           
    }
    function add() public {
        total = mark1 + mark2 + mark3;
        avg = total/3;
    }
        
    
function retrieve() public view returns(int256,string memory,string memory,int256,int256)
{
    return(number,name,department,avg,total);
}
}