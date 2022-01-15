pragma solidity ^0.6.0;

interface IProxy {
    function callTelephone(address, address) external;
}

contract Originator {
    function callProxy(address _proxy) external {
        IProxy(_proxy).callTelephone(
            0x72151f889CA22b470fF43445D859a0Ae4C2B6b3F,
            msg.sender
        );
    }
}
