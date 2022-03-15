contract main {




// =====================  Runtime code  =====================


#
#  - getOracleSourcePrice(address arg1, uint256 arg2)
#  - getUnderlyingPrice(address arg1)
#
address owner;
mapping of struct stor1;
array of struct oracleLength;
mapping of address chainLinkTokenEthPriceFeed;
address ethUsdPriceFeedAddress;

function oracleLength(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return uint256(oracleLength[address(arg1)].field_0)
}

function chainLinkTokenEthPriceFeed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return chainLinkTokenEthPriceFeed[arg1]
}

function owner() payable {
    return owner
}

function oracles(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require arg2 < uint256(oracleLength[arg1].field_0)
    require uint8(oracleLength[arg1][arg2].field_160) < 4
    return oracleLength[arg1][arg2].field_0, 
           uint8(oracleLength[arg1][arg2].field_0),
           bool(uint8(oracleLength[arg1][arg2].field_168))
}

function ethUsdPriceFeedAddress() payable {
    return ethUsdPriceFeedAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setEthUsdPriceFeedAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    ethUsdPriceFeedAddress = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function tokenConfigs(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[128] = uint256(stor1[arg1][2].field_0)
    idx = 128
    s = 0
    while stor1[arg1][2].length + 96 > idx:
        mem[idx + 32] = uint256(stor1[arg1][s + 2].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return stor1[arg1].field_0, 
           stor1[arg1].field_256,
           Array(len=stor1[arg1][2].length, data=mem[128 len ceil32(stor1[arg1][2].length)]),
           uint256(stor1[arg1].field_768),
           bool(uint8(stor1[arg1].field_1024))
}

function addOrUpdateTokenConfigSource(address arg1, uint256 arg2, address arg3, uint8 arg4, bool arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 < 4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if uint256(oracleLength[address(arg1)].field_0) > arg2:
        require arg2 < uint256(oracleLength[address(arg1)].field_0)
        oracleLength[address(arg1)][arg2].field_0 = arg3
        require arg4 <= 3
        Mask(96, 0, oracleLength[address(arg1)][arg2].field_160) = Mask(96, 0, arg4)
        Mask(88, 0, oracleLength[address(arg1)][arg2].field_168) = Mask(88, 0, arg5)
    else:
        require arg4 <= 3
        uint256(oracleLength[address(arg1)].field_0)++
        oracleLength[address(arg1)][uint256(oracleLength[address(arg1)].field_0)].field_0 = arg3
        require arg4 <= 3
        Mask(96, 0, oracleLength[address(arg1)][uint256(oracleLength[address(arg1)].field_0)].field_160) = Mask(96, 0, arg4)
        Mask(88, 0, oracleLength[address(arg1)][uint256(oracleLength[address(arg1)].field_0)].field_168) = Mask(88, 0, arg5)
}

function updateTokenConfigFixedUsd(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor1[address(arg1)].field_0:
        revert with 0, 'bad params'
    uint8(stor1[address(arg1)].field_1024) = uint8(arg2)
    if not bool(stor1[address(arg1)].field_512):
        emit ConfigUpdated(address(arg1), stor1[address(arg1)].field_256, Array(len=stor1[address(arg1)].field_512 % 128, data=Mask(248, 8, uint256(stor1[address(arg1)].field_512))), uint256(stor1[address(arg1)].field_768), arg2);
    else:
        if bool(stor1[address(arg1)].field_512) != 1:
            emit ConfigUpdated(address rg1, address rg2, string rg3, uint256 rg4, bool rg5):
                               mem[96 len -96],
        else:
            idx = 0
            s = 0
            while idx < uint255(stor1[address(arg1)].field_513):
                mem[idx + 288] = uint256(stor1[address(arg1)][s + 2].field_0)
                idx = idx + 32
                s = s + 1
                continue 
            emit ConfigUpdated(address(arg1), stor1[address(arg1)].field_256, Array(len=2 * Mask(256, -1, uint255(stor1[address(arg1)].field_513)), data=mem[288 len ceil32(uint255(stor1[address(arg1)].field_513))]), uint256(stor1[address(arg1)].field_768), arg2);
}

function updateTokenConfigBaseUnit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor1[address(arg1)].field_0:
        revert with 0, 'bad params'
    uint256(stor1[address(arg1)].field_768) = arg2
    if not bool(stor1[address(arg1)].field_512):
        emit ConfigUpdated(address(arg1), stor1[address(arg1)].field_256, Array(len=stor1[address(arg1)].field_512 % 128, data=Mask(248, 8, uint256(stor1[address(arg1)].field_512))), arg2, bool(uint8(stor1[address(arg1)].field_1024)));
    else:
        if bool(stor1[address(arg1)].field_512) != 1:
            emit ConfigUpdated(address rg1, address rg2, string rg3, uint256 rg4, bool rg5):
                               mem[96 len -96],
        else:
            idx = 0
            s = 0
            while idx < uint255(stor1[address(arg1)].field_513):
                mem[idx + 288] = uint256(stor1[address(arg1)][s + 2].field_0)
                idx = idx + 32
                s = s + 1
                continue 
            emit ConfigUpdated(address(arg1), stor1[address(arg1)].field_256, Array(len=2 * Mask(256, -1, uint255(stor1[address(arg1)].field_513)), data=mem[288 len ceil32(uint255(stor1[address(arg1)].field_513))]), arg2, bool(uint8(stor1[address(arg1)].field_1024)));
}

function addOrUpdateChainLinkTokenEthPriceFeed(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 <= test266151307() and (32 * arg1.length) + 128 >= 96
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    idx = 0
    s = arg1 + 36
    t = 128
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307() and (32 * arg2.length) + 160 >= 128
    mem[(32 * arg1.length) + 128] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1.length != arg2.length:
        revert with 0, 'tokens.length must equal than chainLinkTokenEthPriceFeeds.length'
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg2.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 3
        chainLinkTokenEthPriceFeed[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
        idx = idx + 1
        continue 
}

function addTokenConfig(address arg1, address arg2, string arg3, uint256 arg4, bool arg5, address[] arg6, uint8[] arg7) payable {
    require calldata.size - 4 >= 224
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 <= test266151307() and ceil32(arg3.length) + 128 >= 96
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg4 == arg4
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require ceil32(arg3.length) + (32 * arg6.length) + 160 <= test266151307() and (32 * arg6.length) + 160 >= 128
    mem[64] = ceil32(arg3.length) + (32 * arg6.length) + 160
    mem[ceil32(arg3.length) + 128] = arg6.length
    require arg6 + (32 * arg6.length) + 36 <= calldata.size
    idx = 0
    s = arg6 + 36
    t = ceil32(arg3.length) + 160
    while idx < arg6.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + (32 * arg7.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg6.length != arg7.length:
        revert with 0, 'sourceTypes.length must equal than sources.length'
    if stor1[address(arg1)].field_0:
        revert with 0, 'bad params'
    stor1[address(arg1)].field_0 = arg1
    stor1[address(arg1)].field_256 = arg2
    uint256(stor1[address(arg1)][2][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor1[address(arg1)].field_768) = arg4
    uint8(stor1[address(arg1)].field_1024) = uint8(arg5)
    mem[0] = arg1
    mem[32] = 2
    if uint256(oracleLength[address(arg1)].field_0) >= 1:
        revert with 0, 'bad params'
    idx = 0
    while idx < arg6.length:
        mem[0] = arg1
        mem[32] = 2
        _326 = mem[64]
        mem[64] = mem[64] + 96
        require idx < mem[ceil32(arg3.length) + 128]
        mem[_326] = mem[(32 * idx) + ceil32(arg3.length) + 172 len 20]
        require idx < arg7.length
        require cd[((32 * idx) + arg7 + 36)] < 4
        require cd[((32 * idx) + arg7 + 36)] <= 3
        mem[_326 + 32] = cd[((32 * idx) + arg7 + 36)]
        mem[_326 + 64] = 1
        uint256(oracleLength[address(arg1)].field_0)++
        mem[0] = sha3(address(arg1), 2)
        oracleLength[address(arg1)][uint256(oracleLength[address(arg1)].field_0)].field_0 = mem[_326 + 12 len 20]
        require cd[((32 * idx) + arg7 + 36)] <= 3
        Mask(96, 0, oracleLength[address(arg1)][uint256(oracleLength[address(arg1)].field_0)].field_160) = Mask(96, 0, cd[((32 * idx) + arg7 + 36)])
        Mask(88, 0, oracleLength[address(arg1)][uint256(oracleLength[address(arg1)].field_0)].field_168) = 1
        idx = idx + 1
        continue 
    mem[mem[64]] = arg1
    mem[mem[64] + 32] = arg2
    mem[mem[64] + 64] = 160
    _343 = mem[96]
    mem[mem[64] + 160] = mem[96]
    mem[mem[64] + 192 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) <= mem[96]:
        mem[mem[64] + 96] = arg4
        mem[mem[64] + 128] = arg5
        emit ConfigUpdated(address rg1, address rg2, string rg3, uint256 rg4, bool rg5):
                           address(arg1),
                           address(arg2),
                           160,
                           arg4,
                           arg5,
                           mem[mem[64] + 160 len ceil32(_343) + 32],
        mem[32] = 2
        _373 = mem[64]
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = uint256(oracleLength[address(arg1)].field_0)
        mem[0] = sha3(address(arg1), 2)
        idx = 0
        s = 0
        t = mem[64] + 96
        while idx < uint256(oracleLength[address(arg1)].field_0):
            mem[t] = stor[s + sha3(mem[0])]
            mem[t + 32] = 0
            mem[t + 64] = 0
            idx = idx + 1
            s = s + 1
            t = t + 96
            continue 
        emit 0x3305406b: mem[mem[64] len _373 + (96 * uint256(oracleLength[address(arg1)].field_0)) + -mem[64] + 96]
    else:
        mem[mem[64] + mem[96] + 192] = 0
        mem[mem[64] + 96] = arg4
        mem[mem[64] + 128] = arg5
        emit ConfigUpdated(address rg1, address rg2, string rg3, uint256 rg4, bool rg5):
                           address(arg1),
                           address(arg2),
                           160,
                           arg4,
                           arg5,
                           mem[mem[64] + 160 len ceil32(_343) + 32],
        mem[32] = 2
        _376 = mem[64]
        mem[mem[64]] = arg1
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = uint256(oracleLength[address(arg1)].field_0)
        mem[0] = sha3(address(arg1), 2)
        idx = 0
        s = 0
        t = mem[64] + 96
        while idx < uint256(oracleLength[address(arg1)].field_0):
            mem[t] = stor[s + sha3(mem[0])]
            mem[t + 32] = 0
            mem[t + 64] = 0
            idx = idx + 1
            s = s + 1
            t = t + 96
            continue 
        emit 0x3305406b: mem[mem[64] len _376 + (96 * uint256(oracleLength[address(arg1)].field_0)) + -mem[64] + 96]
}



}
