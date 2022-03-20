contract main {




// =====================  Runtime code  =====================


mapping of struct releaseTime;

function releaseTime(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    return releaseTime[address(arg1)][arg2].field_768
}

function sub_a5d09708(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    return releaseTime[address(arg1)][arg2].field_512
}

function _fallback() payable {
    revert
}

function onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    return 0x150b7a0200000000000000000000000000000000000000000000000000000000
}

function release(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if block.timestamp < releaseTime[address(arg1)][arg2].field_768:
        revert with 0, 'ERC721Timelock: current time is before release time'
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args this.address, releaseTime[address(arg1)][arg2].field_512, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x913b1c84: arg2, releaseTime[address(arg1)][arg2].field_512, releaseTime[address(arg1)][arg2].field_768, arg1
}

function lock(address arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    if block.timestamp >= arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC721Timelock: release time is before current time'
    require ext_code.size(arg1)
    call arg1.safeTransferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    releaseTime[address(arg1)][arg2].field_0 = arg1
    releaseTime[address(arg1)][arg2].field_256 = arg2
    releaseTime[address(arg1)][arg2].field_512 = msg.sender
    releaseTime[address(arg1)][arg2].field_768 = arg3
    emit 0x457c0f7f: arg2, msg.sender, arg3, arg1
}



}
