contract main {




// =====================  Runtime code  =====================


#
#  - openPosition(uint256 arg1, uint256 arg2, bool arg3, uint256 arg4)
#  - closePosition(uint256 arg1, uint256 arg2, bool arg3)
#  - redeem(uint256 arg1, uint256 arg2)
#  - releaseMargin(uint256 arg1)
#  - stake(uint256 arg1)
#  - sub_cd84db09(?)
#  - addMargin(uint256 arg1, uint256 arg2)
#
address owner;
address liquidatorAddress;
address usdcAddress;
address oracleAddress;
address protocolAddress;
uint256 sub_eee8a168;
uint256 sub_75506c96;
uint256 sub_5f3b2180;
uint256 sub_a0448fc5;
uint256 stor10;
uint8 stor11;
uint8 stor11; offset 8
uint256 stor11; offset 8
uint64 stor12;
uint128 stor12;
uint128 stor12; offset 96
uint32 stor13;
uint32 stor13; offset 224
uint64 stor13;
uint128 stor13;
uint32 stor14;
uint32 stor14; offset 32
mapping of struct product;
mapping of struct stor16;
mapping of struct position;

function usdc() payable {
    return usdcAddress
}

function liquidator() payable {
    return liquidatorAddress
}

function sub_5f3b2180(?) payable {
    return sub_5f3b2180
}

function sub_75506c96(?) payable {
    return sub_75506c96
}

function oracle() payable {
    return oracleAddress
}

function protocol() payable {
    return protocolAddress
}

function owner() payable {
    return owner
}

function sub_a0448fc5(?) payable {
    return sub_a0448fc5
}

function getProduct(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return product[arg1].field_0, 
           product[arg1].field_0,
           product[arg1].field_0,
           bool(product[arg1].field_248),
           product[arg1].field_256,
           product[arg1].field_256,
           product[arg1].field_256,
           product[arg1].field_256,
           product[arg1].field_256,
           product[arg1].field_256,
           product[arg1].field_256,
           product[arg1].field_512
}

function getPosition(address arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    return position[arg1][arg2][Mask(8, 248, arg3) >> 248].field_0, 
           position[arg1][arg2][Mask(8, 248, arg3) >> 248].field_0,
           position[arg1][arg2][Mask(8, 248, arg3) >> 248].field_0,
           position[arg1][arg2][Mask(8, 248, arg3) >> 248].field_0,
           position[arg1][arg2][Mask(8, 248, arg3) >> 248].field_256,
           position[arg1][arg2][Mask(8, 248, arg3) >> 248].field_256,
           position[arg1][arg2][Mask(8, 248, arg3) >> 248].field_512,
           bool(position[arg1][arg2][Mask(8, 248, arg3) >> 248].field_592)
}

function sub_eee8a168(?) payable {
    return sub_eee8a168
}

function _fallback() payable {
    revert
}

function sub_b926a95b(?) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    stor10 = arg1
}

function setOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    oracleAddress = arg1
}

function setLiquidator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    liquidatorAddress = arg1
}

function setCanUserStake(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    uint8(stor11.field_0) = uint8(arg1)
}

function setOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    owner = arg1
    emit OwnerUpdated(arg1);
}

function getPositionId(address arg1, uint256 arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg3 == arg3
    return sha3(arg1, arg2, Mask(8, 248, arg3) >> 248)
}

function setAllowPublicLiquidator(bool arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    Mask(248, 0, stor11.field_8) = Mask(248, 0, arg1)
}

function setProtocolAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!owner'
    protocolAddress = arg1
    emit ProtocolUpdated(arg1);
}

function setProtocolRewardRatio(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!owner'
    if arg1 > 10000:
        revert with 0, '!too-much'
    sub_5f3b2180 = arg1
    emit ProtocolFeeUpdated(arg1);
}

function getVault() payable {
    return Mask(96, 0, stor12.field_0), 
           Mask(96, 0, stor12.field_0),
           uint64(stor12.field_0),
           uint64(stor13.field_0),
           Mask(80, 0, stor13.field_0),
           Mask(80, 0, stor13.field_0),
           uint32(stor13.field_0),
           uint32(stor14.field_0),
           uint32(stor14.field_32)
}

function sub_eda6b1bb(?) payable {
    require calldata.size - 4 >= 288
    require arg1 == Mask(96, 0, arg1)
    require arg2 == Mask(96, 0, arg2)
    require arg3 == uint64(arg3)
    require arg4 == uint64(arg4)
    require arg5 == Mask(80, 0, arg5)
    require arg6 == Mask(80, 0, arg6)
    require arg7 == uint32(arg7)
    require arg8 == uint32(arg8)
    require arg9 == uint32(arg9)
    if owner != msg.sender:
        revert with 0, '!owner'
    if not Mask(96, 0, arg1):
        revert with 0, '!cap'
    if uint32(arg9) <= 0:
        revert with 0, '!maxDailyDrawdown'
    if uint32(arg7) <= 0:
        revert with 0, '!stakingPeriod'
    if uint32(arg8) <= 0:
        revert with 0, '!redemptionPeriod'
    Mask(96, 0, stor12.field_0) = Mask(96, 0, arg1)
    uint32(stor13.field_224) = uint32(arg7)
    uint32(stor14.field_0) = uint32(arg8)
    uint32(stor14.field_32) = uint32(arg9)
    emit 0xee08f565: Mask(96, 0, stor12.field_0), uint64(stor12.field_0), uint64(stor12.field_0), uint64(stor13.field_0), Mask(80, 0, stor13.field_0), 0, uint32(stor13.field_0), uint32(stor14.field_0), uint32(stor14.field_32)
}

