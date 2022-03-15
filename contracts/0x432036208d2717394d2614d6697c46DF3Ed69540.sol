contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address[] arg1, uint8[] arg2, string arg3, string arg4, uint256 arg5, uint256 arg6, uint256 arg7, address arg8)
#
address owner;
uint8 stor101;
uint256 stor151;
uint256 stor201;
uint256 stor202;
uint256 stor203;
uint256 stor204;
uint256 stor205;
uint256 stor206;
address stor207;
array of address token;
array of uint256 tokenBalance;
mapping of uint8 tokenIndex;

function paused() payable {
    return bool(stor101)
}

function getTokenIndex(address arg1) payable {
    require calldata.size - 4 >= 32
    if tokenIndex[address(arg1)] >= token.length:
        revert with 0, 'Out of range'
    if token[stor211[address(arg1)]] != arg1:
        revert with 0, 'Token does not exist'
    return tokenIndex[address(arg1)]
}

function getToken(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= token.length:
        revert with 0, 'Out of range'
    return token[arg1]
}

function owner() payable {
    return owner
}

function getTokenBalance(uint8 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= token.length:
        revert with 0, 'Index out of range'
    require arg1 < tokenBalance.length
    return tokenBalance[arg1]
}

function _fallback() payable {
    revert
}

function swapStorage() payable {
    return stor201, stor202, stor203, stor204, stor205, stor206, stor207
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor101:
        revert with 0, 'Pausable: paused'
    stor101 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor101:
        revert with 0, 'Pausable: not paused'
    stor101 = 0
    emit Unpaused(msg.sender);
}

function getA() payable {
    require ext_code.size(0x84a420459cd31c3c34583f67e0f0fb191067d32f)
    delegate 0x84a420459cd31c3c34583f67e0f0fb191067d32f.0xb0a14cfc with:
         gas gas_remaining wei
        args 201
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getAPrecise() payable {
    require ext_code.size(0x84a420459cd31c3c34583f67e0f0fb191067d32f)
    delegate 0x84a420459cd31c3c34583f67e0f0fb191067d32f.0xc9b64dcb with:
         gas gas_remaining wei
        args 201
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function getVirtualPrice() payable {
    require ext_code.size(0xf07d1c752fab503e47fef309bf14fbdd3e867089)
    delegate 0xf07d1c752fab503e47fef309bf14fbdd3e867089.0x71906c2c with:
         gas gas_remaining wei
        args 201
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function stopRampA() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x84a420459cd31c3c34583f67e0f0fb191067d32f)
    delegate 0x84a420459cd31c3c34583f67e0f0fb191067d32f.0xf14e211e with:
         gas gas_remaining wei
        args 201
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawAdminFees() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xf07d1c752fab503e47fef309bf14fbdd3e867089)
    delegate 0xf07d1c752fab503e47fef309bf14fbdd3e867089.0x24c5c751 with:
         gas gas_remaining wei
        args 201, owner
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function getAdminBalance(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0xf07d1c752fab503e47fef309bf14fbdd3e867089)
    delegate 0xf07d1c752fab503e47fef309bf14fbdd3e867089.0x7d048160 with:
         gas gas_remaining wei
        args 201, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function setAdminFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xf07d1c752fab503e47fef309bf14fbdd3e867089)
    delegate 0xf07d1c752fab503e47fef309bf14fbdd3e867089.'pFrv' with:
         gas gas_remaining wei
        args 201, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSwapFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0xf07d1c752fab503e47fef309bf14fbdd3e867089)
    delegate 0xf07d1c752fab503e47fef309bf14fbdd3e867089.0x467e186c with:
         gas gas_remaining wei
        args 201, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function rampA(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(0x84a420459cd31c3c34583f67e0f0fb191067d32f)
    delegate 0x84a420459cd31c3c34583f67e0f0fb191067d32f.0x58fdd79b with:
         gas gas_remaining wei
        args 201, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
}

