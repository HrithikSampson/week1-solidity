//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0 <0.9.0;
interface HelloWorldInterface {
    function helloworld() external view returns (string memory);
    function setText(string memory newText) external;
}

contract HelloWorld is HelloWorldInterface {

    uint storedData; // State Variable
    string private text = "Hello World";
    constructor(string memory myInitialText) {
        text = "Something";
        text = myInitialText;
    }

    function helloworld() public view returns (string memory) {
        return text;
    }
    function setText(string memory newText) public {
        text = newText;
    }
    fallback() external {
        text = "Wrong Call!";
    }
    receive() external payable {
        /* receive : fallback only for money receive exists */
        text = "Thank You!";
    }
}