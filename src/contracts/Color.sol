pragma solidity >=0.4.21 <0.9.0;

import "./ERC721Full.sol";

contract Color is ERC721Full  {

  // create array 
  string[] public colors;
  mapping(string => bool) _colorExists;

  constructor () ERC721Full("Color","COLOR") public {
  }

  // E.G color = "#FFFFFF"
  function mint(string memory _color) public {
    // Require unique color
    require(!_colorExists[_color]);
    uint _id = colors.push(_color);
    _mint(msg.sender,_id);
    _colorExists[_color] = true;
    // Color - add it
    // Color te mint function
    // Color - track it 

  }
}