function calculateRemoveLiquidityOneToken(uint256 arg1, uint8 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(0xf07d1c752fab503e47fef309bf14fbdd3e867089)
    delegate 0xf07d1c752fab503e47fef309bf14fbdd3e867089.0xe0692742 with:
         gas gas_remaining wei
        args 201, arg1, arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function calculateSwap(uint8 arg1, uint8 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ext_code.size(0xf07d1c752fab503e47fef309bf14fbdd3e867089)
    delegate 0xf07d1c752fab503e47fef309bf14fbdd3e867089.'K#`<' with:
         gas gas_remaining wei
        args Mask(224, 0, 'K#`<'), 201, arg1 << 248, arg2 << 248, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function calculateTokenAmount(uint256[] arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require ext_code.size(0xf07d1c752fab503e47fef309bf14fbdd3e867089)
    delegate 0xf07d1c752fab503e47fef309bf14fbdd3e867089.0x834b4910 with:
         gas gas_remaining wei
        args 0, 201, 96, arg2, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return delegate.return_data[0]
}

function removeLiquidityOneToken(uint256 arg1, uint8 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if stor101:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg4:
        revert with 0, 'Deadline not met'
    require ext_code.size(0xf07d1c752fab503e47fef309bf14fbdd3e867089)
    delegate 0xf07d1c752fab503e47fef309bf14fbdd3e867089.0xe7a4db81 with:
         gas gas_remaining wei
        args 0, 201, arg1, arg2 << 248, arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor151 = 1
    return delegate.return_data[0]
}

function swap(uint8 arg1, uint8 arg2, uint256 arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if stor101:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg5:
        revert with 0, 'Deadline not met'
    require ext_code.size(0xf07d1c752fab503e47fef309bf14fbdd3e867089)
    delegate 0xf07d1c752fab503e47fef309bf14fbdd3e867089.0xa5397b22 with:
         gas gas_remaining wei
        args 0, 201, arg1 << 248, arg2 << 248, arg3, arg4
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor151 = 1
    return delegate.return_data[0]
}

function addLiquidity(uint256[] arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if stor101:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg3:
        revert with 0, 'Deadline not met'
    require ext_code.size(0xf07d1c752fab503e47fef309bf14fbdd3e867089)
    delegate 0xf07d1c752fab503e47fef309bf14fbdd3e867089.0x40370edf with:
         gas gas_remaining wei
        args 0, 201, 96, arg2, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor151 = 1
    return delegate.return_data[0]
}

function removeLiquidityImbalance(uint256[] arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if stor101:
        revert with 0, 'Pausable: paused'
    if block.timestamp > arg3:
        revert with 0, 'Deadline not met'
    require ext_code.size(0xf07d1c752fab503e47fef309bf14fbdd3e867089)
    delegate 0xf07d1c752fab503e47fef309bf14fbdd3e867089.0x41b91c26 with:
         gas gas_remaining wei
        args 0, 201, 96, arg2, arg1.length, call.data[arg1 + 36 len floor32(arg1.length)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    stor151 = 1
    return delegate.return_data[0]
}

function calculateRemoveLiquidity(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[96] = 0x70703e4a00000000000000000000000000000000000000000000000000000000
    mem[100] = 201
    mem[132] = arg1
    require ext_code.size(0xf07d1c752fab503e47fef309bf14fbdd3e867089)
    delegate 0xf07d1c752fab503e47fef309bf14fbdd3e867089.0x70703e4a with:
         gas gas_remaining wei
        args 201, arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
    _7 = mem[_4 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[(32 * _7) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _7) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _7) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _7) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}

function removeLiquidity(uint256 arg1, uint256[] arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if stor151 == 2:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor151 = 2
    if arg3 < block.timestamp:
        revert with 0, 'Deadline not met'
    mem[96] = 0x73fd6b3e00000000000000000000000000000000000000000000000000000000
    mem[100] = 201
    mem[132] = arg1
    mem[164] = 96
    mem[196] = arg2.length
    mem[228 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 228] = 0
    require ext_code.size(0xf07d1c752fab503e47fef309bf14fbdd3e867089)
    delegate 0xf07d1c752fab503e47fef309bf14fbdd3e867089.0x73fd6b3e with:
         gas gas_remaining wei
        args 0, 201, arg1, 96, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)]
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _8 = mem[96 len 4], 0
    require mem[96 len 4], 0 <= 4294967296
    require mem[96 len 4], 0 + 32 <= return_data.size
    require mem[mem[96 len 4], 0 + 96] <= 4294967296 and mem[96 len 4], 0 + (32 * mem[mem[96 len 4], 0 + 96]) + 32 <= return_data.size
    mem[ceil32(return_data.size) + 96] = mem[mem[96 len 4], 0 + 96]
    _11 = mem[_8 + 96]
    mem[ceil32(return_data.size) + 128 len floor32(mem[_8 + 96])] = mem[_8 + 128 len floor32(mem[_8 + 96])]
    stor151 = 1
    mem[(32 * _11) + ceil32(return_data.size) + 128] = 32
    mem[(32 * _11) + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _11) + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 32, mem[(32 * _11) + ceil32(return_data.size) + 160 len (32 * mem[ceil32(return_data.size) + 96]) + 32]
}



}
