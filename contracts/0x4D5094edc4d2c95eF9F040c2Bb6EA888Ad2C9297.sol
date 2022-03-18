contract main {




// =====================  Runtime code  =====================


#
#  - sub_35bac71e(?)
#  - sub_a7001d23(?)
#
address bathHouseAddress;
address underlyingAssetAddress;
address sub_613e8993Address;
address sub_98ef3041Address;
address sub_e22a7807Address;
uint8 initialized; offset 160
address rubiconMarketAddress;
uint128 stor6;
uint16 stor7;
uint256 stor7; offset 16
uint256 sub_ca8c4329;
uint256 stor8;
uint256 sub_c12e8185;
uint256 stor10;
uint256 stor11;
array of struct sub_49fd49e8;
mapping of uint256 sub_7d1c98fa;
mapping of uint256 sub_71a4188b;

function sub_003acabc(?) payable {
    require initialized
    return sub_98ef3041Address
}

function initialized() payable {
    return bool(initialized)
}

function sub_49fd49e8(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_49fd49e8.length
    return sub_49fd49e8[arg1].field_0, 
           sub_49fd49e8[arg1].field_256,
           sub_49fd49e8[arg1].field_512,
           sub_49fd49e8[arg1].field_768,
           sub_49fd49e8[arg1].field_1024,
           sub_49fd49e8[arg1].field_1280
}

function bathHouse() payable {
    return bathHouseAddress
}

function RubiconMarketAddress() payable {
    return rubiconMarketAddress
}

function sub_613e8993(?) payable {
    return sub_613e8993Address
}

function underlyingAsset() payable {
    return underlyingAssetAddress
}

function sub_71a4188b(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_71a4188b[arg1]
}

function sub_7d1c98fa(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_7d1c98fa[arg1]
}

function sub_98ef3041(?) payable {
    return sub_98ef3041Address
}

function sub_ac90539c(?) payable {
    return sub_49fd49e8.length
}

function sub_af07acb2(?) payable {
    return sub_e22a7807Address
}

function sub_c12e8185(?) payable {
    return sub_c12e8185
}

function sub_ca8c4329(?) payable {
    return sub_ca8c4329
}

function sub_e22a7807(?) payable {
    require initialized
    return sub_e22a7807Address
}

function _fallback() payable {
    revert
}

function sub_14a933b2(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == bathHouseAddress
    sub_c12e8185 = arg1
}

function sub_028d01fe(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == uint16(arg1)
    require msg.sender == bathHouseAddress
    uint16(stor7.field_0) = uint16(arg1)
    Mask(240, 0, stor7.field_16) = 0
}

function sub_18447307(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == ('signextend', 15, ('param', 'arg1'))
    require msg.sender == bathHouseAddress
    stor6 = uint128(('signextend', 15, ('param', 'arg1')))
}

function sub_c1c7635c(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(bathHouseAddress)
    staticcall bathHouseAddress.isApprovedStrategist(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'you are not an approved strategist - bathPair'
    require ext_code.size(bathHouseAddress)
    staticcall bathHouseAddress.getBPSToStrats(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if arg1:
        require ext_code.size(sub_e22a7807Address)
        call sub_e22a7807Address.rebalance(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args sub_98ef3041Address, underlyingAssetAddress, ext_call.return_data[0] << 248, arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg2:
        require ext_code.size(sub_98ef3041Address)
        call sub_98ef3041Address.rebalance(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
             gas gas_remaining wei
            args sub_e22a7807Address, sub_613e8993Address, ext_call.return_data[0] << 248, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_2af95644(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg5 == ('signextend', 15, ('param', 'arg5'))
    require not initialized
    bathHouseAddress = address(arg3)
    sub_98ef3041Address = address(arg1)
    sub_e22a7807Address = address(arg2)
    require ext_code.size(address(arg1))
    staticcall address(arg1).underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20]
    require ext_code.size(sub_e22a7807Address)
    staticcall sub_e22a7807Address.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20]
    require ext_code.size(sub_98ef3041Address)
    staticcall sub_98ef3041Address.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    underlyingAssetAddress = ext_call.return_data[12 len 20]
    require ext_code.size(sub_e22a7807Address)
    staticcall sub_e22a7807Address.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_613e8993Address = ext_call.return_data[12 len 20]
    require ext_code.size(bathHouseAddress)
    staticcall bathHouseAddress.getMarket() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20]
    require ext_code.size(bathHouseAddress)
    staticcall bathHouseAddress.getMarket() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    sub_ca8c4329 = arg4
    stor6 = uint128(('signextend', 15, ('param', 'arg5')))
    stor8 = 0
    sub_c12e8185 = 2
    rubiconMarketAddress = ext_call.return_data[12 len 20]
    initialized = 1
}

function sub_193aef94(?) payable {
    require calldata.size - 4 >= 224
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    require arg4 == address(arg4)
    require arg7 == arg7 % 16777216
    mem[100] = msg.sender
    require ext_code.size(bathHouseAddress)
    staticcall bathHouseAddress.isApprovedStrategist(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'you are not an approved strategist - bathPair'
    mem[ceil32(return_data.size) + 100] = this.address
    require ext_code.size(bathHouseAddress)
    staticcall bathHouseAddress.getBPSToStrats(address rg1) with:
            gas gas_remaining wei
           args this.address
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(address(arg1))
    call address(arg1).rebalance(address rg1, address rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining wei
        args address(this.address), address(arg2), ext_call.return_data[0] << 248, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(2 * ceil32(return_data.size)) + 96] = 164
    mem[(2 * ceil32(return_data.size)) + 132 len 28] = Mask(224, 32, arg5) >> 32
    mem[(2 * ceil32(return_data.size)) + 128 len 4] = 2689992829
    mem[(2 * ceil32(return_data.size)) + 292 len 192] = 2689992829, arg5, address(arg2), address(arg3), arg6, arg7 << 232, mem[(2 * ceil32(return_data.size)) + 292 len 28]
    delegate address(arg4).mem[(2 * ceil32(return_data.size)) + 292 len 4] with:
         gas gas_remaining wei
        args mem[(2 * ceil32(return_data.size)) + 296 len 160]
    if not return_data.size:
        if not delegate.return_code:
            revert with 0, 'Uni tail off failed'
        require ext_call.return_data[0] >= 32
        require ext_code.size(address(arg2))
        call address(arg2).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), uint32(msg.sender), mem[132 len 28]
    else:
        mem[(2 * ceil32(return_data.size)) + 324 len return_data.size] = ext_call.return_data[0 len return_data.size]
        if not delegate.return_code:
            revert with 0, 'Uni tail off failed'
        require return_data.size >= 32
        require ext_code.size(address(arg2))
        call address(arg2).transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), mem[(2 * ceil32(return_data.size)) + 324]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_3c4fc85d(?) payable {
    if not sub_7d1c98fa[msg.sender]:
        if sub_71a4188b[msg.sender]:
            require ext_code.size(sub_613e8993Address)
            staticcall sub_613e8993Address.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_71a4188b[msg.sender]:
                if stor11 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor11
                require ext_code.size(sub_613e8993Address)
                call sub_613e8993Address.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0 / stor11
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0xfe8afb47: msg.sender, sub_613e8993Address, 0 / stor11, block.timestamp
            else:
                if ext_call.return_data[0] * sub_71a4188b[msg.sender] / sub_71a4188b[msg.sender] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x62536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[ceil32(return_data.size) + 197 len 31]
                if stor11 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor11
                require ext_code.size(sub_613e8993Address)
                call sub_613e8993Address.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * sub_71a4188b[msg.sender] / stor11
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0xfe8afb47: msg.sender, sub_613e8993Address, ext_call.return_data[0] * sub_71a4188b[msg.sender] / stor11, block.timestamp
            stor11 -= sub_71a4188b[msg.sender]
            sub_71a4188b[msg.sender] = 0
    else:
        require ext_code.size(underlyingAssetAddress)
        staticcall underlyingAssetAddress.balanceOf(address rg1) with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not sub_7d1c98fa[msg.sender]:
            if stor10 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor10
            require ext_code.size(underlyingAssetAddress)
            call underlyingAssetAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, 0 / stor10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 192] = block.timestamp
            emit 0xfe8afb47: msg.sender, underlyingAssetAddress, 0 / stor10, block.timestamp
        else:
            if ext_call.return_data[0] * sub_7d1c98fa[msg.sender] / sub_7d1c98fa[msg.sender] != ext_call.return_data[0]:
                revert with 0, 
                            32,
                            33,
                            0x62536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[ceil32(return_data.size) + 197 len 31]
            if stor10 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor10
            require ext_code.size(underlyingAssetAddress)
            call underlyingAssetAddress.transfer(address rg1, uint256 rg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] * sub_7d1c98fa[msg.sender] / stor10
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            mem[(2 * ceil32(return_data.size)) + 192] = block.timestamp
            emit 0xfe8afb47: msg.sender, underlyingAssetAddress, ext_call.return_data[0] * sub_7d1c98fa[msg.sender] / stor10, block.timestamp
        stor10 -= sub_7d1c98fa[msg.sender]
        sub_7d1c98fa[msg.sender] = 0
        if sub_71a4188b[msg.sender]:
            require ext_code.size(sub_613e8993Address)
            staticcall sub_613e8993Address.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args this.address
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not sub_71a4188b[msg.sender]:
                if stor11 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor11
                require ext_code.size(sub_613e8993Address)
                call sub_613e8993Address.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, 0 / stor11
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0xfe8afb47: msg.sender, sub_613e8993Address, 0 / stor11, block.timestamp
            else:
                if ext_call.return_data[0] * sub_71a4188b[msg.sender] / sub_71a4188b[msg.sender] != ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                33,
                                0x62536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(4 * ceil32(return_data.size)) + 197 len 31]
                if stor11 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require stor11
                require ext_code.size(sub_613e8993Address)
                call sub_613e8993Address.transfer(address rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args msg.sender, ext_call.return_data[0] * sub_71a4188b[msg.sender] / stor11
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == bool(ext_call.return_data[0])
                emit 0xfe8afb47: msg.sender, sub_613e8993Address, ext_call.return_data[0] * sub_71a4188b[msg.sender] / stor11, block.timestamp
            stor11 -= sub_71a4188b[msg.sender]
            sub_71a4188b[msg.sender] = 0
}

function sub_3d924596(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 == uint8(arg2)
    mem[100] = msg.sender
    require ext_code.size(bathHouseAddress)
    staticcall bathHouseAddress.isApprovedStrategist(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 'you are not an approved strategist - bathPair'
    if sub_49fd49e8.length < uint8(arg2 - arg1):
        revert with 0, 'range of indices too great for outstandingPairs length'
    idx = arg1
    s = sub_49fd49e8.length + -uint8(arg2) - 1
    while uint8(idx) <= uint8(arg2):
        require uint8(idx) < sub_49fd49e8.length
        mem[0] = 12
        _227 = mem[64]
        mem[64] = mem[64] + 192
        mem[_227] = sub_49fd49e8[uint8(idx)].field_0
        mem[_227 + 32] = sub_49fd49e8[uint8(idx)].field_256
        mem[_227 + 64] = sub_49fd49e8[uint8(idx)].field_512
        mem[_227 + 96] = sub_49fd49e8[uint8(idx)].field_768
        mem[_227 + 128] = sub_49fd49e8[uint8(idx)].field_1024
        mem[_227 + 160] = sub_49fd49e8[uint8(idx)].field_1280
        _228 = mem[64]
        mem[64] = mem[64] + 128
        mem[_228] = 0
        mem[_228 + 32] = 0
        mem[_228 + 64] = 0
        mem[_228 + 96] = 0
        require ext_code.size(rubiconMarketAddress)
        staticcall rubiconMarketAddress.getOffer(uint256 rg1) with:
                gas gas_remaining wei
               args sub_49fd49e8[uint8(idx)].field_0
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _231 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _232 = mem[_231]
        _233 = mem[_231 + 32]
        require mem[_231 + 32] == mem[_231 + 44 len 20]
        _234 = mem[_231 + 64]
        _235 = mem[_231 + 96]
        require mem[_231 + 96] == mem[_231 + 108 len 20]
        _236 = mem[64]
        mem[64] = mem[64] + 128
        mem[_236] = _232
        mem[_236 + 32] = address(_233)
        mem[_236 + 64] = _234
        mem[_236 + 96] = address(_235)
        _238 = mem[64]
        mem[64] = mem[64] + 128
        mem[_238] = 0
        mem[_238 + 32] = 0
        mem[_238 + 64] = 0
        mem[_238 + 96] = 0
        require ext_code.size(rubiconMarketAddress)
        staticcall rubiconMarketAddress.getOffer(uint256 rg1) with:
                gas gas_remaining wei
               args sub_49fd49e8[uint8(idx)].field_512
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _241 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _242 = mem[_241]
        _243 = mem[_241 + 32]
        require mem[_241 + 32] == mem[_241 + 44 len 20]
        _244 = mem[_241 + 64]
        _245 = mem[_241 + 96]
        require mem[_241 + 96] == mem[_241 + 108 len 20]
        _246 = mem[64]
        mem[64] = mem[64] + 128
        mem[_246] = _242
        mem[_246 + 32] = address(_243)
        mem[_246 + 64] = _244
        mem[_246 + 96] = address(_245)
        if sub_49fd49e8[uint8(idx)].field_0:
            if not sub_49fd49e8[uint8(idx)].field_256 - _232:
                mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_49fd49e8[uint8(idx)].field_0
                mem[mem[64] + 36] = sub_49fd49e8[uint8(idx)].field_256
                require ext_code.size(sub_98ef3041Address)
                call sub_98ef3041Address.cancel(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_49fd49e8[uint8(idx)].field_0, sub_49fd49e8[uint8(idx)].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = sub_49fd49e8[uint8(idx)].field_1280
                mem[32] = 13
                sub_7d1c98fa[stor12[uint8(idx)].field_1280] = sub_49fd49e8[uint8(idx)].field_256 - _232 + sub_7d1c98fa[stor12[uint8(idx)].field_1280]
                stor10 = sub_49fd49e8[uint8(idx)].field_256 - _232 + stor10
                mem[mem[64]] = 0x831d267800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_49fd49e8[uint8(idx)].field_256 - _232
                require ext_code.size(sub_98ef3041Address)
                call sub_98ef3041Address.removeFilledTradeAmount(uint256 rg1) with:
                     gas gas_remaining wei
                    args (sub_49fd49e8[uint8(idx)].field_256 - _232)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_49fd49e8[uint8(idx)].field_256 - _232 != sub_49fd49e8[uint8(idx)].field_256:
                    if sub_49fd49e8[uint8(idx)].field_256 - _232 > sub_49fd49e8[uint8(idx)].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_49fd49e8[uint8(idx)].field_0
                    mem[mem[64] + 36] = _232
                    require ext_code.size(sub_98ef3041Address)
                    call sub_98ef3041Address.cancel(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_49fd49e8[uint8(idx)].field_0, _232
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if sub_49fd49e8[uint8(idx)].field_512:
            if not sub_49fd49e8[uint8(idx)].field_768 - _242:
                mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_49fd49e8[uint8(idx)].field_512
                mem[mem[64] + 36] = sub_49fd49e8[uint8(idx)].field_768
                require ext_code.size(sub_e22a7807Address)
                call sub_e22a7807Address.cancel(uint256 rg1, uint256 rg2) with:
                     gas gas_remaining wei
                    args sub_49fd49e8[uint8(idx)].field_512, sub_49fd49e8[uint8(idx)].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            else:
                mem[0] = sub_49fd49e8[uint8(idx)].field_1280
                mem[32] = 14
                sub_71a4188b[stor12[uint8(idx)].field_1280] = sub_49fd49e8[uint8(idx)].field_768 - _242 + sub_71a4188b[stor12[uint8(idx)].field_1280]
                stor11 = sub_49fd49e8[uint8(idx)].field_768 - _242 + stor11
                mem[mem[64]] = 0x831d267800000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = sub_49fd49e8[uint8(idx)].field_768 - _242
                require ext_code.size(sub_e22a7807Address)
                call sub_e22a7807Address.removeFilledTradeAmount(uint256 rg1) with:
                     gas gas_remaining wei
                    args (sub_49fd49e8[uint8(idx)].field_768 - _242)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_49fd49e8[uint8(idx)].field_768 - _242 != sub_49fd49e8[uint8(idx)].field_768:
                    if sub_49fd49e8[uint8(idx)].field_768 - _242 > sub_49fd49e8[uint8(idx)].field_768:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_49fd49e8[uint8(idx)].field_512
                    mem[mem[64] + 36] = _242
                    require ext_code.size(sub_e22a7807Address)
                    call sub_e22a7807Address.cancel(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_49fd49e8[uint8(idx)].field_512, _242
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
        if s:
            require sub_49fd49e8.length - 1 < sub_49fd49e8.length
            require uint8(idx) < sub_49fd49e8.length
            sub_49fd49e8[uint8(idx)].field_0 = sub_49fd49e8[sub_49fd49e8.length].field_0
            sub_49fd49e8[uint8(idx)].field_256 = sub_49fd49e8[sub_49fd49e8.length].field_0
            sub_49fd49e8[uint8(idx)].field_512 = sub_49fd49e8[sub_49fd49e8.length].field_0
            sub_49fd49e8[uint8(idx)].field_768 = sub_49fd49e8[sub_49fd49e8.length].field_0
            sub_49fd49e8[uint8(idx)].field_1024 = sub_49fd49e8[sub_49fd49e8.length].field_0
            sub_49fd49e8[uint8(idx)].field_1280 = sub_49fd49e8[sub_49fd49e8.length].field_0
            require sub_49fd49e8.length
            mem[0] = 12
            sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
            sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
            sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
            sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
            sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
            sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
            sub_49fd49e8.length--
            idx = idx + 1
            s = s - 1
            continue 
        if uint8(idx) >= uint8(arg2):
            if uint8(idx) == uint8(arg2):
                require sub_49fd49e8.length
                mem[0] = 12
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8.length--
            idx = idx + 1
            s = s
            continue 
        require sub_49fd49e8.length - 1 < sub_49fd49e8.length
        require uint8(idx) < sub_49fd49e8.length
        sub_49fd49e8[uint8(idx)].field_0 = sub_49fd49e8[sub_49fd49e8.length].field_0
        sub_49fd49e8[uint8(idx)].field_256 = sub_49fd49e8[sub_49fd49e8.length].field_0
        sub_49fd49e8[uint8(idx)].field_512 = sub_49fd49e8[sub_49fd49e8.length].field_0
        sub_49fd49e8[uint8(idx)].field_768 = sub_49fd49e8[sub_49fd49e8.length].field_0
        sub_49fd49e8[uint8(idx)].field_1024 = sub_49fd49e8[sub_49fd49e8.length].field_0
        sub_49fd49e8[uint8(idx)].field_1280 = sub_49fd49e8[sub_49fd49e8.length].field_0
        require sub_49fd49e8.length
        mem[0] = 12
        sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
        sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
        sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
        sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
        sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
        sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
        sub_49fd49e8.length--
        idx = idx
        s = s
        continue 
}

function sub_2646df26(?) payable {
    require ext_code.size(bathHouseAddress)
    staticcall bathHouseAddress.timeDelay() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    if sub_49fd49e8.length > stor8 + sub_c12e8185:
        s = stor8
        t = sub_c12e8185
        while s < stor8 + t:
            require s < sub_49fd49e8.length
            mem[0] = 12
            if sub_49fd49e8[s].field_1024 >= block.timestamp - ext_call.return_data[0]:
                s = s + 1
                t = t
                continue 
            require s < sub_49fd49e8.length
            mem[0] = 12
            _471 = mem[64]
            mem[64] = mem[64] + 192
            mem[_471] = sub_49fd49e8[s].field_0
            mem[_471 + 32] = sub_49fd49e8[s].field_256
            mem[_471 + 64] = sub_49fd49e8[s].field_512
            mem[_471 + 96] = sub_49fd49e8[s].field_768
            mem[_471 + 128] = sub_49fd49e8[s].field_1024
            mem[_471 + 160] = sub_49fd49e8[s].field_1280
            _476 = mem[64]
            mem[64] = mem[64] + 128
            mem[_476] = 0
            mem[_476 + 32] = 0
            mem[_476 + 64] = 0
            mem[_476 + 96] = 0
            require ext_code.size(rubiconMarketAddress)
            staticcall rubiconMarketAddress.getOffer(uint256 rg1) with:
                    gas gas_remaining wei
                   args sub_49fd49e8[s].field_0
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _485 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _488 = mem[_485]
            _489 = mem[_485 + 32]
            require mem[_485 + 32] == mem[_485 + 44 len 20]
            _494 = mem[_485 + 64]
            _495 = mem[_485 + 96]
            require mem[_485 + 96] == mem[_485 + 108 len 20]
            _500 = mem[64]
            mem[64] = mem[64] + 128
            mem[_500] = _488
            mem[_500 + 32] = address(_489)
            mem[_500 + 64] = _494
            mem[_500 + 96] = address(_495)
            _506 = mem[64]
            mem[64] = mem[64] + 128
            mem[_506] = 0
            mem[_506 + 32] = 0
            mem[_506 + 64] = 0
            mem[_506 + 96] = 0
            require ext_code.size(rubiconMarketAddress)
            staticcall rubiconMarketAddress.getOffer(uint256 rg1) with:
                    gas gas_remaining wei
                   args sub_49fd49e8[s].field_512
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _515 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _518 = mem[_515]
            _519 = mem[_515 + 32]
            require mem[_515 + 32] == mem[_515 + 44 len 20]
            _524 = mem[_515 + 64]
            _525 = mem[_515 + 96]
            require mem[_515 + 96] == mem[_515 + 108 len 20]
            _530 = mem[64]
            mem[64] = mem[64] + 128
            mem[_530] = _518
            mem[_530 + 32] = address(_519)
            mem[_530 + 64] = _524
            mem[_530 + 96] = address(_525)
            if sub_49fd49e8[s].field_0:
                if not sub_49fd49e8[s].field_256 - _488:
                    mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_49fd49e8[s].field_0
                    mem[mem[64] + 36] = sub_49fd49e8[s].field_256
                    require ext_code.size(sub_98ef3041Address)
                    call sub_98ef3041Address.cancel(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_49fd49e8[s].field_0, sub_49fd49e8[s].field_256
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[32] = 13
                    sub_7d1c98fa[stor12[s].field_1280] = sub_49fd49e8[s].field_256 - _488 + sub_7d1c98fa[stor12[s].field_1280]
                    stor10 = sub_49fd49e8[s].field_256 - _488 + stor10
                    mem[mem[64]] = 0x831d267800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_49fd49e8[s].field_256 - _488
                    require ext_code.size(sub_98ef3041Address)
                    call sub_98ef3041Address.removeFilledTradeAmount(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_49fd49e8[s].field_256 - _488)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_49fd49e8[s].field_256 - _488 != sub_49fd49e8[s].field_256:
                        if sub_49fd49e8[s].field_256 - _488 > sub_49fd49e8[s].field_256:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_49fd49e8[s].field_0
                        mem[mem[64] + 36] = _488
                        require ext_code.size(sub_98ef3041Address)
                        call sub_98ef3041Address.cancel(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_49fd49e8[s].field_0, _488
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            if sub_49fd49e8[s].field_512:
                if not sub_49fd49e8[s].field_768 - _518:
                    mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_49fd49e8[s].field_512
                    mem[mem[64] + 36] = sub_49fd49e8[s].field_768
                    require ext_code.size(sub_e22a7807Address)
                    call sub_e22a7807Address.cancel(uint256 rg1, uint256 rg2) with:
                         gas gas_remaining wei
                        args sub_49fd49e8[s].field_512, sub_49fd49e8[s].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    mem[32] = 14
                    sub_71a4188b[stor12[s].field_1280] = sub_49fd49e8[s].field_768 - _518 + sub_71a4188b[stor12[s].field_1280]
                    stor11 = sub_49fd49e8[s].field_768 - _518 + stor11
                    mem[mem[64]] = 0x831d267800000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = sub_49fd49e8[s].field_768 - _518
                    require ext_code.size(sub_e22a7807Address)
                    call sub_e22a7807Address.removeFilledTradeAmount(uint256 rg1) with:
                         gas gas_remaining wei
                        args (sub_49fd49e8[s].field_768 - _518)
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_49fd49e8[s].field_768 - _518 != sub_49fd49e8[s].field_768:
                        if sub_49fd49e8[s].field_768 - _518 > sub_49fd49e8[s].field_768:
                            revert with 0, 'SafeMath: subtraction overflow'
                        mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_49fd49e8[s].field_512
                        mem[mem[64] + 36] = _518
                        require ext_code.size(sub_e22a7807Address)
                        call sub_e22a7807Address.cancel(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_49fd49e8[s].field_512, _518
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            require sub_49fd49e8.length - 1 < sub_49fd49e8.length
            require s < sub_49fd49e8.length
            sub_49fd49e8[s].field_0 = sub_49fd49e8[sub_49fd49e8.length].field_0
            sub_49fd49e8[s].field_256 = sub_49fd49e8[sub_49fd49e8.length].field_0
            sub_49fd49e8[s].field_512 = sub_49fd49e8[sub_49fd49e8.length].field_0
            sub_49fd49e8[s].field_768 = sub_49fd49e8[sub_49fd49e8.length].field_0
            sub_49fd49e8[s].field_1024 = sub_49fd49e8[sub_49fd49e8.length].field_0
            sub_49fd49e8[s].field_1280 = sub_49fd49e8[sub_49fd49e8.length].field_0
            require sub_49fd49e8.length
            mem[0] = 12
            sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
            sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
            sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
            sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
            sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
            sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
            sub_49fd49e8.length--
            s = s
            t = t - 1
            continue 
        if stor8 + sub_c12e8185 < sub_49fd49e8.length:
            stor8 += sub_c12e8185
        else:
            stor8 = 0
    else:
        if sub_c12e8185 < sub_49fd49e8.length:
            s = stor8
            t = sub_49fd49e8.length - stor8
            while s < stor8 + t:
                require s < sub_49fd49e8.length
                mem[0] = 12
                if sub_49fd49e8[s].field_1024 >= block.timestamp - ext_call.return_data[0]:
                    s = s + 1
                    t = t
                    continue 
                require s < sub_49fd49e8.length
                mem[0] = 12
                _473 = mem[64]
                mem[64] = mem[64] + 192
                mem[_473] = sub_49fd49e8[s].field_0
                mem[_473 + 32] = sub_49fd49e8[s].field_256
                mem[_473 + 64] = sub_49fd49e8[s].field_512
                mem[_473 + 96] = sub_49fd49e8[s].field_768
                mem[_473 + 128] = sub_49fd49e8[s].field_1024
                mem[_473 + 160] = sub_49fd49e8[s].field_1280
                _477 = mem[64]
                mem[64] = mem[64] + 128
                mem[_477] = 0
                mem[_477 + 32] = 0
                mem[_477 + 64] = 0
                mem[_477 + 96] = 0
                require ext_code.size(rubiconMarketAddress)
                staticcall rubiconMarketAddress.getOffer(uint256 rg1) with:
                        gas gas_remaining wei
                       args sub_49fd49e8[s].field_0
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _486 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _490 = mem[_486]
                _491 = mem[_486 + 32]
                require mem[_486 + 32] == mem[_486 + 44 len 20]
                _496 = mem[_486 + 64]
                _497 = mem[_486 + 96]
                require mem[_486 + 96] == mem[_486 + 108 len 20]
                _501 = mem[64]
                mem[64] = mem[64] + 128
                mem[_501] = _490
                mem[_501 + 32] = address(_491)
                mem[_501 + 64] = _496
                mem[_501 + 96] = address(_497)
                _507 = mem[64]
                mem[64] = mem[64] + 128
                mem[_507] = 0
                mem[_507 + 32] = 0
                mem[_507 + 64] = 0
                mem[_507 + 96] = 0
                require ext_code.size(rubiconMarketAddress)
                staticcall rubiconMarketAddress.getOffer(uint256 rg1) with:
                        gas gas_remaining wei
                       args sub_49fd49e8[s].field_512
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _516 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _520 = mem[_516]
                _521 = mem[_516 + 32]
                require mem[_516 + 32] == mem[_516 + 44 len 20]
                _526 = mem[_516 + 64]
                _527 = mem[_516 + 96]
                require mem[_516 + 96] == mem[_516 + 108 len 20]
                _531 = mem[64]
                mem[64] = mem[64] + 128
                mem[_531] = _520
                mem[_531 + 32] = address(_521)
                mem[_531 + 64] = _526
                mem[_531 + 96] = address(_527)
                if sub_49fd49e8[s].field_0:
                    if not sub_49fd49e8[s].field_256 - _490:
                        mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_49fd49e8[s].field_0
                        mem[mem[64] + 36] = sub_49fd49e8[s].field_256
                        require ext_code.size(sub_98ef3041Address)
                        call sub_98ef3041Address.cancel(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_49fd49e8[s].field_0, sub_49fd49e8[s].field_256
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[32] = 13
                        sub_7d1c98fa[stor12[s].field_1280] = sub_49fd49e8[s].field_256 - _490 + sub_7d1c98fa[stor12[s].field_1280]
                        stor10 = sub_49fd49e8[s].field_256 - _490 + stor10
                        mem[mem[64]] = 0x831d267800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_49fd49e8[s].field_256 - _490
                        require ext_code.size(sub_98ef3041Address)
                        call sub_98ef3041Address.removeFilledTradeAmount(uint256 rg1) with:
                             gas gas_remaining wei
                            args (sub_49fd49e8[s].field_256 - _490)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_49fd49e8[s].field_256 - _490 != sub_49fd49e8[s].field_256:
                            if sub_49fd49e8[s].field_256 - _490 > sub_49fd49e8[s].field_256:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_49fd49e8[s].field_0
                            mem[mem[64] + 36] = _490
                            require ext_code.size(sub_98ef3041Address)
                            call sub_98ef3041Address.cancel(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_49fd49e8[s].field_0, _490
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if sub_49fd49e8[s].field_512:
                    if not sub_49fd49e8[s].field_768 - _520:
                        mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_49fd49e8[s].field_512
                        mem[mem[64] + 36] = sub_49fd49e8[s].field_768
                        require ext_code.size(sub_e22a7807Address)
                        call sub_e22a7807Address.cancel(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args sub_49fd49e8[s].field_512, sub_49fd49e8[s].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[32] = 14
                        sub_71a4188b[stor12[s].field_1280] = sub_49fd49e8[s].field_768 - _520 + sub_71a4188b[stor12[s].field_1280]
                        stor11 = sub_49fd49e8[s].field_768 - _520 + stor11
                        mem[mem[64]] = 0x831d267800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = sub_49fd49e8[s].field_768 - _520
                        require ext_code.size(sub_e22a7807Address)
                        call sub_e22a7807Address.removeFilledTradeAmount(uint256 rg1) with:
                             gas gas_remaining wei
                            args (sub_49fd49e8[s].field_768 - _520)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_49fd49e8[s].field_768 - _520 != sub_49fd49e8[s].field_768:
                            if sub_49fd49e8[s].field_768 - _520 > sub_49fd49e8[s].field_768:
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = sub_49fd49e8[s].field_512
                            mem[mem[64] + 36] = _520
                            require ext_code.size(sub_e22a7807Address)
                            call sub_e22a7807Address.cancel(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args sub_49fd49e8[s].field_512, _520
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                require sub_49fd49e8.length - 1 < sub_49fd49e8.length
                require s < sub_49fd49e8.length
                sub_49fd49e8[s].field_0 = sub_49fd49e8[sub_49fd49e8.length].field_0
                sub_49fd49e8[s].field_256 = sub_49fd49e8[sub_49fd49e8.length].field_0
                sub_49fd49e8[s].field_512 = sub_49fd49e8[sub_49fd49e8.length].field_0
                sub_49fd49e8[s].field_768 = sub_49fd49e8[sub_49fd49e8.length].field_0
                sub_49fd49e8[s].field_1024 = sub_49fd49e8[sub_49fd49e8.length].field_0
                sub_49fd49e8[s].field_1280 = sub_49fd49e8[sub_49fd49e8.length].field_0
                require sub_49fd49e8.length
                mem[0] = 12
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8.length--
                s = s
                t = t - 1
                continue 
            if stor8 + sub_c12e8185 < sub_49fd49e8.length:
                stor8 += sub_c12e8185
            else:
                stor8 = 0
        else:
            idx = sub_49fd49e8.length
            while 0 < idx:
                require 0 < sub_49fd49e8.length
                mem[0] = 12
                if uint256(sub_49fd49e8.field_1024) >= block.timestamp - ext_call.return_data[0]:
                    idx = idx
                    continue 
                require 0 < sub_49fd49e8.length
                mem[0] = 12
                _475 = mem[64]
                mem[64] = mem[64] + 192
                mem[_475] = uint256(sub_49fd49e8.field_0)
                mem[_475 + 32] = uint256(sub_49fd49e8.field_256)
                mem[_475 + 64] = uint256(sub_49fd49e8.field_512)
                mem[_475 + 96] = uint256(sub_49fd49e8.field_768)
                mem[_475 + 128] = uint256(sub_49fd49e8.field_1024)
                mem[_475 + 160] = address(sub_49fd49e8.field_1280)
                _478 = mem[64]
                mem[64] = mem[64] + 128
                mem[_478] = 0
                mem[_478 + 32] = 0
                mem[_478 + 64] = 0
                mem[_478 + 96] = 0
                require ext_code.size(rubiconMarketAddress)
                staticcall rubiconMarketAddress.getOffer(uint256 rg1) with:
                        gas gas_remaining wei
                       args uint256(sub_49fd49e8.field_0)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _487 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _492 = mem[_487]
                _493 = mem[_487 + 32]
                require mem[_487 + 32] == mem[_487 + 44 len 20]
                _498 = mem[_487 + 64]
                _499 = mem[_487 + 96]
                require mem[_487 + 96] == mem[_487 + 108 len 20]
                _502 = mem[64]
                mem[64] = mem[64] + 128
                mem[_502] = _492
                mem[_502 + 32] = address(_493)
                mem[_502 + 64] = _498
                mem[_502 + 96] = address(_499)
                _508 = mem[64]
                mem[64] = mem[64] + 128
                mem[_508] = 0
                mem[_508 + 32] = 0
                mem[_508 + 64] = 0
                mem[_508 + 96] = 0
                require ext_code.size(rubiconMarketAddress)
                staticcall rubiconMarketAddress.getOffer(uint256 rg1) with:
                        gas gas_remaining wei
                       args uint256(sub_49fd49e8.field_512)
                mem[mem[64] len 128] = ext_call.return_data[0 len 128]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                _517 = mem[64]
                mem[64] = mem[64] + ceil32(return_data.size)
                require return_data.size >= 128
                _522 = mem[_517]
                _523 = mem[_517 + 32]
                require mem[_517 + 32] == mem[_517 + 44 len 20]
                _528 = mem[_517 + 64]
                _529 = mem[_517 + 96]
                require mem[_517 + 96] == mem[_517 + 108 len 20]
                _532 = mem[64]
                mem[64] = mem[64] + 128
                mem[_532] = _522
                mem[_532 + 32] = address(_523)
                mem[_532 + 64] = _528
                mem[_532 + 96] = address(_529)
                if uint256(sub_49fd49e8.field_0):
                    if not uint256(sub_49fd49e8.field_256) - _492:
                        mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(sub_49fd49e8.field_0)
                        mem[mem[64] + 36] = uint256(sub_49fd49e8.field_256)
                        require ext_code.size(sub_98ef3041Address)
                        call sub_98ef3041Address.cancel(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args uint256(sub_49fd49e8.field_0), uint256(sub_49fd49e8.field_256)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[32] = 13
                        sub_7d1c98fa[stor12] = uint256(sub_49fd49e8.field_256) - _492 + sub_7d1c98fa[stor12]
                        stor10 = uint256(sub_49fd49e8.field_256) - _492 + stor10
                        mem[mem[64]] = 0x831d267800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(sub_49fd49e8.field_256) - _492
                        require ext_code.size(sub_98ef3041Address)
                        call sub_98ef3041Address.removeFilledTradeAmount(uint256 rg1) with:
                             gas gas_remaining wei
                            args (uint256(sub_49fd49e8.field_256) - _492)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint256(sub_49fd49e8.field_256) - _492 != uint256(sub_49fd49e8.field_256):
                            if uint256(sub_49fd49e8.field_256) - _492 > uint256(sub_49fd49e8.field_256):
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(sub_49fd49e8.field_0)
                            mem[mem[64] + 36] = _492
                            require ext_code.size(sub_98ef3041Address)
                            call sub_98ef3041Address.cancel(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args uint256(sub_49fd49e8.field_0), _492
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                if uint256(sub_49fd49e8.field_512):
                    if not uint256(sub_49fd49e8.field_768) - _522:
                        mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(sub_49fd49e8.field_512)
                        mem[mem[64] + 36] = uint256(sub_49fd49e8.field_768)
                        require ext_code.size(sub_e22a7807Address)
                        call sub_e22a7807Address.cancel(uint256 rg1, uint256 rg2) with:
                             gas gas_remaining wei
                            args uint256(sub_49fd49e8.field_512), uint256(sub_49fd49e8.field_768)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    else:
                        mem[32] = 14
                        sub_71a4188b[stor12] = uint256(sub_49fd49e8.field_768) - _522 + sub_71a4188b[stor12]
                        stor11 = uint256(sub_49fd49e8.field_768) - _522 + stor11
                        mem[mem[64]] = 0x831d267800000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = uint256(sub_49fd49e8.field_768) - _522
                        require ext_code.size(sub_e22a7807Address)
                        call sub_e22a7807Address.removeFilledTradeAmount(uint256 rg1) with:
                             gas gas_remaining wei
                            args (uint256(sub_49fd49e8.field_768) - _522)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if uint256(sub_49fd49e8.field_768) - _522 != uint256(sub_49fd49e8.field_768):
                            if uint256(sub_49fd49e8.field_768) - _522 > uint256(sub_49fd49e8.field_768):
                                revert with 0, 'SafeMath: subtraction overflow'
                            mem[mem[64]] = 0xefa89500000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = uint256(sub_49fd49e8.field_512)
                            mem[mem[64] + 36] = _522
                            require ext_code.size(sub_e22a7807Address)
                            call sub_e22a7807Address.cancel(uint256 rg1, uint256 rg2) with:
                                 gas gas_remaining wei
                                args uint256(sub_49fd49e8.field_512), _522
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                require sub_49fd49e8.length - 1 < sub_49fd49e8.length
                require 0 < sub_49fd49e8.length
                uint256(sub_49fd49e8.field_0) = sub_49fd49e8[sub_49fd49e8.length].field_0
                uint256(sub_49fd49e8.field_256) = sub_49fd49e8[sub_49fd49e8.length].field_0
                uint256(sub_49fd49e8.field_512) = sub_49fd49e8[sub_49fd49e8.length].field_0
                uint256(sub_49fd49e8.field_768) = sub_49fd49e8[sub_49fd49e8.length].field_0
                uint256(sub_49fd49e8.field_1024) = sub_49fd49e8[sub_49fd49e8.length].field_0
                address(sub_49fd49e8.field_1280) = sub_49fd49e8[sub_49fd49e8.length].field_0
                require sub_49fd49e8.length
                mem[0] = 12
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8[sub_49fd49e8.length].field_0 = 0
                sub_49fd49e8.length--
                idx = idx - 1
                continue 
            if sub_c12e8185 < sub_49fd49e8.length:
                stor8 = sub_c12e8185
            else:
                stor8 = 0
}



}
