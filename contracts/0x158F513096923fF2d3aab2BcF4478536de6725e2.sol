contract main {




// =====================  Runtime code  =====================


#
#  - finalizeDeposit(address arg1, address arg2, address arg3, address arg4, uint256 arg5, bytes arg6)
#
address messengerAddress;

function l1TokenBridge() payable {
    return l1TokenBridgeAddress
}

function messenger() payable {
    return messengerAddress
}

function _fallback() payable {
    revert
}

function withdraw(address arg1, uint256 arg2, uint32 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg3 == arg3
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ext_code.size(arg1)
    call arg1.burn(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.l1Token() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 356 len arg4.length] = arg4[all]
    mem[arg4.length + ceil32(return_data.size) + 356] = 0
    if floor32(ceil32(arg4.length) + 259) > ceil32(arg4.length) + 228:
        mem[ceil32(return_data.size) + (2 * ceil32(arg4.length)) + 716] = 0
    require ext_code.size(messengerAddress)
    call messengerAddress with:
         gas gas_remaining wei
        args l1TokenBridgeAddress, 96, arg3, ceil32(arg4.length) + 228, 0, ext_call.return_data[12 len 20], address(arg1), msg.sender, msg.sender, arg2, 192, arg4.length, arg4[all], mem[ceil32(return_data.size) + arg4.length + 356 len ceil32(arg4.length) - arg4.length], 0, Mask(8 * floor32(ceil32(arg4.length) + 259) + -ceil32(arg4.length) - 232, 0, stor1.field_-(8 * floor32(ceil32(arg4.length) + 259) + -ceil32(arg4.length) - 232) + 160)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + ceil32(arg4.length) + 484 len arg4.length] = arg4[all]
    mem[arg4.length + ceil32(return_data.size) + ceil32(arg4.length) + 484] = 0
    emit WithdrawalInitiated(address rg1, address rg2, address rg3, address rg4, uint256 rg5, bytes rg6):
                             0,
                             Mask(224, 0, msg.sender),
                             arg2,
                             96,
                             arg4.length,
                             arg4[all],
                             mem[ceil32(return_data.size) + ceil32(arg4.length) + arg4.length + 484 len ceil32(arg4.length) - arg4.length],
                             address(ext_call.return_data[0]),
                             arg1,
                             msg.sender,
}

function withdrawTo(address arg1, address arg2, uint256 arg3, uint32 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg4 == arg4
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require ext_code.size(arg1)
    call arg1.burn(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.l1Token() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[ceil32(return_data.size) + 356 len arg5.length] = arg5[all]
    mem[arg5.length + ceil32(return_data.size) + 356] = 0
    if floor32(ceil32(arg5.length) + 259) > ceil32(arg5.length) + 228:
        mem[ceil32(return_data.size) + (2 * ceil32(arg5.length)) + 716] = 0
    require ext_code.size(messengerAddress)
    call messengerAddress with:
         gas gas_remaining wei
        args l1TokenBridgeAddress, 96, arg4, ceil32(arg5.length) + 228, 0, ext_call.return_data[12 len 20], address(arg1), msg.sender, address(arg2), arg3, 192, arg5.length, arg5[all], mem[ceil32(return_data.size) + arg5.length + 356 len ceil32(arg5.length) - arg5.length], 0, Mask(8 * floor32(ceil32(arg5.length) + 259) + -ceil32(arg5.length) - 232, 0, stor1.field_-(8 * floor32(ceil32(arg5.length) + 259) + -ceil32(arg5.length) - 232) + 160)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + ceil32(arg5.length) + 484 len arg5.length] = arg5[all]
    mem[arg5.length + ceil32(return_data.size) + ceil32(arg5.length) + 484] = 0
    emit WithdrawalInitiated(address rg1, address rg2, address rg3, address rg4, uint256 rg5, bytes rg6):
                             0,
                             uint128(arg2) << 96,
                             arg3,
                             96,
                             arg5.length,
                             arg5[all],
                             mem[ceil32(return_data.size) + ceil32(arg5.length) + arg5.length + 484 len ceil32(arg5.length) - arg5.length],
                             address(ext_call.return_data[0]),
                             arg1,
                             msg.sender,
}



}
