pragma solidity ^0.6.7;
import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";

contract PriceConsumerV3 {
    AggregatorV3Interface public priceFeed;

    constructor() public {
        priceFeed = AggregatorV3Interface(
            0x5fb1616F78dA7aFC9FF79e0371741a747D2a7F22
        );
    }

    function getLatestPrice() public returns (int) {
        (, int price, , , ) = priceFeed.latestRoundData();
        return price;
    }

    function getDecimals() public view returns (uint8) {
        uint8 decimals = priceFeed.decimals();
        return decimals;
    }
}
