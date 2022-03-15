contract main {




// =====================  Runtime code  =====================


address msgSenderAddress;
uint256 stor0;
address txOriginAddress;
uint256 stor1;
address sub_674df712Address;
uint256 value;
uint256 totalCount;

function totalCount() payable {
    return totalCount
}

function value() payable {
    return value
}

function sub_674df712(?) payable {
    return sub_674df712Address
}

function msgSender() payable {
    return address(msgSenderAddress)
}

function txOrigin() payable {
    return address(txOriginAddress)
}

function _fallback() payable {
    revert
}

function dumbSetValue(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    value = arg1
}

function sub_9faa1de3(?) payable {
    require calldata.size - 4 >= 32
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    uint256(stor1) = tx.origin or Mask(96, 160, uint256(stor1))
    value = arg1
    if totalCount == -1:
        revert with 0, 17
    totalCount++
}

function setValue(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    uint256(stor1) = tx.origin or Mask(96, 160, uint256(stor1))
    require ext_code.size(msg.sender)
    staticcall msg.sender.xDomainMessageSender() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_674df712Address = ext_call.return_data[12 len 20]
    value = arg1
    if totalCount == -1:
        revert with 0, 17
    totalCount++
}



}
