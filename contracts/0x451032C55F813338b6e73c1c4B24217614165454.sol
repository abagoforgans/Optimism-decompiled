contract main {




// =====================  Runtime code  =====================


#
#  - getOracleSourcePrice(address arg1, uint256 arg2)
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
    require arg3 == arg3
    require arg4 < 4
    require arg5 == arg5
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 < uint256(oracleLength[address(arg1)].field_0):
        oracleLength[address(arg1)][arg2].field_0 = arg3
        require arg4 <= 3
        oracleLength[address(arg1)][arg2].field_0 = arg3
        Mask(96, 0, oracleLength[address(arg1)][arg2].field_160) = Mask(96, 0, arg4)
        Mask(88, 0, oracleLength[address(arg1)][arg2].field_168) = Mask(88, 0, arg5)
    else:
        require arg4 <= 3
        uint256(oracleLength[address(arg1)].field_0)++
        oracleLength[address(arg1)][uint256(oracleLength[address(arg1)].field_0)].field_0 = arg3
        require arg4 <= 3
        oracleLength[address(arg1)][uint256(oracleLength[address(arg1)].field_0)].field_0 = arg3
        Mask(96, 0, oracleLength[address(arg1)][uint256(oracleLength[address(arg1)].field_0)].field_160) = Mask(96, 0, arg4)
        Mask(88, 0, oracleLength[address(arg1)][uint256(oracleLength[address(arg1)].field_0)].field_168) = Mask(88, 0, arg5)
}

function updateTokenConfigBaseUnit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
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

