contract main {




// =====================  Runtime code  =====================


#
#  - recycle(uint256 arg1, address arg2)
#
address governanceAddress;
uint256 stor1;
mapping of struct stor2;
mapping of uint256 stor3;

function governance() payable {
    return governanceAddress
}

function _fallback() payable {
    revert
}

function isExpired(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < 10000:
        revert with 0, 'AirdropController: invalid id'
    if stor1 <= arg1:
        revert with 0, 'AirdropController: invalid id'
    return (block.timestamp > stor2[arg1].field_1280)
}

function isAllClaimed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < 10000:
        revert with 0, 'AirdropController: invalid id'
    if stor1 <= arg1:
        revert with 0, 'AirdropController: invalid id'
    return (stor2[arg1].field_2048 == stor2[arg1].field_1024)
}

function isClaimed(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 < 10000:
        revert with 0, 'AirdropController: invalid id'
    if stor1 <= arg1:
        revert with 0, 'AirdropController: invalid id'
    return (1 << uint8(arg2) and stor2[arg1][6][Mask(248, 8, arg2)].field_0 == 1 << uint8(arg2))
}

function getUnclaimed(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 < 10000:
        revert with 0, 'AirdropController: invalid id'
    if stor1 <= arg1:
        revert with 0, 'AirdropController: invalid id'
    if stor2[arg1].field_768 < stor2[arg1].field_1792:
        revert with 0, 17
    return (stor2[arg1].field_768 - stor2[arg1].field_1792)
}

function availableBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor3[address(arg1)]:
        revert with 0, 17
    return (ext_call.return_data[0] - stor3[address(arg1)])
}

function create(address arg1, bytes32 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    if governanceAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AirdropController: not governance'
    if arg3 <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AirdropController: deadline is expired.'
    if arg4 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AirdropController: invalid amount'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < stor3[address(arg1)]:
        revert with 0, 17
    if ext_call.return_data[0] - stor3[address(arg1)] < arg4:
        revert with 0, 'AirdropController: insufficient available balance'
    if stor1 == -1:
        revert with 0, 17
    stor1++
    stor2[stor1].field_256 = arg1
    stor2[stor1].field_512 = arg2
    stor2[stor1].field_1280 = arg3
    stor2[stor1].field_768 = arg4
    stor2[stor1].field_1024 = arg5
    if stor3[address(arg1)] > !arg4:
        revert with 0, 17
    stor3[address(arg1)] += arg4
    emit Created(stor1, arg2, arg3, arg4, arg5, arg1);
    return stor1
}

function claim(uint256 arg1, uint256 arg2, address arg3, uint256 arg4, bytes32[] arg5) payable {
    require calldata.size - 4 >= 160
    require arg3 == arg3
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + (32 * arg5.length) + 36 <= calldata.size
    if arg1 < 10000:
        revert with 0, 'AirdropController: invalid id'
    if stor1 <= arg1:
        revert with 0, 'AirdropController: invalid id'
    if block.timestamp > stor2[arg1].field_1280:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AirdropController: already expired.'
    if 1 << uint8(arg2) and stor2[arg1][6][Mask(248, 8, arg2)].field_0 == 1 << uint8(arg2):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'AirdropController: already claimed.'
    mem[0] = arg1
    mem[32] = 2
    mem[128] = arg2
    mem[160] = address(arg3)
    mem[180] = arg4
    mem[96] = 84
    mem[64] = (32 * arg5.length) + 244
    mem[212] = arg5.length
    mem[244 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + 244] = 0
    idx = 0
    s = 0
    while idx < arg5.length:
        if idx >= mem[212]:
            revert with 0, 50
        _119 = mem[(32 * idx) + 244]
        if s + sha3(mem[128 len 84]) > mem[(32 * idx) + 244]:
            mem[mem[64] + 32] = mem[(32 * idx) + 244]
            mem[mem[64] + 64] = s + sha3(mem[128 len 84])
            _122 = mem[64]
            mem[mem[64]] = 64
            mem[64] = mem[64] + 96
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = sha3(mem[_122 + 32 len mem[_122]])
            continue 
        mem[mem[64] + 32] = s + sha3(mem[128 len 84])
        mem[mem[64] + 64] = _119
        _126 = mem[64]
        mem[mem[64]] = 64
        mem[64] = mem[64] + 96
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        s = sha3(mem[_126 + 32 len mem[_126]])
        continue 
    if stor2[arg1].field_512 != s:
        revert with 0, 'AirdropController: invalid proof.'
    mem[0] = arg2 / 256
    mem[32] = sha3(arg1, 2) + 6
    stor2[arg1][6][Mask(248, 8, arg2)].field_0 = 1
    if stor2[arg1].field_2048 > -2:
        revert with 0, 17
    stor2[arg1].field_2048++
    if stor2[arg1].field_1792 > !arg4:
        revert with 0, 17
    stor2[arg1].field_1792 += arg4
    _131 = mem[64]
    mem[mem[64] + 36] = arg3
    mem[mem[64] + 68] = arg4
    _132 = mem[64]
    mem[mem[64]] = 68
    mem[mem[64] + 32 len 4] = transfer(address rg1, uint256 rg2)
    mem[64] = mem[64] + 164
    mem[_131 + 100] = 32
    mem[_131 + 132] = 'SafeERC20: low-level call failed'
    if not ext_code.size(stor2[arg1].field_256):
        revert with 0, 'Address: call to non-contract'
    _137 = mem[_132]
    mem[_131 + 164 len ceil32(mem[_132])] = mem[_132 + 32 len ceil32(mem[_132])]
    if ceil32(_137) > _137:
        mem[_131 + _137 + 164] = 0
    call stor2[arg1].field_256 with:
         gas gas_remaining wei
        args mem[_131 + 168 len _137 - 4]
    if not return_data.size:
        if not ext_call.success:
            if mem[96]:
                revert with memory
                  from 128
                   len mem[96]
            revert with 0, 'SafeERC20: low-level call failed'
        if mem[96]:
            require mem[96] >= 32
            require mem[128] == bool(mem[128])
            if not mem[128]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    else:
        mem[_131 + 196 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not ext_call.success:
            if return_data.size:
                revert with ext_call.return_data[0 len return_data.size]
            revert with 0, 'SafeERC20: low-level call failed'
        if return_data.size:
            require return_data.size >= 32
            require mem[_131 + 196] == bool(mem[_131 + 196])
            if not mem[_131 + 196]:
                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
    if stor3[stor2[arg1].field_256] < arg4:
        revert with 0, 17
    stor3[stor2[arg1].field_256] -= arg4
    emit Claimed(arg1, arg4, arg2, arg3);
}



}