function sub_6b27e05d(?) payable {
    require calldata.size - 4 >= 416
    require calldata.size - 36 >= 384
    require arg2 == address(arg2)
    require arg3 == Mask(72, 0, arg3)
    require arg4 == uint16(arg4)
    require arg5 == bool(arg5)
    require arg6 == uint64(arg6)
    require arg7 == uint64(arg7)
    require arg8 == uint64(arg8)
    require arg9 == uint16(arg9)
    require arg10 == uint16(arg10)
    require arg11 == uint16(arg11)
    require arg12 == uint16(arg12)
    require arg13 == uint64(arg13)
    if owner != msg.sender:
        revert with 0, '!owner'
    if product[arg1].field_160:
        revert with 0, '!product-exists'
    if Mask(72, 0, arg3) <= 0:
        revert with 0, '!max-leverage'
    if not address(arg2):
        revert with 0, '!feed'
    if uint16(arg10) <= 0:
        revert with 0, '!liquidationThreshold'
    product[arg1].field_0 = address(arg2)
    product[arg1].field_160 = Mask(72, 0, arg3)
    product[arg1].field_232 = uint16(arg4)
    product[arg1].field_248 = 1
    product[arg1].field_256 = uint64(arg6)
    product[arg1].field_320 = 0
    product[arg1].field_512 = 0
    product[arg1].field_384 = 0
    product[arg1].field_512 = 0
    product[arg1].field_448 = uint16(arg9)
    product[arg1].field_464 = uint16(arg10)
    product[arg1].field_480 = uint16(arg11)
    product[arg1].field_496 = uint16(arg12)
    product[arg1].field_512 = uint64(arg13)
    emit 0xf44cf251: arg1, product[arg1].field_0, 0, 0, bool(uint8(product[arg1].field_0) >> 248), product[arg1].field_256, product[arg1].field_256, 0, 0, 0, 0, product[arg1].field_256, product[arg1].field_512
}

function sub_1970203c(?) payable {
    require calldata.size - 4 >= 416
    require calldata.size - 36 >= 384
    require arg2 == address(arg2)
    require arg3 == Mask(72, 0, arg3)
    require arg4 == uint16(arg4)
    require arg5 == bool(arg5)
    require arg6 == uint64(arg6)
    require arg7 == uint64(arg7)
    require arg8 == uint64(arg8)
    require arg9 == uint16(arg9)
    require arg10 == uint16(arg10)
    require arg11 == uint16(arg11)
    require arg12 == uint16(arg12)
    require arg13 == uint64(arg13)
    if owner != msg.sender:
        revert with 0, '!owner'
    if not product[arg1].field_160:
        revert with 0, '!product-exists'
    if Mask(72, 0, arg3) < 100 * 10^6:
        revert with 0, '!max-leverage'
    if not address(arg2):
        revert with 0, '!feed'
    if uint16(arg10) <= 0:
        revert with 0, '!liquidationThreshold'
    product[arg1].field_0 = address(arg2)
    product[arg1].field_160 = Mask(72, 0, arg3)
    product[arg1].field_232 = uint16(arg4)
    product[arg1].field_248 = uint8(bool(arg5))
    product[arg1].field_256 = uint64(arg6)
    product[arg1].field_256 = Mask(208, 0, 0xffffffffffff0000ffffffffffffffffffffffffffffffff0000000000000000 and product[arg1].field_256)
    product[arg1].field_448 = uint16(arg9)
    product[arg1].field_464 = uint16(arg10)
    product[arg1].field_480 = uint16(arg11)
    product[arg1].field_496 = Mask(16, 240, 0xffffffffffff0000ffffffffffffffffffffffffffffffff0000000000000000 and product[arg1].field_256) >> 240
    emit 0xe837644b: arg1, product[arg1].field_0, 0, 0, bool(uint8(product[arg1].field_0) >> 248), product[arg1].field_256, product[arg1].field_256, 0, 0, 0, 0, product[arg1].field_256, product[arg1].field_512
}

function canLiquidate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x41976e09 with:
            gas gas_remaining wei
           args product[stor17[arg1].field_0].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if position[arg1].field_128 and product[stor17[arg1].field_0].field_464 > -1 / position[arg1].field_128:
        revert with 0, 17
    if position[arg1].field_128 * product[stor17[arg1].field_0].field_464 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not position[arg1].field_64:
        revert with 0, 18
    if not position[arg1].field_592:
        if position[arg1].field_0 > !(10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64):
            revert with 0, 17
        if not position[arg1].field_592:
            if position[arg1].field_592:
                return 0
            if ext_call.return_data[0] < position[arg1].field_0 + (10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64):
                return 0
        else:
            if ext_call.return_data[0] > position[arg1].field_0 + (10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64):
                if position[arg1].field_592:
                    return 0
                if ext_call.return_data[0] < position[arg1].field_0 + (10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64):
                    return 0
    else:
        if position[arg1].field_0 < 10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64:
            revert with 0, 17
        if not position[arg1].field_592:
            if position[arg1].field_592:
                return 0
            if ext_call.return_data[0] < position[arg1].field_0 - (10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64):
                return 0
        else:
            if ext_call.return_data[0] > position[arg1].field_0 - (10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64):
                if position[arg1].field_592:
                    return 0
                if ext_call.return_data[0] < position[arg1].field_0 - (10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64):
                    return 0
    return 1
}

function sub_1741cf2a(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 16
            _27 = mem[64]
            mem[64] = mem[64] + 128
            mem[_27] = stor16[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_27 + 32] = stor16[cd[((32 * idx) + cd[4] + 36)]].field_160
            mem[_27 + 64] = stor16[cd[((32 * idx) + cd[4] + 36)]].field_256
            mem[_27 + 96] = stor16[cd[((32 * idx) + cd[4] + 36)]].field_320
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _27
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _29 = mem[64]
        mem[mem[64]] = 32
        _30 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = 128
        t = mem[64] + 64
        while idx < _30:
            _48 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_48 + 56 len 8]
            mem[t + 64] = mem[_48 + 88 len 8]
            mem[t + 96] = mem[_48 + 124 len 4]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _29 + (128 * _30) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 256
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[128] = (32 * ('cd', 4).length) + 128
    s = 128
    idx = ('cd', 4).length
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 16
        _55 = mem[64]
        mem[64] = mem[64] + 128
        mem[_55] = stor16[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_55 + 32] = stor16[cd[((32 * idx) + cd[4] + 36)]].field_160
        mem[_55 + 64] = stor16[cd[((32 * idx) + cd[4] + 36)]].field_256
        mem[_55 + 96] = stor16[cd[((32 * idx) + cd[4] + 36)]].field_320
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _55
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _57 = mem[64]
    mem[mem[64]] = 32
    _58 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = 128
    t = mem[64] + 64
    while idx < _58:
        _65 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_65 + 56 len 8]
        mem[t + 64] = mem[_65 + 88 len 8]
        mem[t + 96] = mem[_65 + 124 len 4]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _57 + (128 * _58) + -mem[64] + 64
}