function addOrUpdateChainLinkTokenEthPriceFeed(address[] arg1, address[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require (32 * arg2.length) + 160 >= 128 and (32 * arg1.length) + (32 * arg2.length) + 160 <= test266151307()
    mem[(32 * arg1.length) + 128] = arg2.length
    require calldata.size >= arg2 + (32 * arg2.length) + 36
    s = arg2 + 36
    t = (32 * arg1.length) + 160
    idx = 0
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
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
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    mem[96] = arg3.length
    require arg3 + arg3.length + 36 <= calldata.size
    mem[128 len arg3.length] = arg3[all]
    mem[arg3.length + 128] = 0
    require arg5 == arg5
    require arg6 <= test266151307()
    require arg6 + 35 < calldata.size
    require arg6.length <= test266151307()
    require (32 * arg6.length) + 160 >= 128 and ceil32(arg3.length) + (32 * arg6.length) + 160 <= test266151307()
    mem[64] = ceil32(arg3.length) + (32 * arg6.length) + 160
    mem[ceil32(arg3.length) + 128] = arg6.length
    require calldata.size >= arg6 + (32 * arg6.length) + 36
    s = arg6 + 36
    t = ceil32(arg3.length) + 160
    idx = 0
    while idx < arg6.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require arg7 <= test266151307()
    require arg7 + 35 < calldata.size
    require arg7.length <= test266151307()
    require arg7 + (32 * arg7.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg7.length != arg6.length:
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
    if 1 <= uint256(oracleLength[address(arg1)].field_0):
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
        oracleLength[address(arg1)][uint256(oracleLength[address(arg1)].field_0)].field_0 = mem[_326 + 12 len 20]
        Mask(96, 0, oracleLength[address(arg1)][uint256(oracleLength[address(arg1)].field_0)].field_160) = Mask(96, 0, cd[((32 * idx) + arg7 + 36)])
        Mask(88, 0, oracleLength[address(arg1)][uint256(oracleLength[address(arg1)].field_0)].field_168) = 1
        idx = idx + 1
        continue 
    mem[mem[64]] = arg1
    mem[mem[64] + 32] = arg2
    mem[mem[64] + 64] = 160
    _330 = mem[96]
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
                           mem[mem[64] + 160 len ceil32(_330) + 32],
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
                           mem[mem[64] + 160 len ceil32(_330) + 32],
        mem[32] = 2
        _377 = mem[64]
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
        emit 0x3305406b: mem[mem[64] len _377 + (96 * uint256(oracleLength[address(arg1)].field_0)) + -mem[64] + 96]
}

function getUnderlyingPrice(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if uint8(stor1[address(arg1)].field_1024):
        if uint256(stor1[address(arg1)].field_768) <= 0:
            revert with 0, 'SafeMath: division by zero'
        require uint256(stor1[address(arg1)].field_768)
        return (1000000000000000000 * 10^18 / uint256(stor1[address(arg1)].field_768))
    mem[0] = arg1
    mem[32] = 2
    idx = 0
    while idx < uint256(oracleLength[address(arg1)].field_0):
        mem[0] = sha3(address(arg1), 2)
        if bool(uint8(oracleLength[address(arg1)][idx].field_168)) != 1:
            idx = idx + 1
            continue 
        _6111 = mem[64]
        mem[64] = mem[64] + 160
        mem[_6111] = stor1[address(arg1)].field_0
        mem[_6111 + 32] = stor1[address(arg1)].field_256
        _6112 = mem[64]
        mem[64] = mem[64] + ceil32(stor1[address(arg1)][2].length) + 32
        mem[_6112] = stor1[address(arg1)][2].length
        mem[0] = sha3(address(arg1), 1) + 2
        mem[_6112 + 32] = uint256(stor1[address(arg1)][2].field_0)
        s = _6112 + 32
        t = sha3(sha3(address(arg1), 1) + 2)
        while _6112 + stor1[address(arg1)][2].length > s:
            mem[s + 32] = uint256(stor1[t].field_0)
            s = s + 32
            t = t + 1
            continue 
        mem[_6111 + 64] = _6112
        mem[_6111 + 96] = uint256(stor1[address(arg1)].field_768)
        mem[_6111 + 128] = bool(uint8(stor1[address(arg1)].field_1024))
        _12213 = mem[64]
        mem[64] = mem[64] + 96
        mem[_12213] = oracleLength[address(arg1)][idx].field_0
        require uint8(oracleLength[address(arg1)][idx].field_160) <= 3
        mem[_12213 + 32] = uint8(oracleLength[address(arg1)][idx].field_160)
        mem[_12213 + 64] = bool(uint8(oracleLength[address(arg1)][idx].field_168))
        mem[mem[64]] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
        require ext_code.size(arg1)
        staticcall arg1.0x95d89b41 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _12227 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _12230 = mem[_12227]
        require mem[_12227] <= test266151307()
        require _12227 + return_data.size > _12227 + mem[_12227] + 31
        _12234 = mem[_12227 + mem[_12227]]
        require mem[_12227 + mem[_12227]] <= test266151307()
        require ceil32(mem[_12227 + mem[_12227]]) + 32 >= 0 and _12227 + ceil32(return_data.size) + ceil32(mem[_12227 + mem[_12227]]) + 32 <= test266151307()
        mem[64] = _12227 + ceil32(return_data.size) + ceil32(mem[_12227 + mem[_12227]]) + 32
        mem[_12227 + ceil32(return_data.size)] = _12234
        require _12230 + _12234 + 32 <= return_data.size
        s = 0
        while s < _12234:
            mem[s + _12227 + ceil32(return_data.size) + 32] = mem[s + _12227 + _12230 + 32]
            s = s + 32
            continue 
        if ceil32(_12234) <= _12234:
            _18306 = mem[64]
            mem[64] = mem[64] + 64
            mem[_18306] = 4
            mem[_18306 + 32] = 0x7045544800000000000000000000000000000000000000000000000000000000
            _18325 = mem[64]
            s = 0
            while s < 4:
                mem[s + _18325 + 32] = mem[s + _18306 + 32]
                s = s + 32
                continue 
            mem[_18325 + 36] = 0
            _24409 = mem[64]
            mem[mem[64]] = _18325 + -mem[64] + 4
            mem[64] = _18325 + 36
            _24411 = sha3(mem[_24409 + 32 len mem[_24409]])
            _24442 = mem[_12227 + ceil32(return_data.size)]
            s = 0
            while s < _24442:
                mem[s + _18325 + 68] = mem[s + _12227 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_24442) <= _24442:
                _30403 = mem[64]
                mem[mem[64]] = _24442 + _18325 + -mem[64] + 36
                mem[64] = _24442 + _18325 + 68
                if sha3(mem[_30403 + 32 len mem[_30403]]) == _24411:
                    require mem[_12213 + 32] <= 3
                    if not mem[_12213 + 32]:
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        require ext_code.size(mem[_12213 + 12 len 20])
                        staticcall mem[_12213 + 12 len 20].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24442 + _18325 + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24442 + _18325 + ceil32(return_data.size) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24442 + _18325 + ceil32(return_data.size) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if 10000000000 * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10000000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24442 + _18325 + ceil32(return_data.size) + 68] = 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24442 + _18325 + ceil32(return_data.size) + 68
                           len 32
                    require mem[_12213 + 32] <= 3
                    if mem[_12213 + 32] != 1:
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] == 2:
                            _30772 = mem[_12213]
                            _30773 = mem[_6111 + 32]
                            mem[_24442 + _18325 + 72] = mem[_6111 + 44 len 20]
                            require ext_code.size(address(_30772))
                            staticcall address(_30772).0x41976e09 with:
                                    gas gas_remaining wei
                                   args address(_30773)
                            mem[_24442 + _18325 + 68] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _24442 + _18325 + ceil32(return_data.size) + 68
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                idx = idx + 1
                                continue 
                            if not ext_call.return_data[0]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + ceil32(return_data.size) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + ceil32(return_data.size) + 68] = 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]
                            return memory
                              from _24442 + _18325 + ceil32(return_data.size) + 68
                               len 32
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] != 3:
                            idx = idx + 1
                            continue 
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        mem[0] = mem[_6111 + 44 len 20]
                        mem[32] = 3
                        require ext_code.size(chainLinkTokenEthPriceFeed[mem[0]])
                        staticcall chainLinkTokenEthPriceFeed[mem[0]].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24442 + _18325 + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24442 + _18325 + ceil32(return_data.size) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        require ext_code.size(ethUsdPriceFeedAddress)
                        staticcall ethUsdPriceFeedAddress.latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24442 + _18325 + ceil32(return_data.size) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24442 + _18325 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[32] * ext_call.return_data[32]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] * ext_call.return_data[32] != 10^10:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68] = 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24442 + _18325 + (2 * ceil32(return_data.size)) + 68
                           len 32
                    _30666 = mem[_12213]
                    mem[64] = _24442 + _18325 + 324
                    mem[_24442 + _18325 + 68] = 0
                    mem[_24442 + _18325 + 100] = 0
                    mem[_24442 + _18325 + 132] = 0
                    mem[_24442 + _18325 + 164] = 0
                    mem[_24442 + _18325 + 196] = 0
                    mem[_24442 + _18325 + 228] = 0
                    mem[_24442 + _18325 + 260] = 0
                    mem[_24442 + _18325 + 292] = 0
                    _30775 = mem[_6111 + 64]
                    mem[_24442 + _18325 + 324] = 0x276c2cba00000000000000000000000000000000000000000000000000000000
                    mem[_24442 + _18325 + 328] = 32
                    _30855 = mem[_30775]
                    mem[_24442 + _18325 + 360] = mem[_30775]
                    s = 0
                    while s < _30855:
                        mem[s + _24442 + _18325 + 392] = mem[s + _30775 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_30855) > _30855:
                        mem[_24442 + _18325 + _30855 + 392] = 0
                    require ext_code.size(address(_30666))
                    staticcall address(_30666).getTokenConfigBySymbol(string rg1) with:
                            gas gas_remaining wei
                           args 32, mem[_24442 + _18325 + 360 len ceil32(_30855) + 32]
                    mem[_24442 + _18325 + 324 len 256] = ext_call.return_data[0 len 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 256
                    require bool(_24442 + _18325 + ceil32(return_data.size) + 580 <= test266151307())
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 324] = ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 356] = ext_call.return_data[32]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 388] = ext_call.return_data[64]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 420] = ext_call.return_data[96]
                    require ext_call.return_data[128] < 3
                    mem[_24442 + _18325 + ceil32(return_data.size) + 452] = ext_call.return_data[128]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 484] = ext_call.return_data[160]
                    require ext_call.return_data[192] == ext_call.return_data[204 len 20]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 516] = ext_call.return_data[192]
                    require ext_call.return_data[224] == bool(ext_call.return_data[224])
                    mem[_24442 + _18325 + ceil32(return_data.size) + 548] = ext_call.return_data[224]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 584] = ext_call.return_data[12 len 20]
                    require ext_code.size(address(_30666))
                    staticcall address(_30666).0xfc57d4df with:
                            gas gas_remaining wei
                           args ext_call.return_data[12 len 20]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 580] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _24442 + _18325 + (2 * ceil32(return_data.size)) + 580
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    mem[_24442 + _18325 + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _24442 + _18325 + ceil32(return_data.size) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require mem[_12213 + 32] <= 3
                    if not mem[_12213 + 32]:
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        require ext_code.size(mem[_12213 + 12 len 20])
                        staticcall mem[_12213 + 12 len 20].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24442 + _18325 + ceil32(return_data.size) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24442 + _18325 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if 10000000000 * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10000000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68] = 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24442 + _18325 + (2 * ceil32(return_data.size)) + 68
                           len 32
                    require mem[_12213 + 32] <= 3
                    if mem[_12213 + 32] != 1:
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] == 2:
                            _31386 = mem[_12213]
                            _31387 = mem[_6111 + 32]
                            mem[_24442 + _18325 + ceil32(return_data.size) + 72] = mem[_6111 + 44 len 20]
                            require ext_code.size(address(_31386))
                            staticcall address(_31386).0x41976e09 with:
                                    gas gas_remaining wei
                                   args address(_31387)
                            mem[_24442 + _18325 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _24442 + _18325 + (2 * ceil32(return_data.size)) + 68
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                idx = idx + 1
                                continue 
                            if not ext_call.return_data[0]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68] = 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]
                            return memory
                              from _24442 + _18325 + (2 * ceil32(return_data.size)) + 68
                               len 32
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] != 3:
                            idx = idx + 1
                            continue 
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        mem[0] = mem[_6111 + 44 len 20]
                        mem[32] = 3
                        require ext_code.size(chainLinkTokenEthPriceFeed[mem[0]])
                        staticcall chainLinkTokenEthPriceFeed[mem[0]].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24442 + _18325 + ceil32(return_data.size) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24442 + _18325 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        require ext_code.size(ethUsdPriceFeedAddress)
                        staticcall ethUsdPriceFeedAddress.latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24442 + _18325 + (4 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24442 + _18325 + (4 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[32] * ext_call.return_data[32]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + (4 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] * ext_call.return_data[32] != 10^10:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + (4 * ceil32(return_data.size)) + 68] = 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24442 + _18325 + (4 * ceil32(return_data.size)) + 68
                           len 32
                    _31250 = mem[_12213]
                    mem[64] = _24442 + _18325 + ceil32(return_data.size) + 324
                    mem[_24442 + _18325 + ceil32(return_data.size) + 68] = 0
                    mem[_24442 + _18325 + ceil32(return_data.size) + 100] = 0
                    mem[_24442 + _18325 + ceil32(return_data.size) + 132] = 0
                    mem[_24442 + _18325 + ceil32(return_data.size) + 164] = 0
                    mem[_24442 + _18325 + ceil32(return_data.size) + 196] = 0
                    mem[_24442 + _18325 + ceil32(return_data.size) + 228] = 0
                    mem[_24442 + _18325 + ceil32(return_data.size) + 260] = 0
                    mem[_24442 + _18325 + ceil32(return_data.size) + 292] = 0
                    _31389 = mem[_6111 + 64]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 324] = 0x276c2cba00000000000000000000000000000000000000000000000000000000
                    mem[_24442 + _18325 + ceil32(return_data.size) + 328] = 32
                    _31542 = mem[_31389]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 360] = mem[_31389]
                    s = 0
                    while s < _31542:
                        mem[s + _24442 + _18325 + ceil32(return_data.size) + 392] = mem[s + _31389 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_31542) > _31542:
                        mem[_24442 + _18325 + ceil32(return_data.size) + _31542 + 392] = 0
                    require ext_code.size(address(_31250))
                    staticcall address(_31250).getTokenConfigBySymbol(string rg1) with:
                            gas gas_remaining wei
                           args 32, mem[_24442 + _18325 + ceil32(return_data.size) + 360 len ceil32(_31542) + 32]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 324 len 256] = ext_call.return_data[0 len 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 256
                    require bool(_24442 + _18325 + (2 * ceil32(return_data.size)) + 580 <= test266151307())
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 356] = ext_call.return_data[32]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 388] = ext_call.return_data[64]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 420] = ext_call.return_data[96]
                    require ext_call.return_data[128] < 3
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[128]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 484] = ext_call.return_data[160]
                    require ext_call.return_data[192] == ext_call.return_data[204 len 20]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 516] = ext_call.return_data[192]
                    require ext_call.return_data[224] == bool(ext_call.return_data[224])
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 548] = ext_call.return_data[224]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 584] = ext_call.return_data[12 len 20]
                    require ext_code.size(address(_31250))
                    staticcall address(_31250).0xfc57d4df with:
                            gas gas_remaining wei
                           args ext_call.return_data[12 len 20]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 580] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _24442 + _18325 + (4 * ceil32(return_data.size)) + 580
            else:
                mem[_18325 + _24442 + 68] = 0
                _30431 = mem[64]
                mem[mem[64]] = _24442 + _18325 + -mem[64] + 36
                mem[64] = _24442 + _18325 + 68
                if sha3(mem[_30431 + 32 len mem[_30431]]) == _24411:
                    require mem[_12213 + 32] <= 3
                    if not mem[_12213 + 32]:
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        require ext_code.size(mem[_12213 + 12 len 20])
                        staticcall mem[_12213 + 12 len 20].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24442 + _18325 + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24442 + _18325 + ceil32(return_data.size) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24442 + _18325 + ceil32(return_data.size) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if 10000000000 * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10000000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24442 + _18325 + ceil32(return_data.size) + 68] = 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24442 + _18325 + ceil32(return_data.size) + 68
                           len 32
                    require mem[_12213 + 32] <= 3
                    if mem[_12213 + 32] != 1:
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] == 2:
                            _30817 = mem[_12213]
                            _30818 = mem[_6111 + 32]
                            mem[_24442 + _18325 + 72] = mem[_6111 + 44 len 20]
                            require ext_code.size(address(_30817))
                            staticcall address(_30817).0x41976e09 with:
                                    gas gas_remaining wei
                                   args address(_30818)
                            mem[_24442 + _18325 + 68] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _24442 + _18325 + ceil32(return_data.size) + 68
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                idx = idx + 1
                                continue 
                            if not ext_call.return_data[0]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + ceil32(return_data.size) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + ceil32(return_data.size) + 68] = 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]
                            return memory
                              from _24442 + _18325 + ceil32(return_data.size) + 68
                               len 32
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] != 3:
                            idx = idx + 1
                            continue 
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        mem[0] = mem[_6111 + 44 len 20]
                        mem[32] = 3
                        require ext_code.size(chainLinkTokenEthPriceFeed[mem[0]])
                        staticcall chainLinkTokenEthPriceFeed[mem[0]].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24442 + _18325 + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24442 + _18325 + ceil32(return_data.size) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        require ext_code.size(ethUsdPriceFeedAddress)
                        staticcall ethUsdPriceFeedAddress.latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24442 + _18325 + ceil32(return_data.size) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24442 + _18325 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[32] * ext_call.return_data[32]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] * ext_call.return_data[32] != 10^10:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68] = 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24442 + _18325 + (2 * ceil32(return_data.size)) + 68
                           len 32
                    _30723 = mem[_12213]
                    mem[64] = _24442 + _18325 + 324
                    mem[_24442 + _18325 + 68] = 0
                    mem[_24442 + _18325 + 100] = 0
                    mem[_24442 + _18325 + 132] = 0
                    mem[_24442 + _18325 + 164] = 0
                    mem[_24442 + _18325 + 196] = 0
                    mem[_24442 + _18325 + 228] = 0
                    mem[_24442 + _18325 + 260] = 0
                    mem[_24442 + _18325 + 292] = 0
                    _30820 = mem[_6111 + 64]
                    mem[_24442 + _18325 + 324] = 0x276c2cba00000000000000000000000000000000000000000000000000000000
                    mem[_24442 + _18325 + 328] = 32
                    _30917 = mem[_30820]
                    mem[_24442 + _18325 + 360] = mem[_30820]
                    s = 0
                    while s < _30917:
                        mem[s + _24442 + _18325 + 392] = mem[s + _30820 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_30917) > _30917:
                        mem[_24442 + _18325 + _30917 + 392] = 0
                    require ext_code.size(address(_30723))
                    staticcall address(_30723).getTokenConfigBySymbol(string rg1) with:
                            gas gas_remaining wei
                           args 32, mem[_24442 + _18325 + 360 len ceil32(_30917) + 32]
                    mem[_24442 + _18325 + 324 len 256] = ext_call.return_data[0 len 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 256
                    require bool(_24442 + _18325 + ceil32(return_data.size) + 580 <= test266151307())
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 324] = ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 356] = ext_call.return_data[32]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 388] = ext_call.return_data[64]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 420] = ext_call.return_data[96]
                    require ext_call.return_data[128] < 3
                    mem[_24442 + _18325 + ceil32(return_data.size) + 452] = ext_call.return_data[128]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 484] = ext_call.return_data[160]
                    require ext_call.return_data[192] == ext_call.return_data[204 len 20]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 516] = ext_call.return_data[192]
                    require ext_call.return_data[224] == bool(ext_call.return_data[224])
                    mem[_24442 + _18325 + ceil32(return_data.size) + 548] = ext_call.return_data[224]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 584] = ext_call.return_data[12 len 20]
                    require ext_code.size(address(_30723))
                    staticcall address(_30723).0xfc57d4df with:
                            gas gas_remaining wei
                           args ext_call.return_data[12 len 20]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 580] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _24442 + _18325 + (2 * ceil32(return_data.size)) + 580
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    mem[_24442 + _18325 + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _24442 + _18325 + ceil32(return_data.size) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require mem[_12213 + 32] <= 3
                    if not mem[_12213 + 32]:
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        require ext_code.size(mem[_12213 + 12 len 20])
                        staticcall mem[_12213 + 12 len 20].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24442 + _18325 + ceil32(return_data.size) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24442 + _18325 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if 10000000000 * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10000000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68] = 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24442 + _18325 + (2 * ceil32(return_data.size)) + 68
                           len 32
                    require mem[_12213 + 32] <= 3
                    if mem[_12213 + 32] != 1:
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] == 2:
                            _31485 = mem[_12213]
                            _31486 = mem[_6111 + 32]
                            mem[_24442 + _18325 + ceil32(return_data.size) + 72] = mem[_6111 + 44 len 20]
                            require ext_code.size(address(_31485))
                            staticcall address(_31485).0x41976e09 with:
                                    gas gas_remaining wei
                                   args address(_31486)
                            mem[_24442 + _18325 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _24442 + _18325 + (2 * ceil32(return_data.size)) + 68
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                idx = idx + 1
                                continue 
                            if not ext_call.return_data[0]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68] = 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]
                            return memory
                              from _24442 + _18325 + (2 * ceil32(return_data.size)) + 68
                               len 32
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] != 3:
                            idx = idx + 1
                            continue 
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        mem[0] = mem[_6111 + 44 len 20]
                        mem[32] = 3
                        require ext_code.size(chainLinkTokenEthPriceFeed[mem[0]])
                        staticcall chainLinkTokenEthPriceFeed[mem[0]].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24442 + _18325 + ceil32(return_data.size) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24442 + _18325 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        require ext_code.size(ethUsdPriceFeedAddress)
                        staticcall ethUsdPriceFeedAddress.latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24442 + _18325 + (4 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24442 + _18325 + (4 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[32] * ext_call.return_data[32]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + (4 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] * ext_call.return_data[32] != 10^10:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24442 + _18325 + (4 * ceil32(return_data.size)) + 68] = 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24442 + _18325 + (4 * ceil32(return_data.size)) + 68
                           len 32
                    _31311 = mem[_12213]
                    mem[64] = _24442 + _18325 + ceil32(return_data.size) + 324
                    mem[_24442 + _18325 + ceil32(return_data.size) + 68] = 0
                    mem[_24442 + _18325 + ceil32(return_data.size) + 100] = 0
                    mem[_24442 + _18325 + ceil32(return_data.size) + 132] = 0
                    mem[_24442 + _18325 + ceil32(return_data.size) + 164] = 0
                    mem[_24442 + _18325 + ceil32(return_data.size) + 196] = 0
                    mem[_24442 + _18325 + ceil32(return_data.size) + 228] = 0
                    mem[_24442 + _18325 + ceil32(return_data.size) + 260] = 0
                    mem[_24442 + _18325 + ceil32(return_data.size) + 292] = 0
                    _31488 = mem[_6111 + 64]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 324] = 0x276c2cba00000000000000000000000000000000000000000000000000000000
                    mem[_24442 + _18325 + ceil32(return_data.size) + 328] = 32
                    _31592 = mem[_31488]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 360] = mem[_31488]
                    s = 0
                    while s < _31592:
                        mem[s + _24442 + _18325 + ceil32(return_data.size) + 392] = mem[s + _31488 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_31592) > _31592:
                        mem[_24442 + _18325 + ceil32(return_data.size) + _31592 + 392] = 0
                    require ext_code.size(address(_31311))
                    staticcall address(_31311).getTokenConfigBySymbol(string rg1) with:
                            gas gas_remaining wei
                           args 32, mem[_24442 + _18325 + ceil32(return_data.size) + 360 len ceil32(_31592) + 32]
                    mem[_24442 + _18325 + ceil32(return_data.size) + 324 len 256] = ext_call.return_data[0 len 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 256
                    require bool(_24442 + _18325 + (2 * ceil32(return_data.size)) + 580 <= test266151307())
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 356] = ext_call.return_data[32]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 388] = ext_call.return_data[64]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 420] = ext_call.return_data[96]
                    require ext_call.return_data[128] < 3
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[128]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 484] = ext_call.return_data[160]
                    require ext_call.return_data[192] == ext_call.return_data[204 len 20]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 516] = ext_call.return_data[192]
                    require ext_call.return_data[224] == bool(ext_call.return_data[224])
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 548] = ext_call.return_data[224]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 584] = ext_call.return_data[12 len 20]
                    require ext_code.size(address(_31311))
                    staticcall address(_31311).0xfc57d4df with:
                            gas gas_remaining wei
                           args ext_call.return_data[12 len 20]
                    mem[_24442 + _18325 + (2 * ceil32(return_data.size)) + 580] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _24442 + _18325 + (4 * ceil32(return_data.size)) + 580
        else:
            mem[_12227 + ceil32(return_data.size) + _12234 + 32] = 0
            _18326 = mem[64]
            mem[64] = mem[64] + 64
            mem[_18326] = 4
            mem[_18326 + 32] = 0x7045544800000000000000000000000000000000000000000000000000000000
            _18340 = mem[64]
            s = 0
            while s < 4:
                mem[s + _18340 + 32] = mem[s + _18326 + 32]
                s = s + 32
                continue 
            mem[_18340 + 36] = 0
            _24414 = mem[64]
            mem[mem[64]] = _18340 + -mem[64] + 4
            mem[64] = _18340 + 36
            _24416 = sha3(mem[_24414 + 32 len mem[_24414]])
            _24443 = mem[_12227 + ceil32(return_data.size)]
            s = 0
            while s < _24443:
                mem[s + _18340 + 68] = mem[s + _12227 + ceil32(return_data.size) + 32]
                s = s + 32
                continue 
            if ceil32(_24443) <= _24443:
                _30409 = mem[64]
                mem[mem[64]] = _24443 + _18340 + -mem[64] + 36
                mem[64] = _24443 + _18340 + 68
                if sha3(mem[_30409 + 32 len mem[_30409]]) == _24416:
                    require mem[_12213 + 32] <= 3
                    if not mem[_12213 + 32]:
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        require ext_code.size(mem[_12213 + 12 len 20])
                        staticcall mem[_12213 + 12 len 20].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24443 + _18340 + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24443 + _18340 + ceil32(return_data.size) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24443 + _18340 + ceil32(return_data.size) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if 10000000000 * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10000000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24443 + _18340 + ceil32(return_data.size) + 68] = 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24443 + _18340 + ceil32(return_data.size) + 68
                           len 32
                    require mem[_12213 + 32] <= 3
                    if mem[_12213 + 32] != 1:
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] == 2:
                            _30788 = mem[_12213]
                            _30789 = mem[_6111 + 32]
                            mem[_24443 + _18340 + 72] = mem[_6111 + 44 len 20]
                            require ext_code.size(address(_30788))
                            staticcall address(_30788).0x41976e09 with:
                                    gas gas_remaining wei
                                   args address(_30789)
                            mem[_24443 + _18340 + 68] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _24443 + _18340 + ceil32(return_data.size) + 68
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                idx = idx + 1
                                continue 
                            if not ext_call.return_data[0]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + ceil32(return_data.size) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + ceil32(return_data.size) + 68] = 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]
                            return memory
                              from _24443 + _18340 + ceil32(return_data.size) + 68
                               len 32
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] != 3:
                            idx = idx + 1
                            continue 
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        mem[0] = mem[_6111 + 44 len 20]
                        mem[32] = 3
                        require ext_code.size(chainLinkTokenEthPriceFeed[mem[0]])
                        staticcall chainLinkTokenEthPriceFeed[mem[0]].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24443 + _18340 + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24443 + _18340 + ceil32(return_data.size) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        require ext_code.size(ethUsdPriceFeedAddress)
                        staticcall ethUsdPriceFeedAddress.latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24443 + _18340 + ceil32(return_data.size) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24443 + _18340 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[32] * ext_call.return_data[32]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] * ext_call.return_data[32] != 10^10:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68] = 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24443 + _18340 + (2 * ceil32(return_data.size)) + 68
                           len 32
                    _30678 = mem[_12213]
                    mem[64] = _24443 + _18340 + 324
                    mem[_24443 + _18340 + 68] = 0
                    mem[_24443 + _18340 + 100] = 0
                    mem[_24443 + _18340 + 132] = 0
                    mem[_24443 + _18340 + 164] = 0
                    mem[_24443 + _18340 + 196] = 0
                    mem[_24443 + _18340 + 228] = 0
                    mem[_24443 + _18340 + 260] = 0
                    mem[_24443 + _18340 + 292] = 0
                    _30791 = mem[_6111 + 64]
                    mem[_24443 + _18340 + 324] = 0x276c2cba00000000000000000000000000000000000000000000000000000000
                    mem[_24443 + _18340 + 328] = 32
                    _30865 = mem[_30791]
                    mem[_24443 + _18340 + 360] = mem[_30791]
                    s = 0
                    while s < _30865:
                        mem[s + _24443 + _18340 + 392] = mem[s + _30791 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_30865) > _30865:
                        mem[_24443 + _18340 + _30865 + 392] = 0
                    require ext_code.size(address(_30678))
                    staticcall address(_30678).getTokenConfigBySymbol(string rg1) with:
                            gas gas_remaining wei
                           args 32, mem[_24443 + _18340 + 360 len ceil32(_30865) + 32]
                    mem[_24443 + _18340 + 324 len 256] = ext_call.return_data[0 len 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 256
                    require bool(_24443 + _18340 + ceil32(return_data.size) + 580 <= test266151307())
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 324] = ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 356] = ext_call.return_data[32]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 388] = ext_call.return_data[64]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 420] = ext_call.return_data[96]
                    require ext_call.return_data[128] < 3
                    mem[_24443 + _18340 + ceil32(return_data.size) + 452] = ext_call.return_data[128]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 484] = ext_call.return_data[160]
                    require ext_call.return_data[192] == ext_call.return_data[204 len 20]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 516] = ext_call.return_data[192]
                    require ext_call.return_data[224] == bool(ext_call.return_data[224])
                    mem[_24443 + _18340 + ceil32(return_data.size) + 548] = ext_call.return_data[224]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 584] = ext_call.return_data[12 len 20]
                    require ext_code.size(address(_30678))
                    staticcall address(_30678).0xfc57d4df with:
                            gas gas_remaining wei
                           args ext_call.return_data[12 len 20]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 580] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _24443 + _18340 + (2 * ceil32(return_data.size)) + 580
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    mem[_24443 + _18340 + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _24443 + _18340 + ceil32(return_data.size) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require mem[_12213 + 32] <= 3
                    if not mem[_12213 + 32]:
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        require ext_code.size(mem[_12213 + 12 len 20])
                        staticcall mem[_12213 + 12 len 20].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24443 + _18340 + ceil32(return_data.size) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24443 + _18340 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if 10000000000 * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10000000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68] = 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24443 + _18340 + (2 * ceil32(return_data.size)) + 68
                           len 32
                    require mem[_12213 + 32] <= 3
                    if mem[_12213 + 32] != 1:
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] == 2:
                            _31410 = mem[_12213]
                            _31411 = mem[_6111 + 32]
                            mem[_24443 + _18340 + ceil32(return_data.size) + 72] = mem[_6111 + 44 len 20]
                            require ext_code.size(address(_31410))
                            staticcall address(_31410).0x41976e09 with:
                                    gas gas_remaining wei
                                   args address(_31411)
                            mem[_24443 + _18340 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _24443 + _18340 + (2 * ceil32(return_data.size)) + 68
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                idx = idx + 1
                                continue 
                            if not ext_call.return_data[0]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68] = 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]
                            return memory
                              from _24443 + _18340 + (2 * ceil32(return_data.size)) + 68
                               len 32
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] != 3:
                            idx = idx + 1
                            continue 
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        mem[0] = mem[_6111 + 44 len 20]
                        mem[32] = 3
                        require ext_code.size(chainLinkTokenEthPriceFeed[mem[0]])
                        staticcall chainLinkTokenEthPriceFeed[mem[0]].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24443 + _18340 + ceil32(return_data.size) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24443 + _18340 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        require ext_code.size(ethUsdPriceFeedAddress)
                        staticcall ethUsdPriceFeedAddress.latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24443 + _18340 + (4 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24443 + _18340 + (4 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[32] * ext_call.return_data[32]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + (4 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] * ext_call.return_data[32] != 10^10:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + (4 * ceil32(return_data.size)) + 68] = 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24443 + _18340 + (4 * ceil32(return_data.size)) + 68
                           len 32
                    _31262 = mem[_12213]
                    mem[64] = _24443 + _18340 + ceil32(return_data.size) + 324
                    mem[_24443 + _18340 + ceil32(return_data.size) + 68] = 0
                    mem[_24443 + _18340 + ceil32(return_data.size) + 100] = 0
                    mem[_24443 + _18340 + ceil32(return_data.size) + 132] = 0
                    mem[_24443 + _18340 + ceil32(return_data.size) + 164] = 0
                    mem[_24443 + _18340 + ceil32(return_data.size) + 196] = 0
                    mem[_24443 + _18340 + ceil32(return_data.size) + 228] = 0
                    mem[_24443 + _18340 + ceil32(return_data.size) + 260] = 0
                    mem[_24443 + _18340 + ceil32(return_data.size) + 292] = 0
                    _31413 = mem[_6111 + 64]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 324] = 0x276c2cba00000000000000000000000000000000000000000000000000000000
                    mem[_24443 + _18340 + ceil32(return_data.size) + 328] = 32
                    _31562 = mem[_31413]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 360] = mem[_31413]
                    s = 0
                    while s < _31562:
                        mem[s + _24443 + _18340 + ceil32(return_data.size) + 392] = mem[s + _31413 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_31562) > _31562:
                        mem[_24443 + _18340 + ceil32(return_data.size) + _31562 + 392] = 0
                    require ext_code.size(address(_31262))
                    staticcall address(_31262).getTokenConfigBySymbol(string rg1) with:
                            gas gas_remaining wei
                           args 32, mem[_24443 + _18340 + ceil32(return_data.size) + 360 len ceil32(_31562) + 32]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 324 len 256] = ext_call.return_data[0 len 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 256
                    require bool(_24443 + _18340 + (2 * ceil32(return_data.size)) + 580 <= test266151307())
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 356] = ext_call.return_data[32]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 388] = ext_call.return_data[64]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 420] = ext_call.return_data[96]
                    require ext_call.return_data[128] < 3
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[128]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 484] = ext_call.return_data[160]
                    require ext_call.return_data[192] == ext_call.return_data[204 len 20]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 516] = ext_call.return_data[192]
                    require ext_call.return_data[224] == bool(ext_call.return_data[224])
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 548] = ext_call.return_data[224]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 584] = ext_call.return_data[12 len 20]
                    require ext_code.size(address(_31262))
                    staticcall address(_31262).0xfc57d4df with:
                            gas gas_remaining wei
                           args ext_call.return_data[12 len 20]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 580] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _24443 + _18340 + (4 * ceil32(return_data.size)) + 580
            else:
                mem[_18340 + _24443 + 68] = 0
                _30437 = mem[64]
                mem[mem[64]] = _24443 + _18340 + -mem[64] + 36
                mem[64] = _24443 + _18340 + 68
                if sha3(mem[_30437 + 32 len mem[_30437]]) == _24416:
                    require mem[_12213 + 32] <= 3
                    if not mem[_12213 + 32]:
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        require ext_code.size(mem[_12213 + 12 len 20])
                        staticcall mem[_12213 + 12 len 20].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24443 + _18340 + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24443 + _18340 + ceil32(return_data.size) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24443 + _18340 + ceil32(return_data.size) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if 10000000000 * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10000000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24443 + _18340 + ceil32(return_data.size) + 68] = 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24443 + _18340 + ceil32(return_data.size) + 68
                           len 32
                    require mem[_12213 + 32] <= 3
                    if mem[_12213 + 32] != 1:
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] == 2:
                            _30827 = mem[_12213]
                            _30828 = mem[_6111 + 32]
                            mem[_24443 + _18340 + 72] = mem[_6111 + 44 len 20]
                            require ext_code.size(address(_30827))
                            staticcall address(_30827).0x41976e09 with:
                                    gas gas_remaining wei
                                   args address(_30828)
                            mem[_24443 + _18340 + 68] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _24443 + _18340 + ceil32(return_data.size) + 68
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                idx = idx + 1
                                continue 
                            if not ext_call.return_data[0]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + ceil32(return_data.size) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + ceil32(return_data.size) + 68] = 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]
                            return memory
                              from _24443 + _18340 + ceil32(return_data.size) + 68
                               len 32
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] != 3:
                            idx = idx + 1
                            continue 
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        mem[0] = mem[_6111 + 44 len 20]
                        mem[32] = 3
                        require ext_code.size(chainLinkTokenEthPriceFeed[mem[0]])
                        staticcall chainLinkTokenEthPriceFeed[mem[0]].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24443 + _18340 + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24443 + _18340 + ceil32(return_data.size) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        require ext_code.size(ethUsdPriceFeedAddress)
                        staticcall ethUsdPriceFeedAddress.latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24443 + _18340 + ceil32(return_data.size) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24443 + _18340 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[32] * ext_call.return_data[32]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] * ext_call.return_data[32] != 10^10:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68] = 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24443 + _18340 + (2 * ceil32(return_data.size)) + 68
                           len 32
                    _30731 = mem[_12213]
                    mem[64] = _24443 + _18340 + 324
                    mem[_24443 + _18340 + 68] = 0
                    mem[_24443 + _18340 + 100] = 0
                    mem[_24443 + _18340 + 132] = 0
                    mem[_24443 + _18340 + 164] = 0
                    mem[_24443 + _18340 + 196] = 0
                    mem[_24443 + _18340 + 228] = 0
                    mem[_24443 + _18340 + 260] = 0
                    mem[_24443 + _18340 + 292] = 0
                    _30830 = mem[_6111 + 64]
                    mem[_24443 + _18340 + 324] = 0x276c2cba00000000000000000000000000000000000000000000000000000000
                    mem[_24443 + _18340 + 328] = 32
                    _30937 = mem[_30830]
                    mem[_24443 + _18340 + 360] = mem[_30830]
                    s = 0
                    while s < _30937:
                        mem[s + _24443 + _18340 + 392] = mem[s + _30830 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_30937) > _30937:
                        mem[_24443 + _18340 + _30937 + 392] = 0
                    require ext_code.size(address(_30731))
                    staticcall address(_30731).getTokenConfigBySymbol(string rg1) with:
                            gas gas_remaining wei
                           args 32, mem[_24443 + _18340 + 360 len ceil32(_30937) + 32]
                    mem[_24443 + _18340 + 324 len 256] = ext_call.return_data[0 len 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 256
                    require bool(_24443 + _18340 + ceil32(return_data.size) + 580 <= test266151307())
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 324] = ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 356] = ext_call.return_data[32]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 388] = ext_call.return_data[64]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 420] = ext_call.return_data[96]
                    require ext_call.return_data[128] < 3
                    mem[_24443 + _18340 + ceil32(return_data.size) + 452] = ext_call.return_data[128]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 484] = ext_call.return_data[160]
                    require ext_call.return_data[192] == ext_call.return_data[204 len 20]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 516] = ext_call.return_data[192]
                    require ext_call.return_data[224] == bool(ext_call.return_data[224])
                    mem[_24443 + _18340 + ceil32(return_data.size) + 548] = ext_call.return_data[224]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 584] = ext_call.return_data[12 len 20]
                    require ext_code.size(address(_30731))
                    staticcall address(_30731).0xfc57d4df with:
                            gas gas_remaining wei
                           args ext_call.return_data[12 len 20]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 580] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _24443 + _18340 + (2 * ceil32(return_data.size)) + 580
                else:
                    require ext_code.size(arg1)
                    staticcall arg1.underlying() with:
                            gas gas_remaining wei
                    mem[_24443 + _18340 + 68] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _24443 + _18340 + ceil32(return_data.size) + 68
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    require mem[_12213 + 32] <= 3
                    if not mem[_12213 + 32]:
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        require ext_code.size(mem[_12213 + 12 len 20])
                        staticcall mem[_12213 + 12 len 20].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24443 + _18340 + ceil32(return_data.size) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24443 + _18340 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if 10000000000 * 10^18 * ext_call.return_data[32] / ext_call.return_data[32] != 10000000000 * 10^18:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68] = 10000000000 * 10^18 * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24443 + _18340 + (2 * ceil32(return_data.size)) + 68
                           len 32
                    require mem[_12213 + 32] <= 3
                    if mem[_12213 + 32] != 1:
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] == 2:
                            _31507 = mem[_12213]
                            _31508 = mem[_6111 + 32]
                            mem[_24443 + _18340 + ceil32(return_data.size) + 72] = mem[_6111 + 44 len 20]
                            require ext_code.size(address(_31507))
                            staticcall address(_31507).0x41976e09 with:
                                    gas gas_remaining wei
                                   args address(_31508)
                            mem[_24443 + _18340 + ceil32(return_data.size) + 68] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _24443 + _18340 + (2 * ceil32(return_data.size)) + 68
                            require return_data.size >= 32
                            if ext_call.return_data[0] <= 0:
                                idx = idx + 1
                                continue 
                            if not ext_call.return_data[0]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10000000000 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10000000000 * 10^18:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68] = 10000000000 * 10^18 * ext_call.return_data[0] / mem[_6111 + 96]
                            return memory
                              from _24443 + _18340 + (2 * ceil32(return_data.size)) + 68
                               len 32
                        require mem[_12213 + 32] <= 3
                        if mem[_12213 + 32] != 3:
                            idx = idx + 1
                            continue 
                        if mem[_6111 + 96] <= 0:
                            revert with 0, 'baseUnit must be greater than zero'
                        mem[0] = mem[_6111 + 44 len 20]
                        mem[32] = 3
                        require ext_code.size(chainLinkTokenEthPriceFeed[mem[0]])
                        staticcall chainLinkTokenEthPriceFeed[mem[0]].latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24443 + _18340 + ceil32(return_data.size) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24443 + _18340 + (2 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        require ext_code.size(ethUsdPriceFeedAddress)
                        staticcall ethUsdPriceFeedAddress.latestRoundData() with:
                                gas gas_remaining wei
                        mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 68 len 160] = ext_call.return_data[0 len 160]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _24443 + _18340 + (4 * ceil32(return_data.size)) + 68
                        require return_data.size >= 160
                        require ext_call.return_data[0] == ext_call.return_data[22 len 10]
                        require ext_call.return_data[128] == ext_call.return_data[150 len 10]
                        if ext_call.return_data[32] <= 0:
                            idx = idx + 1
                            continue 
                        if not ext_call.return_data[32]:
                            if mem[_6111 + 96] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require mem[_6111 + 96]
                            if not 0 / mem[_6111 + 96]:
                                idx = idx + 1
                                continue 
                            mem[_24443 + _18340 + (4 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                        else:
                            if ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] != ext_call.return_data[32]:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[32] * ext_call.return_data[32]:
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 0 / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + (4 * ceil32(return_data.size)) + 68] = 0 / mem[_6111 + 96]
                            else:
                                if 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / ext_call.return_data[32] * ext_call.return_data[32] != 10^10:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                if mem[_6111 + 96] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require mem[_6111 + 96]
                                if not 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]:
                                    idx = idx + 1
                                    continue 
                                mem[_24443 + _18340 + (4 * ceil32(return_data.size)) + 68] = 10^10 * ext_call.return_data[32] * ext_call.return_data[32] / mem[_6111 + 96]
                        return memory
                          from _24443 + _18340 + (4 * ceil32(return_data.size)) + 68
                           len 32
                    _31323 = mem[_12213]
                    mem[64] = _24443 + _18340 + ceil32(return_data.size) + 324
                    mem[_24443 + _18340 + ceil32(return_data.size) + 68] = 0
                    mem[_24443 + _18340 + ceil32(return_data.size) + 100] = 0
                    mem[_24443 + _18340 + ceil32(return_data.size) + 132] = 0
                    mem[_24443 + _18340 + ceil32(return_data.size) + 164] = 0
                    mem[_24443 + _18340 + ceil32(return_data.size) + 196] = 0
                    mem[_24443 + _18340 + ceil32(return_data.size) + 228] = 0
                    mem[_24443 + _18340 + ceil32(return_data.size) + 260] = 0
                    mem[_24443 + _18340 + ceil32(return_data.size) + 292] = 0
                    _31510 = mem[_6111 + 64]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 324] = 0x276c2cba00000000000000000000000000000000000000000000000000000000
                    mem[_24443 + _18340 + ceil32(return_data.size) + 328] = 32
                    _31618 = mem[_31510]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 360] = mem[_31510]
                    s = 0
                    while s < _31618:
                        mem[s + _24443 + _18340 + ceil32(return_data.size) + 392] = mem[s + _31510 + 32]
                        s = s + 32
                        continue 
                    if ceil32(_31618) > _31618:
                        mem[_24443 + _18340 + ceil32(return_data.size) + _31618 + 392] = 0
                    require ext_code.size(address(_31323))
                    staticcall address(_31323).getTokenConfigBySymbol(string rg1) with:
                            gas gas_remaining wei
                           args 32, mem[_24443 + _18340 + ceil32(return_data.size) + 360 len ceil32(_31618) + 32]
                    mem[_24443 + _18340 + ceil32(return_data.size) + 324 len 256] = ext_call.return_data[0 len 256]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 256
                    require bool(_24443 + _18340 + (2 * ceil32(return_data.size)) + 580 <= test266151307())
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 324] = ext_call.return_data[0]
                    require ext_call.return_data[32] == ext_call.return_data[44 len 20]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 356] = ext_call.return_data[32]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 388] = ext_call.return_data[64]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 420] = ext_call.return_data[96]
                    require ext_call.return_data[128] < 3
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 452] = ext_call.return_data[128]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 484] = ext_call.return_data[160]
                    require ext_call.return_data[192] == ext_call.return_data[204 len 20]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 516] = ext_call.return_data[192]
                    require ext_call.return_data[224] == bool(ext_call.return_data[224])
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 548] = ext_call.return_data[224]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 584] = ext_call.return_data[12 len 20]
                    require ext_code.size(address(_31323))
                    staticcall address(_31323).0xfc57d4df with:
                            gas gas_remaining wei
                           args ext_call.return_data[12 len 20]
                    mem[_24443 + _18340 + (2 * ceil32(return_data.size)) + 580] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _24443 + _18340 + (4 * ceil32(return_data.size)) + 580
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            idx = idx + 1
            continue 
        return ext_call.return_data[0]
    revert with 0, 'price must bigger than zero'
}



}
