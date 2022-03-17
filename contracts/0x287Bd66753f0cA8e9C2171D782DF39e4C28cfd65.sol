contract main {




// =====================  Runtime code  =====================


#
#  - lock(address arg1, uint64 arg2, bytes arg3, uint256 arg4, uint256 arg5, uint256 arg6)
#
uint8 paused; offset 160
uint8 stor0; offset 168
address owner;
uint256 chainId;
uint32 stor2;
address feeCollectorAddress;
uint256 stor2;
address lockProxyAddress;

function paused() {
    return bool(paused)
}

function owner() {
    return owner
}

function chainId() {
    return chainId
}

function lockProxy() {
    return lockProxyAddress
}

function feeCollector() {
    return address(feeCollectorAddress)
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function pause() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if paused:
        revert with 0, 'Pausable: paused'
    paused = 1
    emit Paused(msg.sender);
}

function unpause() {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not paused:
        revert with 0, 'Pausable: not paused'
    paused = 0
    emit Unpaused(msg.sender);
}

function setFeeCollector(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'emtpy address'
    address(feeCollectorAddress) = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setLockProxy(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require arg1
    lockProxyAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.0xd798f881 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'not lockproxy'
}

function extractFee(address arg1) {
    require calldata.size - 4 >= 32
    if address(feeCollectorAddress) != msg.sender:
        revert with 0, '!feeCollector'
    if not arg1:
        call msg.sender with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[196 len 64] = transfer(address rg1, uint256 rg2), Mask(224, 0, stor2), uint32(stor2), ext_call.return_data[0 len 28]
        call arg1 with:
           funct uint32(stor2)
             gas gas_remaining wei
            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if not transfer(address rg1, uint256 rg2), Mask(224, 0, stor2):
                revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
        else:
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[228]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(return_data.size) + 307 len 22]
}

function speedUp(address arg1, bytes arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    if not stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 0
    if paused:
        revert with 0, 'Pausable: paused'
    if not arg1:
        if arg3 != msg.value:
            revert with 0, 'insufficient ether'
        mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
        _83 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32])
        mem[ceil32(arg2.length) + 128] = arg3
        emit PolyWrapperSpeedUp(address rg1, bytes rg2, address rg3, uint256 rg4):
                                Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                                mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)],
                                arg1,
                                _83,
                                msg.sender,
    else:
        mem[ceil32(arg2.length) + 164] = msg.sender
        mem[ceil32(arg2.length) + 196] = this.address
        mem[ceil32(arg2.length) + 228] = arg3
        mem[ceil32(arg2.length) + 128] = 100
        mem[64] = ceil32(arg2.length) + 260
        mem[ceil32(arg2.length) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
        mem[ceil32(arg2.length) + 160 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
        if not ext_code.hash(arg1):
            revert with 0, 'SafeERC20: call to non-contract'
        if ext_code.hash(arg1) == 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
            revert with 0, 'SafeERC20: call to non-contract'
        mem[ceil32(arg2.length) + 260 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])] = mem[ceil32(arg2.length) + 160 len floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)])]
        mem[ceil32(arg2.length) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + 292 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32] = mem[ceil32(arg2.length) + -(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32) + floor32(Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] % 32]
        call arg1.mem[ceil32(arg2.length) + 260 len 4] with:
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 264 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)] - 4]
        if not return_data.size:
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if arg2.length:
                require arg2.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(arg2.length) + 370 len 22]
            mem[ceil32(arg2.length) + 260 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + floor32(arg2.length) + 260] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 260] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
            emit PolyWrapperSpeedUp(arg3, arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 260 len arg2.length % 32]), msg.sender);
        else:
            mem[ceil32(arg2.length) + 260] = return_data.size
            mem[ceil32(arg2.length) + 292 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[ceil32(arg2.length) + 292]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[ceil32(arg2.length) + ceil32(return_data.size) + 371 len 22]
            mem[ceil32(arg2.length) + ceil32(return_data.size) + 261 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 261] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 261] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], Mask(8 * -(arg2.length % 32) + 32, -(8 * -(arg2.length % 32) + 32) + 256, 0) << (8 * -(arg2.length % 32) + 32) - 256 and !(256^(-(arg2.length % 32) + 32) - 1)
            emit PolyWrapperSpeedUp(arg3, arg1, sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + ceil32(return_data.size) + floor32(arg2.length) + 261 len arg2.length % 32]), msg.sender);
    stor0 = 1
}



}