function sub_4c723c28(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    mem[64] = (32 * ('cd', 4).length) + 128
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 17
            _35 = mem[64]
            mem[64] = mem[64] + 256
            mem[_35] = position[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_35 + 32] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
            mem[_35 + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
            mem[_35 + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_192
            mem[_35 + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
            mem[_35 + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_320
            mem[_35 + 192] = position[cd[((32 * idx) + cd[4] + 36)]].field_512
            mem[_35 + 224] = bool(position[cd[((32 * idx) + cd[4] + 36)]].field_592)
            if idx >= mem[96]:
                revert with 0, 50
            mem[(32 * idx) + 128] = _35
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _37 = mem[64]
        mem[mem[64]] = 32
        _38 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _38:
            _65 = mem[t]
            mem[s] = mem[mem[t] + 24 len 8]
            mem[s + 32] = mem[_65 + 56 len 8]
            mem[s + 64] = mem[_65 + 88 len 8]
            mem[s + 96] = mem[_65 + 120 len 8]
            mem[s + 128] = mem[_65 + 152 len 8]
            mem[s + 160] = mem[_65 + 172 len 20]
            mem[s + 192] = mem[_65 + 214 len 10]
            mem[s + 224] = bool(mem[_65 + 224])
            idx = idx + 1
            s = s + 256
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _37 + (256 * _38) + -mem[64] + 64
    mem[64] = (32 * ('cd', 4).length) + 384
    mem[(32 * ('cd', 4).length) + 128] = 0
    mem[(32 * ('cd', 4).length) + 160] = 0
    mem[(32 * ('cd', 4).length) + 192] = 0
    mem[(32 * ('cd', 4).length) + 224] = 0
    mem[(32 * ('cd', 4).length) + 256] = 0
    mem[(32 * ('cd', 4).length) + 288] = 0
    mem[(32 * ('cd', 4).length) + 320] = 0
    mem[(32 * ('cd', 4).length) + 352] = 0
    mem[var15001] = (32 * ('cd', 4).length) + 128
    s = var15001
    idx = var15002
    while idx - 1:
        mem[64] = mem[64] + 256
        mem[(32 * ('cd', 4).length) + 128] = 0
        mem[(32 * ('cd', 4).length) + 160] = 0
        mem[(32 * ('cd', 4).length) + 192] = 0
        mem[(32 * ('cd', 4).length) + 224] = 0
        mem[(32 * ('cd', 4).length) + 256] = 0
        mem[(32 * ('cd', 4).length) + 288] = 0
        mem[(32 * ('cd', 4).length) + 320] = 0
        mem[(32 * ('cd', 4).length) + 352] = 0
        mem[s + 32] = (32 * ('cd', 4).length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = cd[((32 * idx) + cd[4] + 36)]
        mem[32] = 17
        _91 = mem[64]
        mem[64] = mem[64] + 256
        mem[_91] = position[cd[((32 * idx) + cd[4] + 36)]].field_0
        mem[_91 + 32] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
        mem[_91 + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
        mem[_91 + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_192
        mem[_91 + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
        mem[_91 + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_320
        mem[_91 + 192] = position[cd[((32 * idx) + cd[4] + 36)]].field_512
        mem[_91 + 224] = bool(position[cd[((32 * idx) + cd[4] + 36)]].field_592)
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = _91
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    _93 = mem[64]
    mem[mem[64]] = 32
    _94 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _94:
        _105 = mem[t]
        mem[s] = mem[mem[t] + 24 len 8]
        mem[s + 32] = mem[_105 + 56 len 8]
        mem[s + 64] = mem[_105 + 88 len 8]
        mem[s + 96] = mem[_105 + 120 len 8]
        mem[s + 128] = mem[_105 + 152 len 8]
        mem[s + 160] = mem[_105 + 172 len 20]
        mem[s + 192] = mem[_105 + 214 len 10]
        mem[s + 224] = bool(mem[_105 + 224])
        idx = idx + 1
        s = s + 256
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _93 + (256 * _94) + -mem[64] + 64
}

function liquidatePosition(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not position[arg1].field_0:
        return 0
    require ext_code.size(oracleAddress)
    staticcall oracleAddress.0x41976e09 with:
            gas gas_remaining wei
           args product[stor17[arg1].field_0].field_0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if position[arg1].field_128 and product[stor17[arg1].field_0].field_464 > -1 / position[arg1].field_128:
        revert with 0, 17
    if position[arg1].field_128 * product[stor17[arg1].field_0].field_464 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
        revert with 0, 17
    if not position[arg1].field_64:
        revert with 0, 18
    if not position[arg1].field_592:
        if position[arg1].field_0 > !(10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64):
            revert with 0, 17
        if not position[arg1].field_592:
            if position[arg1].field_592:
                return 0
            if ext_call.return_data[0] < position[arg1].field_0 + (10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64):
                return 0
        else:
            if ext_call.return_data[0] > position[arg1].field_0 + (10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64):
                if position[arg1].field_592:
                    return 0
                if ext_call.return_data[0] < position[arg1].field_0 + (10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64):
                    return 0
    else:
        if position[arg1].field_0 < 10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64:
            revert with 0, 17
        if not position[arg1].field_592:
            if position[arg1].field_592:
                return 0
            if ext_call.return_data[0] < position[arg1].field_0 - (10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64):
                return 0
        else:
            if ext_call.return_data[0] > position[arg1].field_0 - (10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64):
                if position[arg1].field_592:
                    return 0
                if ext_call.return_data[0] < position[arg1].field_0 - (10000 * position[arg1].field_0 * product[stor17[arg1].field_0].field_464 / position[arg1].field_64):
                    return 0
    if not position[arg1].field_592:
        if ext_call.return_data[0] <= position[arg1].field_128:
            if position[arg1].field_128 < ext_call.return_data[0]:
                revert with 0, 17
            if position[arg1].field_256 and position[arg1].field_64 > -1 / position[arg1].field_256:
                revert with 0, 17
            if position[arg1].field_256 * position[arg1].field_64 and position[arg1].field_0 - ext_call.return_data[0] > -1 / position[arg1].field_256 * position[arg1].field_64:
                revert with 0, 17
            if not position[arg1].field_128:
                revert with 0, 18
            if Mask(96, 0, stor12.field_96) > -position[arg1].field_256 + test266151307():
                revert with 0, 17
            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[arg1].field_256 + Mask(96, 0, stor12.field_96))
            if position[arg1].field_256 and position[arg1].field_64 > -1 / position[arg1].field_256:
                revert with 0, 17
            if not position[arg1].field_592:
                if position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6 > product[stor17[arg1].field_0].field_384:
                    product[stor17[arg1].field_0].field_384 = 0
                else:
                    if product[stor17[arg1].field_0].field_384 < uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6):
                        revert with 0, 17
                    product[stor17[arg1].field_0].field_384 = uint64(product[stor17[arg1].field_0].field_384 - uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6))
            else:
                if position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6 > product[stor17[arg1].field_0].field_320:
                    product[stor17[arg1].field_0].field_320 = 0
                else:
                    if product[stor17[arg1].field_0].field_320 < uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6):
                        revert with 0, 17
                    product[stor17[arg1].field_0].field_320 = uint64(product[stor17[arg1].field_0].field_320 - uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6))
            emit ClosePosition(arg1, ext_call.return_data[0], position[arg1].field_0, position[arg1].field_256, position[arg1].field_0, position[arg1].field_256, 1, 1, position[arg1].field_320, position[arg1].field_0, 1);
            position[arg1].field_0 = 0
            position[arg1].field_256 = 0
            position[arg1].field_512 = 0
            emit PositionLiquidated(0, 0, position[arg1].field_256, arg1, msg.sender);
            return 0
        if ext_call.return_data[0] < position[arg1].field_128:
            revert with 0, 17
        if position[arg1].field_256 and position[arg1].field_64 > -1 / position[arg1].field_256:
            revert with 0, 17
        if position[arg1].field_256 * position[arg1].field_64 and ext_call.return_data[0] - position[arg1].field_0 > -1 / position[arg1].field_256 * position[arg1].field_64:
            revert with 0, 17
        if not position[arg1].field_128:
            revert with 0, 18
        if position[arg1].field_256 <= (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6:
            if Mask(96, 0, stor12.field_96) > -position[arg1].field_256 + test266151307():
                revert with 0, 17
            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[arg1].field_256 + Mask(96, 0, stor12.field_96))
            if position[arg1].field_256 and position[arg1].field_64 > -1 / position[arg1].field_256:
                revert with 0, 17
            if not position[arg1].field_592:
                if position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6 > product[stor17[arg1].field_0].field_384:
                    product[stor17[arg1].field_0].field_384 = 0
                else:
                    if product[stor17[arg1].field_0].field_384 < uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6):
                        revert with 0, 17
                    product[stor17[arg1].field_0].field_384 = uint64(product[stor17[arg1].field_0].field_384 - uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6))
            else:
                if position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6 > product[stor17[arg1].field_0].field_320:
                    product[stor17[arg1].field_0].field_320 = 0
                else:
                    if product[stor17[arg1].field_0].field_320 < uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6):
                        revert with 0, 17
                    product[stor17[arg1].field_0].field_320 = uint64(product[stor17[arg1].field_0].field_320 - uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6))
            emit ClosePosition(arg1, ext_call.return_data[0], position[arg1].field_0, position[arg1].field_256, position[arg1].field_0, position[arg1].field_256, 1, 1, position[arg1].field_320, position[arg1].field_0, 1);
            position[arg1].field_0 = 0
            position[arg1].field_256 = 0
            position[arg1].field_512 = 0
            emit PositionLiquidated(0, 0, position[arg1].field_256, arg1, msg.sender);
            return 0
        if position[arg1].field_256 < (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6:
            revert with 0, 17
        if position[arg1].field_256 - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6) and product[stor17[arg1].field_0].field_480 > -1 / position[arg1].field_256 - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6):
            revert with 0, 17
        if position[arg1].field_256 < (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6:
            revert with 0, 17
        if position[arg1].field_256 - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[arg1].field_256 - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6):
            revert with 0, 17
        if position[arg1].field_256 < (position[arg1].field_256 * product[stor17[arg1].field_0].field_480) - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6 * product[stor17[arg1].field_0].field_480) / 10000:
            revert with 0, 17
        if position[arg1].field_256 - ((position[arg1].field_256 * product[stor17[arg1].field_0].field_480) - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6 * product[stor17[arg1].field_0].field_480) / 10000) < (position[arg1].field_256 * sub_5f3b2180) - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
            revert with 0, 17
        if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[arg1].field_256 - ((position[arg1].field_256 * product[stor17[arg1].field_0].field_480) - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6 * product[stor17[arg1].field_0].field_480) / 10000) - ((position[arg1].field_256 * sub_5f3b2180) - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
            revert with 0, 17
        Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[arg1].field_256 - ((position[arg1].field_256 * product[stor17[arg1].field_0].field_480) - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6 * product[stor17[arg1].field_0].field_480) / 10000) - ((position[arg1].field_256 * sub_5f3b2180) - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
        if position[arg1].field_256 and position[arg1].field_64 > -1 / position[arg1].field_256:
            revert with 0, 17
        if not position[arg1].field_592:
            if position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6 > product[stor17[arg1].field_0].field_384:
                product[stor17[arg1].field_0].field_384 = 0
            else:
                if product[stor17[arg1].field_0].field_384 < uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6):
                    revert with 0, 17
                product[stor17[arg1].field_0].field_384 = uint64(product[stor17[arg1].field_0].field_384 - uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6))
        else:
            if position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6 > product[stor17[arg1].field_0].field_320:
                product[stor17[arg1].field_0].field_320 = 0
            else:
                if product[stor17[arg1].field_0].field_320 < uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6):
                    revert with 0, 17
                product[stor17[arg1].field_0].field_320 = uint64(product[stor17[arg1].field_0].field_320 - uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6))
        emit ClosePosition(arg1, ext_call.return_data[0], position[arg1].field_0, position[arg1].field_256, position[arg1].field_0, position[arg1].field_256, 1, 1, position[arg1].field_320, position[arg1].field_0, 1);
        position[arg1].field_0 = 0
        position[arg1].field_256 = 0
        position[arg1].field_512 = 0
        emit PositionLiquidated((position[arg1].field_256 * product[stor17[arg1].field_0].field_480) - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_128 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_128 / 100 * 10^6 * product[stor17[arg1].field_0].field_480) / 10000, (position[arg1].field_256 * sub_5f3b2180) - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_128 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[arg1].field_256 - ((position[arg1].field_256 * product[stor17[arg1].field_0].field_480) - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_128 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_128 / 100 * 10^6 * product[stor17[arg1].field_0].field_480) / 10000) - ((position[arg1].field_256 * sub_5f3b2180) - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_128 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), arg1, msg.sender);
        return (position[arg1].field_256 * product[stor17[arg1].field_0].field_480) - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_128 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_128 / 100 * 10^6 * product[stor17[arg1].field_0].field_480) / 10000, 
               (position[arg1].field_256 * sub_5f3b2180) - ((ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) - (position[arg1].field_128 * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
    if ext_call.return_data[0] >= position[arg1].field_128:
        if ext_call.return_data[0] < position[arg1].field_128:
            revert with 0, 17
        if position[arg1].field_256 and position[arg1].field_64 > -1 / position[arg1].field_256:
            revert with 0, 17
        if position[arg1].field_256 * position[arg1].field_64 and ext_call.return_data[0] - position[arg1].field_0 > -1 / position[arg1].field_256 * position[arg1].field_64:
            revert with 0, 17
        if not position[arg1].field_128:
            revert with 0, 18
        if Mask(96, 0, stor12.field_96) > -position[arg1].field_256 + test266151307():
            revert with 0, 17
        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[arg1].field_256 + Mask(96, 0, stor12.field_96))
        if position[arg1].field_256 and position[arg1].field_64 > -1 / position[arg1].field_256:
            revert with 0, 17
        if not position[arg1].field_592:
            if position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6 > product[stor17[arg1].field_0].field_384:
                product[stor17[arg1].field_0].field_384 = 0
            else:
                if product[stor17[arg1].field_0].field_384 < uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6):
                    revert with 0, 17
                product[stor17[arg1].field_0].field_384 = uint64(product[stor17[arg1].field_0].field_384 - uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6))
        else:
            if position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6 > product[stor17[arg1].field_0].field_320:
                product[stor17[arg1].field_0].field_320 = 0
            else:
                if product[stor17[arg1].field_0].field_320 < uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6):
                    revert with 0, 17
                product[stor17[arg1].field_0].field_320 = uint64(product[stor17[arg1].field_0].field_320 - uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6))
        emit ClosePosition(arg1, ext_call.return_data[0], position[arg1].field_0, position[arg1].field_256, position[arg1].field_0, position[arg1].field_256, 1, 1, position[arg1].field_320, position[arg1].field_0, 1);
        position[arg1].field_0 = 0
        position[arg1].field_256 = 0
        position[arg1].field_512 = 0
        emit PositionLiquidated(0, 0, position[arg1].field_256, arg1, msg.sender);
        return 0
    if position[arg1].field_128 < ext_call.return_data[0]:
        revert with 0, 17
    if position[arg1].field_256 and position[arg1].field_64 > -1 / position[arg1].field_256:
        revert with 0, 17
    if position[arg1].field_256 * position[arg1].field_64 and position[arg1].field_0 - ext_call.return_data[0] > -1 / position[arg1].field_256 * position[arg1].field_64:
        revert with 0, 17
    if not position[arg1].field_128:
        revert with 0, 18
    if position[arg1].field_256 <= (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6:
        if Mask(96, 0, stor12.field_96) > -position[arg1].field_256 + test266151307():
            revert with 0, 17
        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[arg1].field_256 + Mask(96, 0, stor12.field_96))
        if position[arg1].field_256 and position[arg1].field_64 > -1 / position[arg1].field_256:
            revert with 0, 17
        if not position[arg1].field_592:
            if position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6 > product[stor17[arg1].field_0].field_384:
                product[stor17[arg1].field_0].field_384 = 0
            else:
                if product[stor17[arg1].field_0].field_384 < uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6):
                    revert with 0, 17
                product[stor17[arg1].field_0].field_384 = uint64(product[stor17[arg1].field_0].field_384 - uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6))
        else:
            if position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6 > product[stor17[arg1].field_0].field_320:
                product[stor17[arg1].field_0].field_320 = 0
            else:
                if product[stor17[arg1].field_0].field_320 < uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6):
                    revert with 0, 17
                product[stor17[arg1].field_0].field_320 = uint64(product[stor17[arg1].field_0].field_320 - uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6))
        emit ClosePosition(arg1, ext_call.return_data[0], position[arg1].field_0, position[arg1].field_256, position[arg1].field_0, position[arg1].field_256, 1, 1, position[arg1].field_320, position[arg1].field_0, 1);
        position[arg1].field_0 = 0
        position[arg1].field_256 = 0
        position[arg1].field_512 = 0
        emit PositionLiquidated(0, 0, position[arg1].field_256, arg1, msg.sender);
        return 0
    if position[arg1].field_256 < (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6:
        revert with 0, 17
    if position[arg1].field_256 - ((position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6) and product[stor17[arg1].field_0].field_480 > -1 / position[arg1].field_256 - ((position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6):
        revert with 0, 17
    if position[arg1].field_256 < (position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6:
        revert with 0, 17
    if position[arg1].field_256 - ((position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[arg1].field_256 - ((position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6):
        revert with 0, 17
    if position[arg1].field_256 < (position[arg1].field_256 * product[stor17[arg1].field_0].field_480) - ((position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6 * product[stor17[arg1].field_0].field_480) / 10000:
        revert with 0, 17
    if position[arg1].field_256 - ((position[arg1].field_256 * product[stor17[arg1].field_0].field_480) - ((position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6 * product[stor17[arg1].field_0].field_480) / 10000) < (position[arg1].field_256 * sub_5f3b2180) - ((position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
        revert with 0, 17
    if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[arg1].field_256 - ((position[arg1].field_256 * product[stor17[arg1].field_0].field_480) - ((position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6 * product[stor17[arg1].field_0].field_480) / 10000) - ((position[arg1].field_256 * sub_5f3b2180) - ((position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
        revert with 0, 17
    Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[arg1].field_256 - ((position[arg1].field_256 * product[stor17[arg1].field_0].field_480) - ((position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6 * product[stor17[arg1].field_0].field_480) / 10000) - ((position[arg1].field_256 * sub_5f3b2180) - ((position[arg1].field_0 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
    if position[arg1].field_256 and position[arg1].field_64 > -1 / position[arg1].field_256:
        revert with 0, 17
    if not position[arg1].field_592:
        if position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6 > product[stor17[arg1].field_0].field_384:
            product[stor17[arg1].field_0].field_384 = 0
        else:
            if product[stor17[arg1].field_0].field_384 < uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6):
                revert with 0, 17
            product[stor17[arg1].field_0].field_384 = uint64(product[stor17[arg1].field_0].field_384 - uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6))
    else:
        if position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6 > product[stor17[arg1].field_0].field_320:
            product[stor17[arg1].field_0].field_320 = 0
        else:
            if product[stor17[arg1].field_0].field_320 < uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6):
                revert with 0, 17
            product[stor17[arg1].field_0].field_320 = uint64(product[stor17[arg1].field_0].field_320 - uint64(position[arg1].field_256 * position[arg1].field_64 / 100 * 10^6))
    emit ClosePosition(arg1, ext_call.return_data[0], position[arg1].field_0, position[arg1].field_256, position[arg1].field_0, position[arg1].field_256, 1, 1, position[arg1].field_320, position[arg1].field_0, 1);
    position[arg1].field_0 = 0
    position[arg1].field_256 = 0
    position[arg1].field_512 = 0
    emit PositionLiquidated((position[arg1].field_256 * product[stor17[arg1].field_0].field_480) - ((position[arg1].field_128 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_128 / 100 * 10^6 * product[stor17[arg1].field_0].field_480) / 10000, (position[arg1].field_256 * sub_5f3b2180) - ((position[arg1].field_128 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[arg1].field_256 - ((position[arg1].field_256 * product[stor17[arg1].field_0].field_480) - ((position[arg1].field_128 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_128 / 100 * 10^6 * product[stor17[arg1].field_0].field_480) / 10000) - ((position[arg1].field_256 * sub_5f3b2180) - ((position[arg1].field_128 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), arg1, msg.sender);
    return (position[arg1].field_256 * product[stor17[arg1].field_0].field_480) - ((position[arg1].field_128 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_128 / 100 * 10^6 * product[stor17[arg1].field_0].field_480) / 10000, 
           (position[arg1].field_256 * sub_5f3b2180) - ((position[arg1].field_128 * position[arg1].field_256 * position[arg1].field_64) - (ext_call.return_data[0] * position[arg1].field_256 * position[arg1].field_64) / position[arg1].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
}

function sub_4d452ec0(?) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if msg.sender == liquidatorAddress:
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 17
            _3718 = mem[64]
            mem[64] = mem[64] + 256
            mem[_3718] = position[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_3718 + 32] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
            mem[_3718 + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
            mem[_3718 + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_192
            mem[_3718 + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
            mem[_3718 + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_320
            mem[_3718 + 192] = position[cd[((32 * idx) + cd[4] + 36)]].field_512
            mem[_3718 + 224] = bool(position[cd[((32 * idx) + cd[4] + 36)]].field_592)
            if position[cd[((32 * idx) + cd[4] + 36)]].field_0:
                mem[0] = position[cd[((32 * idx) + cd[4] + 36)]].field_0
                mem[32] = 15
                mem[mem[64] + 4] = product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.0x41976e09 with:
                        gas gas_remaining wei
                       args product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3729 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3731 = mem[_3729]
                if position[cd[((32 * idx) + cd[4] + 36)]].field_128 and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                    revert with 0, 17
                if position[cd[((32 * idx) + cd[4] + 36)]].field_128 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                    revert with 0, 18
                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                    if position[cd[((32 * idx) + cd[4] + 36)]].field_0 > !(10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64):
                        revert with 0, 17
                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                            if mem[_3729] >= position[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                    if mem[_3729] <= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3729]:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3729] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3729]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if mem[_3729] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3729] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3729]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                revert with 0, 17
                                            if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3729]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                            mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                            emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                revert with 0, 17
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                revert with 0, 17
                                else:
                                    if mem[_3729] >= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        if mem[_3729] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3729] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3729]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3729]:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3729] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3729]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                revert with 0, 17
                                            if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3729]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                            mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                            emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                revert with 0, 17
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                revert with 0, 17
                    else:
                        if mem[_3729] <= position[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64):
                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                if mem[_3729] <= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3729]:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3729] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                        revert with 0, 17
                                    Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    mem[mem[64] + 32] = mem[_3729]
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                    mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                    mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 192] = 1
                                    mem[mem[64] + 224] = 1
                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 17
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                    mem[mem[64]] = 0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if mem[_3729] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3729] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3729]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                            revert with 0, 17
                                        if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3729]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                        mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                        emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                            revert with 0, 17
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                            revert with 0, 17
                            else:
                                if mem[_3729] >= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    if mem[_3729] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3729] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                        revert with 0, 17
                                    Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    mem[mem[64] + 32] = mem[_3729]
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                    mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                    mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 192] = 1
                                    mem[mem[64] + 224] = 1
                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 17
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                    mem[mem[64]] = 0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3729]:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3729] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3729]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                            revert with 0, 17
                                        if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3729]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                        mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                        emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                            revert with 0, 17
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                            revert with 0, 17
                        else:
                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                if mem[_3729] >= position[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                        if mem[_3729] <= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3729]:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3729] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3729]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if mem[_3729] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3729] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3729]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = 0
                                                mem[mem[64] + 32] = 0
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3729]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                                mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                                emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                    revert with 0, 17
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                    revert with 0, 17
                                    else:
                                        if mem[_3729] >= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if mem[_3729] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3729] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3729]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3729]:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3729] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3729]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = 0
                                                mem[mem[64] + 32] = 0
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3729]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                                mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                                emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                    revert with 0, 17
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                    revert with 0, 17
                else:
                    if position[cd[((32 * idx) + cd[4] + 36)]].field_0 < 10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                        revert with 0, 17
                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                            if mem[_3729] >= position[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                    if mem[_3729] <= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3729]:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3729] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3729]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if mem[_3729] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3729] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3729]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                revert with 0, 17
                                            if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3729]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                            mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                            emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                revert with 0, 17
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                revert with 0, 17
                                else:
                                    if mem[_3729] >= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        if mem[_3729] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3729] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3729]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3729]:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3729] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3729]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                revert with 0, 17
                                            if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3729]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                            mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                            emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                revert with 0, 17
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                revert with 0, 17
                    else:
                        if mem[_3729] <= position[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64):
                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                if mem[_3729] <= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3729]:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3729] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                        revert with 0, 17
                                    Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    mem[mem[64] + 32] = mem[_3729]
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                    mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                    mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 192] = 1
                                    mem[mem[64] + 224] = 1
                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 17
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                    mem[mem[64]] = 0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if mem[_3729] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3729] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3729]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                            revert with 0, 17
                                        if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3729]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                        mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                        emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                            revert with 0, 17
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                            revert with 0, 17
                            else:
                                if mem[_3729] >= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    if mem[_3729] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3729] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                        revert with 0, 17
                                    Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    mem[mem[64] + 32] = mem[_3729]
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                    mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                    mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 192] = 1
                                    mem[mem[64] + 224] = 1
                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 17
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                    mem[mem[64]] = 0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3729]:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3729] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3729]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                            revert with 0, 17
                                        if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3729]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                        mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                        emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                            revert with 0, 17
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                            revert with 0, 17
                        else:
                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                if mem[_3729] >= position[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                        if mem[_3729] <= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3729]:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3729] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3729]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if mem[_3729] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3729] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3729]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = 0
                                                mem[mem[64] + 32] = 0
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3729]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                                mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                                emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                    revert with 0, 17
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                    revert with 0, 17
                                    else:
                                        if mem[_3729] >= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if mem[_3729] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3729] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3729]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3729]:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3729] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3729]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = 0
                                                mem[mem[64] + 32] = 0
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3729] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3729]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3731, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                                mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                                emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                    revert with 0, 17
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3731 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
    else:
        if not uint8(stor11.field_8):
            revert with 0, '!liquidator'
        idx = 0
        while idx < ('cd', 4).length:
            mem[0] = cd[((32 * idx) + cd[4] + 36)]
            mem[32] = 17
            _3720 = mem[64]
            mem[64] = mem[64] + 256
            mem[_3720] = position[cd[((32 * idx) + cd[4] + 36)]].field_0
            mem[_3720 + 32] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
            mem[_3720 + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
            mem[_3720 + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_192
            mem[_3720 + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
            mem[_3720 + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_320
            mem[_3720 + 192] = position[cd[((32 * idx) + cd[4] + 36)]].field_512
            mem[_3720 + 224] = bool(position[cd[((32 * idx) + cd[4] + 36)]].field_592)
            if position[cd[((32 * idx) + cd[4] + 36)]].field_0:
                mem[0] = position[cd[((32 * idx) + cd[4] + 36)]].field_0
                mem[32] = 15
                mem[mem[64] + 4] = product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0
                require ext_code.size(oracleAddress)
                staticcall oracleAddress.0x41976e09 with:
                        gas gas_remaining wei
                       args product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_0
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _3730 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 32
                _3732 = mem[_3730]
                if position[cd[((32 * idx) + cd[4] + 36)]].field_128 and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                    revert with 0, 17
                if position[cd[((32 * idx) + cd[4] + 36)]].field_128 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 > 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2339c0ebedfa43:
                    revert with 0, 17
                if not position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                    revert with 0, 18
                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                    if position[cd[((32 * idx) + cd[4] + 36)]].field_0 > !(10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64):
                        revert with 0, 17
                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                            if mem[_3730] >= position[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                    if mem[_3730] <= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3730]:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3730] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3730]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if mem[_3730] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3730] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3730]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                revert with 0, 17
                                            if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3730]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                            mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                            emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                revert with 0, 17
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                revert with 0, 17
                                else:
                                    if mem[_3730] >= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        if mem[_3730] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3730] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3730]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3730]:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3730] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3730]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                revert with 0, 17
                                            if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3730]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                            mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                            emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                revert with 0, 17
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                revert with 0, 17
                    else:
                        if mem[_3730] <= position[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64):
                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                if mem[_3730] <= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3730]:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3730] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                        revert with 0, 17
                                    Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    mem[mem[64] + 32] = mem[_3730]
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                    mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                    mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 192] = 1
                                    mem[mem[64] + 224] = 1
                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 17
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                    mem[mem[64]] = 0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if mem[_3730] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3730] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3730]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                            revert with 0, 17
                                        if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3730]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                        mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                        emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                            revert with 0, 17
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                            revert with 0, 17
                            else:
                                if mem[_3730] >= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    if mem[_3730] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3730] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                        revert with 0, 17
                                    Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    mem[mem[64] + 32] = mem[_3730]
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                    mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                    mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 192] = 1
                                    mem[mem[64] + 224] = 1
                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 17
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                    mem[mem[64]] = 0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3730]:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3730] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3730]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                            revert with 0, 17
                                        if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3730]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                        mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                        emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                            revert with 0, 17
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                            revert with 0, 17
                        else:
                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                if mem[_3730] >= position[cd[((32 * idx) + cd[4] + 36)]].field_0 + (10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                        if mem[_3730] <= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3730]:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3730] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3730]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if mem[_3730] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3730] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3730]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = 0
                                                mem[mem[64] + 32] = 0
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3730]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                                mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                                emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                    revert with 0, 17
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                    revert with 0, 17
                                    else:
                                        if mem[_3730] >= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if mem[_3730] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3730] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3730]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3730]:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3730] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3730]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = 0
                                                mem[mem[64] + 32] = 0
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3730]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                                mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                                emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                    revert with 0, 17
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                    revert with 0, 17
                else:
                    if position[cd[((32 * idx) + cd[4] + 36)]].field_0 < 10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                        revert with 0, 17
                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                            if mem[_3730] >= position[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                    if mem[_3730] <= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3730]:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3730] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3730]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if mem[_3730] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3730] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3730]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                revert with 0, 17
                                            if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3730]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                            mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                            emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                revert with 0, 17
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                revert with 0, 17
                                else:
                                    if mem[_3730] >= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        if mem[_3730] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3730] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3730]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3730]:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3730] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            revert with 0, 18
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3730]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                revert with 0, 17
                                            if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3730]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                            mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                            emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                revert with 0, 17
                                            if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                revert with 0, 17
                    else:
                        if mem[_3730] <= position[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64):
                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                if mem[_3730] <= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3730]:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3730] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                        revert with 0, 17
                                    Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    mem[mem[64] + 32] = mem[_3730]
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                    mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                    mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 192] = 1
                                    mem[mem[64] + 224] = 1
                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 17
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                    mem[mem[64]] = 0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if mem[_3730] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3730] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3730]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                            revert with 0, 17
                                        if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3730]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                        mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                        emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                            revert with 0, 17
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                            revert with 0, 17
                            else:
                                if mem[_3730] >= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                    if mem[_3730] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3730] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                        revert with 0, 17
                                    Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                        else:
                                            if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                revert with 0, 17
                                            product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                    mem[mem[64] + 32] = mem[_3730]
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                    mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                    mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    mem[mem[64] + 192] = 1
                                    mem[mem[64] + 224] = 1
                                    emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                    mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                    mem[32] = 17
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                    position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                    mem[mem[64]] = 0
                                    mem[mem[64] + 32] = 0
                                    mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                    emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                else:
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3730]:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                        revert with 0, 17
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3730] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                        revert with 0, 17
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                        revert with 0, 18
                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                        if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3730]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = 0
                                        mem[mem[64] + 32] = 0
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                    else:
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                            revert with 0, 17
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                            revert with 0, 17
                                        if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                            revert with 0, 17
                                        Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                        if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                            revert with 0, 17
                                        if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                            else:
                                                if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                    revert with 0, 17
                                                product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                        mem[mem[64] + 32] = mem[_3730]
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                        mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                        mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                        mem[mem[64] + 192] = 1
                                        mem[mem[64] + 224] = 1
                                        emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                        mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                        mem[32] = 17
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                        position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                        mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                        mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                        mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                        emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                            revert with 0, 17
                                        if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                            revert with 0, 17
                        else:
                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                if mem[_3730] >= position[cd[((32 * idx) + cd[4] + 36)]].field_0 - (10000 * position[cd[((32 * idx) + cd[4] + 36)]].field_0 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_464 / position[cd[((32 * idx) + cd[4] + 36)]].field_64):
                                    if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                        if mem[_3730] <= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3730]:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3730] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3730]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if mem[_3730] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3730] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3730]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = 0
                                                mem[mem[64] + 32] = 0
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3730]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                                mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                                emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                    revert with 0, 17
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                    revert with 0, 17
                                    else:
                                        if mem[_3730] >= position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                            if mem[_3730] < position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and mem[_3730] - position[cd[((32 * idx) + cd[4] + 36)]].field_0 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                revert with 0, 17
                                            Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                else:
                                                    if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                        revert with 0, 17
                                                    product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                            mem[mem[64] + 32] = mem[_3730]
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                            mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                            mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            mem[mem[64] + 192] = 1
                                            mem[mem[64] + 224] = 1
                                            emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                            mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                            mem[32] = 17
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                            position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                            mem[mem[64]] = 0
                                            mem[mem[64] + 32] = 0
                                            mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                            emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                        else:
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_128 < mem[_3730]:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                revert with 0, 17
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 and position[cd[((32 * idx) + cd[4] + 36)]].field_0 - mem[_3730] > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64:
                                                revert with 0, 17
                                            if not position[cd[((32 * idx) + cd[4] + 36)]].field_128:
                                                revert with 0, 18
                                            if position[cd[((32 * idx) + cd[4] + 36)]].field_256 <= (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                if Mask(96, 0, stor12.field_96) > -position[cd[((32 * idx) + cd[4] + 36)]].field_256 + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3730]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = 0
                                                mem[mem[64] + 32] = 0
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                emit PositionLiquidated(0, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                            else:
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6) and sub_5f3b2180 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6):
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000:
                                                    revert with 0, 17
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) < (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000:
                                                    revert with 0, 17
                                                if Mask(96, 0, stor12.field_96) > -Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + test266151307():
                                                    revert with 0, 17
                                                Mask(96, 0, stor12.field_96) = Mask(96, 0, Mask(96, 0, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_0 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (mem[_3730] * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_0 / 100 * 10^6 * sub_5f3b2180) / 10000)) + Mask(96, 0, stor12.field_96))
                                                if position[cd[((32 * idx) + cd[4] + 36)]].field_256 and position[cd[((32 * idx) + cd[4] + 36)]].field_64 > -1 / position[cd[((32 * idx) + cd[4] + 36)]].field_256:
                                                    revert with 0, 17
                                                if not position[cd[((32 * idx) + cd[4] + 36)]].field_592:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_384 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                else:
                                                    if position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6 > product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320:
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = 0
                                                    else:
                                                        if product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 < uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6):
                                                            revert with 0, 17
                                                        product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 = uint64(product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_320 - uint64(position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64 / 100 * 10^6))
                                                mem[mem[64] + 32] = mem[_3730]
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_128
                                                mem[mem[64] + 96] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 128] = position[cd[((32 * idx) + cd[4] + 36)]].field_64
                                                mem[mem[64] + 160] = position[cd[((32 * idx) + cd[4] + 36)]].field_256
                                                mem[mem[64] + 192] = 1
                                                mem[mem[64] + 224] = 1
                                                emit ClosePosition(cd[((32 * idx) + cd[4] + 36)], _3732, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, position[cd[((32 * idx) + cd[4] + 36)]].field_0, position[cd[((32 * idx) + cd[4] + 36)]].field_256, 1, 1, position[cd[((32 * idx) + cd[4] + 36)]].field_320, position[cd[((32 * idx) + cd[4] + 36)]].field_0, 1);
                                                mem[0] = cd[((32 * idx) + cd[4] + 36)]
                                                mem[32] = 17
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_0 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_256 = 0
                                                position[cd[((32 * idx) + cd[4] + 36)]].field_512 = 0
                                                mem[mem[64]] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000
                                                mem[mem[64] + 32] = (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000
                                                mem[mem[64] + 64] = position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000)
                                                emit PositionLiquidated((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000, (position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000, position[cd[((32 * idx) + cd[4] + 36)]].field_256 - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000), cd[((32 * idx) + cd[4] + 36)], msg.sender);
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * product[stor17[cd[((32 * idx) + cd[4] + 36)]].field_0].field_480) / 10000):
                                                    revert with 0, 17
                                                if 0 > !((position[cd[((32 * idx) + cd[4] + 36)]].field_256 * sub_5f3b2180) - ((position[cd[((32 * idx) + cd[4] + 36)]].field_128 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) - (_3732 * position[cd[((32 * idx) + cd[4] + 36)]].field_256 * position[cd[((32 * idx) + cd[4] + 36)]].field_64) / position[cd[((32 * idx) + cd[4] + 36)]].field_128 / 100 * 10^6 * sub_5f3b2180) / 10000):
                                                    revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
}



}
