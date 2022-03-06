// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

/**
 * @dev Contract module which provides a basic access control mechanism, where
 * there is an account (an owner) that can be granted exclusive access to
 * specific functions.
 *
 * This ownership interface matches OZ's ownable interface.
 *
 */
abstract contract OwnableSkeleton {
    event OwnershipTransferred(
        address indexed previousOwner,
        address indexed newOwner
    );

    address private _owner;

    /**
     * @dev Returns the address of the current owner.
     */
    function owner() external view returns (address) {
        return _owner;
    }

    function _setOwner(address newAddress) internal {
        emit OwnershipTransferred(_owner, newAddress);
        _owner = newAddress;
    }
}