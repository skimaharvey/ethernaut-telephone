pragma solidity ^0.6.0;

interface ITelephone {
    function changeOwner(address) external;
}

contract Proxy {
    function callTelephone(address telephoneContract, address initialSender)
        public
    {
        ITelephone(telephoneContract).changeOwner(initialSender);
    }
}
