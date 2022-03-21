contract main {




// =====================  Runtime code  =====================


const unlockVersion = 9


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 grossNetworkProduct;
uint256 totalDiscountGranted;
mapping of struct locks;
array of uint256 globalBaseTokenURI;
array of uint256 globalTokenSymbol;
address publicLockAddress;
mapping of address uniswapOracles;
address wethAddress;
address udtAddress;
uint256 estimatedGasForPurchase;
uint256 chainId;

function udt() payable {
    return udtAddress
}

function getGlobalTokenSymbol() payable {
    return globalTokenSymbol[0 len globalTokenSymbol.length]
}

function weth() payable {
    return wethAddress
}

function locks(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(locks[arg1].field_0), locks[arg1].field_256, locks[arg1].field_512
}

function uniswapOracles(address arg1) payable {
    require calldata.size - 4 >= 32
    return uniswapOracles[arg1]
}

function estimatedGasForPurchase() payable {
    return estimatedGasForPurchase
}

function getGlobalBaseTokenURI() payable {
    return globalBaseTokenURI[0 len globalBaseTokenURI.length]
}

function owner() payable {
    return owner
}

function chainId() payable {
    return chainId
}

function totalDiscountGranted() payable {
    return totalDiscountGranted
}

function globalBaseTokenURI() payable {
    return globalBaseTokenURI[0 len globalBaseTokenURI.length]
}

function globalTokenSymbol() payable {
    return globalTokenSymbol[0 len globalTokenSymbol.length]
}

function grossNetworkProduct() payable {
    return grossNetworkProduct
}

function publicLockAddress() payable {
    return publicLockAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function computeAvailableDiscountFor(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    return 0
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function recordConsumedDiscount(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not locks[msg.sender].field_0:
        revert with 0, 'ONLY_LOCKS'
    totalDiscountGranted += arg1
}

function resetTrackedValue(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    grossNetworkProduct = arg1
    totalDiscountGranted = arg2
    emit 0x7b2ce3c8: arg1, arg2
}

function setOracle(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    uniswapOracles[address(arg1)] = arg2
    if arg2:
        require ext_code.size(arg2)
        call arg2.update(address rg1, address rg2) with:
             gas gas_remaining wei
            args address(arg1), wethAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setLockTemplate(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    call arg1.initialize(address rg1, uint256 rg2, address rg3, uint256 rg4, uint256 rg5, string rg6) with:
         gas gas_remaining wei
        args 0, uint32(this.address), 0, 0, 0, 0, 192, 0, mem[324]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.renounceLockManager() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    publicLockAddress = arg1
    emit 0x4fa58418: arg1
}

function initialize(address arg1) payable {
    require calldata.size - 4 >= 32
    if uint8(stor0.field_8):
        owner = arg1
        emit OwnershipTransferred(0, arg1);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            owner = arg1
            emit OwnershipTransferred(0, arg1);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = arg1
                emit OwnershipTransferred(0, arg1);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                owner = arg1
                emit OwnershipTransferred(0, arg1);
                uint8(stor0.field_8) = 0
                uint8(stor0.field_8) = 0
}

function createLock(uint256 arg1, address arg2, uint256 arg3, uint256 arg4, string arg5, bytes12 arg6) payable {
    require calldata.size - 4 >= 192
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if not publicLockAddress:
        revert with 0, 'MISSING_LOCK_TEMPLATE'
    if ext_code.size(sha3(0, Mask(160, 96, this.address) >> 96, 0, Mask(96, 160, arg6) >> 160, sha3(0, publicLockAddress, 25601292923584144))):
        revert with Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 
                    'PROXY_DEPLOY_FAILED'
    create2 contract with 0 wei
                    salt: 0, Mask(96, 160, arg6) >> 160
                    code: 0, publicLockAddress, 25601292923584144
    if not address(create2.new_address):
        revert with Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 
                    'PROXY_DEPLOY_FAILED'
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address) with:
       funct Mask(32, -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256, 0) >> -(8 * ceil32(arg5.length) + -arg5.length + 4) + 256
         gas gas_remaining wei
        args msg.sender, arg1, address(arg2), arg3, arg4, Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    locks[address(create2.new_address)].field_0 = 1
    locks[address(create2.new_address)].field_256 = 0
    locks[address(create2.new_address)].field_512 = 0
    emit 0x1017ed19: msg.sender, address(create2.new_address)
    return address(create2.new_address)
}

function sub_7d8fb641(?) payable {
    require calldata.size - 4 >= 192
    require cd[100] <= 4294967296
    require cd[100] + 36 <= calldata.size
    require ('cd', 100).length <= 4294967296 and cd[100] + ('cd', 100).length + 36 <= calldata.size
    require cd[132] <= 4294967296
    require cd[132] + 36 <= calldata.size
    require ('cd', 132).length <= 4294967296 and cd[132] + ('cd', 132).length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    udtAddress = address(cd[4])
    wethAddress = address(cd[36])
    estimatedGasForPurchase = cd[68]
    globalTokenSymbol.length = (2 * ('cd', 100).length) + 1
    s = 0
    idx = cd[100] + 36
    while cd[100] + ('cd', 100).length + 36 > idx:
        globalTokenSymbol[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 100).length + 31) >> 5
    while globalTokenSymbol.length + 31 / 32 > idx:
        globalTokenSymbol[idx] = 0
        idx = idx + 1
        continue 
    globalBaseTokenURI.length = (2 * ('cd', 132).length) + 1
    s = 0
    idx = cd[132] + 36
    while cd[132] + ('cd', 132).length + 36 > idx:
        globalBaseTokenURI[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, ('cd', 132).length + 31) >> 5
    while globalBaseTokenURI.length + 31 / 32 > idx:
        globalBaseTokenURI[idx] = 0
        idx = idx + 1
        continue 
    chainId = cd[164]
    mem[ceil32(('cd', 100).length) + 320] = ('cd', 132).length
    mem[ceil32(('cd', 100).length) + 352 len ('cd', 132).length] = call.data[cd[132] + 36 len ('cd', 132).length]
    mem[('cd', 132).length + ceil32(('cd', 100).length) + 352] = 0
    emit 0xa14230a1: address(cd[4]), address(cd[36]), cd[68], 192, ceil32(('cd', 100).length) + 224, cd[164], ('cd', 100).length, call.data[cd[100] + 36 len ('cd', 100).length], 0, mem[('cd', 100).length + 352 len ceil32(('cd', 100).length) + ceil32(('cd', 132).length) - ('cd', 100).length]
}

function recordKeyPurchase(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    if not locks[msg.sender].field_0:
        revert with 0, 'ONLY_LOCKS'
    if arg1:
        require ext_code.size(msg.sender)
        staticcall msg.sender.tokenAddress() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[12 len 20]:
            if arg1 + grossNetworkProduct < grossNetworkProduct:
                revert with 0, 'SafeMath: addition overflow'
            grossNetworkProduct += arg1
            locks[msg.sender].field_256 += arg1
            if arg2:
                if uniswapOracles[stor110]:
                    require ext_code.size(uniswapOracles[stor110])
                    call uniswapOracles[stor110].0xc1e553e7 with:
                         gas gas_remaining wei
                        args udtAddress, 10^18, wethAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if not block.gasprice * estimatedGasForPurchase:
                        require ext_call.return_data[0]
                        if chainId <= 1:
                            require ext_code.size(udtAddress)
                            call udtAddress.totalSupply() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require grossNetworkProduct
                                if 0 / ext_call.return_data[0] <= 0 / grossNetworkProduct:
                                    if 0 / ext_call.return_data[0]:
                                        if not 0 / ext_call.return_data[0]:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0 / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                else:
                                    if 0 / grossNetworkProduct:
                                        if not 0 / grossNetworkProduct:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0 / grossNetworkProduct
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * 0 / grossNetworkProduct / 0 / grossNetworkProduct != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * 0 / grossNetworkProduct / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                            else:
                                if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require grossNetworkProduct
                                if 0 / ext_call.return_data[0] <= arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                    if 0 / ext_call.return_data[0]:
                                        if not 0 / ext_call.return_data[0]:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0 / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                else:
                                    if arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                        if not arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                        else:
                            require grossNetworkProduct
                            require ext_code.size(udtAddress)
                            call udtAddress.balanceOf(address rg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require (2 * arg1 / grossNetworkProduct) + 2
                                require grossNetworkProduct
                                if 0 / ext_call.return_data[0] <= 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                    if 0 / ext_call.return_data[0]:
                                        if not 0 / ext_call.return_data[0]:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0 / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                else:
                                    if 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                        if not 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                            else:
                                if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require (2 * arg1 / grossNetworkProduct) + 2
                                require grossNetworkProduct
                                if 0 / ext_call.return_data[0] <= arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                    if 0 / ext_call.return_data[0]:
                                        if not 0 / ext_call.return_data[0]:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0 / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                else:
                                    if arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                        if not arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                    else:
                        if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / block.gasprice * estimatedGasForPurchase != 125 * 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        require ext_call.return_data[0]
                        if chainId <= 1:
                            require ext_code.size(udtAddress)
                            call udtAddress.totalSupply() with:
                                 gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require grossNetworkProduct
                                if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] <= 0 / grossNetworkProduct:
                                    if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                        if not 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                else:
                                    if 0 / grossNetworkProduct:
                                        if not 0 / grossNetworkProduct:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0 / grossNetworkProduct
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * 0 / grossNetworkProduct / 0 / grossNetworkProduct != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * 0 / grossNetworkProduct / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                            else:
                                if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require grossNetworkProduct
                                if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] <= arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                    if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                        if not 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                else:
                                    if arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                        if not arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                        else:
                            require grossNetworkProduct
                            require ext_code.size(udtAddress)
                            call udtAddress.balanceOf(address rg1) with:
                                 gas gas_remaining wei
                                args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not ext_call.return_data[0]:
                                require (2 * arg1 / grossNetworkProduct) + 2
                                require grossNetworkProduct
                                if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] <= 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                    if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                        if not 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                else:
                                    if 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                        if not 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                            else:
                                if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require (2 * arg1 / grossNetworkProduct) + 2
                                require grossNetworkProduct
                                if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] <= arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                    if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                        if not 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                else:
                                    if arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                        if not arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 0
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                        else:
                                            if 20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct != 20:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            require ext_code.size(udtAddress)
                                            if chainId <= 1:
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args address(arg2), (arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(udtAddress)
                                                call udtAddress.mint(address rg1, uint256 rg2) with:
                                                     gas gas_remaining wei
                                                    args owner, 20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                            else:
                                                call udtAddress.balanceOf(address rg1) with:
                                                     gas gas_remaining wei
                                                    args this.address
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
        else:
            if wethAddress == ext_call.return_data[12 len 20]:
                if arg1 + grossNetworkProduct < grossNetworkProduct:
                    revert with 0, 'SafeMath: addition overflow'
                grossNetworkProduct += arg1
                locks[msg.sender].field_256 += arg1
                if arg2:
                    if uniswapOracles[stor110]:
                        require ext_code.size(uniswapOracles[stor110])
                        call uniswapOracles[stor110].0xc1e553e7 with:
                             gas gas_remaining wei
                            args udtAddress, 10^18, wethAddress
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if not block.gasprice * estimatedGasForPurchase:
                            require ext_call.return_data[0]
                            if chainId <= 1:
                                require ext_code.size(udtAddress)
                                call udtAddress.totalSupply() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require grossNetworkProduct
                                    if 0 / ext_call.return_data[0] <= 0 / grossNetworkProduct:
                                        if 0 / ext_call.return_data[0]:
                                            if not 0 / ext_call.return_data[0]:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                    else:
                                        if 0 / grossNetworkProduct:
                                            if not 0 / grossNetworkProduct:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 0 / grossNetworkProduct / 0 / grossNetworkProduct != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                else:
                                    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require grossNetworkProduct
                                    if 0 / ext_call.return_data[0] <= arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                        if 0 / ext_call.return_data[0]:
                                            if not 0 / ext_call.return_data[0]:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                    else:
                                        if arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                            if not arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                            else:
                                require grossNetworkProduct
                                require ext_code.size(udtAddress)
                                call udtAddress.balanceOf(address rg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require (2 * arg1 / grossNetworkProduct) + 2
                                    require grossNetworkProduct
                                    if 0 / ext_call.return_data[0] <= 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                        if 0 / ext_call.return_data[0]:
                                            if not 0 / ext_call.return_data[0]:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                    else:
                                        if 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                            if not 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                else:
                                    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require (2 * arg1 / grossNetworkProduct) + 2
                                    require grossNetworkProduct
                                    if 0 / ext_call.return_data[0] <= arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                        if 0 / ext_call.return_data[0]:
                                            if not 0 / ext_call.return_data[0]:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                    else:
                                        if arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                            if not arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                        else:
                            if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / block.gasprice * estimatedGasForPurchase != 125 * 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            require ext_call.return_data[0]
                            if chainId <= 1:
                                require ext_code.size(udtAddress)
                                call udtAddress.totalSupply() with:
                                     gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require grossNetworkProduct
                                    if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] <= 0 / grossNetworkProduct:
                                        if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                            if not 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                    else:
                                        if 0 / grossNetworkProduct:
                                            if not 0 / grossNetworkProduct:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 0 / grossNetworkProduct / 0 / grossNetworkProduct != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                else:
                                    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require grossNetworkProduct
                                    if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] <= arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                        if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                            if not 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                    else:
                                        if arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                            if not arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * arg1 * ext_call.return_data[0] / 2 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                            else:
                                require grossNetworkProduct
                                require ext_code.size(udtAddress)
                                call udtAddress.balanceOf(address rg1) with:
                                     gas gas_remaining wei
                                    args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not ext_call.return_data[0]:
                                    require (2 * arg1 / grossNetworkProduct) + 2
                                    require grossNetworkProduct
                                    if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] <= 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                        if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                            if not 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                    else:
                                        if 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                            if not 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                else:
                                    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    require (2 * arg1 / grossNetworkProduct) + 2
                                    require grossNetworkProduct
                                    if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] <= arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                        if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                            if not 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                    else:
                                        if arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                            if not arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * arg1 * ext_call.return_data[0] / (2 * arg1 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
            else:
                if not uniswapOracles[ext_call.return_data[12 len 20]]:
                    if grossNetworkProduct < grossNetworkProduct:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg2:
                        if uniswapOracles[stor110]:
                            require ext_code.size(uniswapOracles[stor110])
                            call uniswapOracles[stor110].0xc1e553e7 with:
                                 gas gas_remaining wei
                                args udtAddress, 10^18, wethAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not block.gasprice * estimatedGasForPurchase:
                                require ext_call.return_data[0]
                                if chainId <= 1:
                                    require ext_code.size(udtAddress)
                                    call udtAddress.totalSupply() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        if 0 / ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                    require grossNetworkProduct
                                    if 0 / ext_call.return_data[0] <= 0 / grossNetworkProduct:
                                        if 0 / ext_call.return_data[0]:
                                            if not 0 / ext_call.return_data[0]:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                    else:
                                        if 0 / grossNetworkProduct:
                                            if not 0 / grossNetworkProduct:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 0 / grossNetworkProduct / 0 / grossNetworkProduct != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                else:
                                    require grossNetworkProduct
                                    require ext_code.size(udtAddress)
                                    call udtAddress.balanceOf(address rg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        if 0 / ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                    require (0 / grossNetworkProduct) + 2
                                    require grossNetworkProduct
                                    if 0 / ext_call.return_data[0] <= 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                        if 0 / ext_call.return_data[0]:
                                            if not 0 / ext_call.return_data[0]:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                    else:
                                        if 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                            if not 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct / 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                            else:
                                if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / block.gasprice * estimatedGasForPurchase != 125 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_call.return_data[0]
                                if chainId <= 1:
                                    require ext_code.size(udtAddress)
                                    call udtAddress.totalSupply() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        if 0 / ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                    require grossNetworkProduct
                                    if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] <= 0 / grossNetworkProduct:
                                        if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                            if not 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                    else:
                                        if 0 / grossNetworkProduct:
                                            if not 0 / grossNetworkProduct:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 0 / grossNetworkProduct / 0 / grossNetworkProduct != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                else:
                                    require grossNetworkProduct
                                    require ext_code.size(udtAddress)
                                    call udtAddress.balanceOf(address rg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ext_call.return_data[0]:
                                        if 0 / ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                    require (0 / grossNetworkProduct) + 2
                                    require grossNetworkProduct
                                    if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] <= 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                        if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                            if not 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                    else:
                                        if 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                            if not 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 0
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                            else:
                                                if 20 * 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct / 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct != 20:
                                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                32,
                                                                33,
                                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                mem[197 len 31]
                                                require ext_code.size(udtAddress)
                                                if chainId <= 1:
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args address(arg2), (0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    require ext_code.size(udtAddress)
                                                    call udtAddress.mint(address rg1, uint256 rg2) with:
                                                         gas gas_remaining wei
                                                        args owner, 20 * 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                else:
                                                    call udtAddress.balanceOf(address rg1) with:
                                                         gas gas_remaining wei
                                                        args this.address
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 32
                                                    if ext_call.return_data[0] > 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / (0 / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                else:
                    require ext_code.size(uniswapOracles[ext_call.return_data[12 len 20]])
                    call uniswapOracles[ext_call.return_data[12 len 20]].0xc1e553e7 with:
                         gas gas_remaining wei
                        args address(ext_call.return_data[0]), arg1, wethAddress
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] + grossNetworkProduct < grossNetworkProduct:
                        revert with 0, 'SafeMath: addition overflow'
                    grossNetworkProduct += ext_call.return_data[0]
                    locks[msg.sender].field_256 += ext_call.return_data[0]
                    if arg2:
                        if uniswapOracles[stor110]:
                            require ext_code.size(uniswapOracles[stor110])
                            call uniswapOracles[stor110].0xc1e553e7 with:
                                 gas gas_remaining wei
                                args udtAddress, 10^18, wethAddress
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not block.gasprice * estimatedGasForPurchase:
                                require ext_call.return_data[0]
                                if chainId <= 1:
                                    require ext_code.size(udtAddress)
                                    call udtAddress.totalSupply() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        require grossNetworkProduct
                                        if 0 / ext_call.return_data[0] <= 0 / grossNetworkProduct:
                                            if 0 / ext_call.return_data[0]:
                                                if not 0 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                        else:
                                            if 0 / grossNetworkProduct:
                                                if not 0 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / grossNetworkProduct
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * 0 / grossNetworkProduct / 0 / grossNetworkProduct != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * 0 / grossNetworkProduct / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        require grossNetworkProduct
                                        if 0 / ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                            if 0 / ext_call.return_data[0]:
                                                if not 0 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                        else:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                if not ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct / ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct) - (20 * ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct) - (20 * ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                else:
                                    require grossNetworkProduct
                                    require ext_code.size(udtAddress)
                                    call udtAddress.balanceOf(address rg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        require (2 * ext_call.return_data[0] / grossNetworkProduct) + 2
                                        require grossNetworkProduct
                                        if 0 / ext_call.return_data[0] <= 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                            if 0 / ext_call.return_data[0]:
                                                if not 0 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                        else:
                                            if 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                if not 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        require (2 * ext_call.return_data[0] / grossNetworkProduct) + 2
                                        require grossNetworkProduct
                                        if 0 / ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                            if 0 / ext_call.return_data[0]:
                                                if not 0 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (0 / ext_call.return_data[0]) - (20 * 0 / ext_call.return_data[0] / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * 0 / ext_call.return_data[0] / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                        else:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                if not ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                            else:
                                if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / block.gasprice * estimatedGasForPurchase != 125 * 10^18:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                require ext_call.return_data[0]
                                if chainId <= 1:
                                    require ext_code.size(udtAddress)
                                    call udtAddress.totalSupply() with:
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        require grossNetworkProduct
                                        if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] <= 0 / grossNetworkProduct:
                                            if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                if not 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                        else:
                                            if 0 / grossNetworkProduct:
                                                if not 0 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / grossNetworkProduct
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * 0 / grossNetworkProduct / 0 / grossNetworkProduct != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (0 / grossNetworkProduct) - (20 * 0 / grossNetworkProduct / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * 0 / grossNetworkProduct / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        require grossNetworkProduct
                                        if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                            if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                if not 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                        else:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                if not ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct / ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct) - (20 * ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct) - (20 * ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * ext_call.return_data[0] * ext_call.return_data[0] / 2 / grossNetworkProduct / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                else:
                                    require grossNetworkProduct
                                    require ext_code.size(udtAddress)
                                    call udtAddress.balanceOf(address rg1) with:
                                         gas gas_remaining wei
                                        args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if not ext_call.return_data[0]:
                                        require (2 * ext_call.return_data[0] / grossNetworkProduct) + 2
                                        require grossNetworkProduct
                                        if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] <= 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                            if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                if not 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                        else:
                                            if 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                if not 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * 0 / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                    else:
                                        if ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] != ext_call.return_data[0]:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        require (2 * ext_call.return_data[0] / grossNetworkProduct) + 2
                                        require grossNetworkProduct
                                        if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] <= ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                            if 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                if not 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0]) - (20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * 125 * 10^18 * block.gasprice * estimatedGasForPurchase / 100 / ext_call.return_data[0] / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                        else:
                                            if ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                if not ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 0
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 0
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                else:
                                                    if 20 * ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct != 20:
                                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                                    32,
                                                                    33,
                                                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[197 len 31]
                                                    require ext_code.size(udtAddress)
                                                    if chainId <= 1:
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args address(arg2), (ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        require ext_code.size(udtAddress)
                                                        call udtAddress.mint(address rg1, uint256 rg2) with:
                                                             gas gas_remaining wei
                                                            args owner, 20 * ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                    else:
                                                        call udtAddress.balanceOf(address rg1) with:
                                                             gas gas_remaining wei
                                                            args this.address
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] > ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct:
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args address(arg2), (ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct) - (20 * ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100)
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
                                                            require ext_code.size(udtAddress)
                                                            call udtAddress.transfer(address rg1, uint256 rg2) with:
                                                                 gas gas_remaining wei
                                                                args owner, 20 * ext_call.return_data[0] * ext_call.return_data[0] / (2 * ext_call.return_data[0] / grossNetworkProduct) + 2 / grossNetworkProduct / 100
                                                            if not ext_call.success:
                                                                revert with ext_call.return_data[0 len return_data.size]
                                                            require return_data.size >= 32
}



}
