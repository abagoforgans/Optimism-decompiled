contract main {




// =====================  Runtime code  =====================


address pEtherAddress;

function pEther() {
    return pEtherAddress
}

function _fallback() payable {
    revert
}

function repayBehalfExplicit(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(arg2)
    call arg2.0x17bfdfbc with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    if msg.value <= ext_call.return_data[0]:
        call arg2.0xe5974619 with:
           value msg.value wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call arg2.0xe5974619 with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
}

function repayBehalf(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(pEtherAddress)
    call pEtherAddress.0x17bfdfbc with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(pEtherAddress)
    if msg.value <= ext_call.return_data[0]:
        call pEtherAddress.0xe5974619 with:
           value msg.value wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        call pEtherAddress.0xe5974619 with:
           value ext_call.return_data[0] wei
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call msg.sender with:
           value msg.value - ext_call.return_data[0] wei
             gas 2300 * is_zero(value) wei
}



}
