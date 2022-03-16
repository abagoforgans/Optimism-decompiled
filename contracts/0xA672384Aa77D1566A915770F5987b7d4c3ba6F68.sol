contract main {




// =====================  Runtime code  =====================


#
#  - pTokenMetadataAll(address[] arg1)
#
function _fallback() payable {
    revert
}

function pendingPiggy(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.pendingPiggy(uint256 rg1, address rg2) with:
            gas gas_remaining wei
           args arg3, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function pTokenBalances(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    require ext_code.size(arg1)
    staticcall arg1.getAccountSnapshot(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 128
    return arg1 << 192, ext_call.return_data[32], ext_call.return_data[64], ext_call.return_data[96]
}

function pendingWpcAccrued(address arg1, address arg2, bool arg3, bool arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(arg1)
    staticcall arg1.pendingWpcAccrued(address rg1, bool rg2, bool rg3) with:
            gas gas_remaining wei
           args address(arg2), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function pendingPiggyAll(address arg1, address arg2, uint256[] arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg3.length <= test266151307()
    mem[96] = arg3.length
    mem[64] = (32 * arg3.length) + 128
    if not arg3.length:
        idx = 0
        while idx < arg3.length:
            mem[mem[64] + 4] = cd[((32 * idx) + arg3 + 36)]
            mem[mem[64] + 36] = arg2
            require ext_code.size(arg1)
            staticcall arg1.pendingPiggy(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg3 + 36)], arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _32 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_32]
            idx = idx + 1
            continue 
    else:
        mem[128 len 32 * arg3.length] = call.data[calldata.size len 32 * arg3.length]
        idx = 0
        while idx < arg3.length:
            mem[mem[64] + 4] = cd[((32 * idx) + arg3 + 36)]
            mem[mem[64] + 36] = arg2
            require ext_code.size(arg1)
            staticcall arg1.pendingPiggy(uint256 rg1, address rg2) with:
                    gas gas_remaining wei
                   args cd[((32 * idx) + arg3 + 36)], arg2
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _33 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            require idx < mem[96]
            mem[(32 * idx) + 128] = mem[_33]
            idx = idx + 1
            continue 
    mem[mem[64]] = 32
    mem[mem[64] + 32] = mem[96]
    mem[mem[64] + 64 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    return 32, mem[mem[64] + 32 len (32 * mem[96]) + 32]
}

function getAccountLimits(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    require ext_code.size(arg1)
    staticcall arg1.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args arg2
    mem[192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require 0 == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 288] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 292] = arg2
    require ext_code.size(arg1)
    staticcall arg1.getAssetsIn(address rg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _11 = mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64
    require mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 <= test266151307()
    require ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 319 < ceil32(return_data.size) + return_data.size + 288
    _12 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]) + 320 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg2) << 64 + 288]) + 320
    mem[(2 * ceil32(return_data.size)) + 288] = _12
    require return_data.size >= _11 + (32 * _12) + 32
    s = ceil32(return_data.size) + _11 + 320
    t = (2 * ceil32(return_data.size)) + 320
    idx = 0
    while idx < _12:
        require mem[s] == mem[s + 12 len 20]
        mem[t] = mem[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    mem[ceil32(return_data.size) + 192] = (2 * ceil32(return_data.size)) + 288
    mem[ceil32(return_data.size) + 224] = ext_call.return_data[32]
    mem[ceil32(return_data.size) + 256] = ext_call.return_data[64]
    mem[mem[64]] = 32
    mem[mem[64] + 32] = 96
    mem[mem[64] + 128] = _12
    s = mem[64] + 160
    idx = 0
    t = (2 * ceil32(return_data.size)) + 320
    while idx < _12:
        mem[s] = mem[t + 12 len 20]
        s = s + 32
        idx = idx + 1
        t = t + 32
        continue 
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len (32 * _12) + 160
}

function pTokenBalancesAll(address[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 == arg2
    require arg1.length <= test266151307()
    mem[96] = arg1.length
    mem[64] = (32 * arg1.length) + 128
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
            _50 = mem[64]
            mem[64] = mem[64] + 128
            mem[_50] = 0
            mem[_50 + 32] = 0
            mem[_50 + 64] = 0
            mem[_50 + 96] = 0
            require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
            staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _59 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _63 = mem[_59 + 32]
            _64 = mem[_59 + 64]
            _65 = mem[_59 + 96]
            _66 = mem[64]
            mem[64] = mem[64] + 128
            mem[_66] = address(cd[((32 * idx) + arg1 + 36)])
            mem[_66 + 32] = _63
            mem[_66 + 64] = _64
            mem[_66 + 96] = _65
            require idx < mem[96]
            mem[(32 * idx) + 128] = _66
            idx = idx + 1
            continue 
        _40 = mem[64]
        mem[mem[64]] = 32
        _41 = mem[96]
        mem[mem[64] + 32] = mem[96]
        idx = 0
        s = mem[64] + 64
        t = 128
        while idx < _41:
            _77 = mem[t]
            mem[s] = mem[mem[t] + 12 len 20]
            mem[s + 32] = mem[_77 + 32]
            mem[s + 64] = mem[_77 + 64]
            mem[s + 96] = mem[_77 + 96]
            idx = idx + 1
            s = s + 128
            t = t + 32
            continue 
        return memory
          from mem[64]
           len _40 + (128 * _41) + -mem[64] + 64
    mem[64] = (32 * arg1.length) + 256
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[(32 * arg1.length) + 224] = 0
    mem[var20001] = (32 * arg1.length) + 128
    s = var20001
    idx = var20002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(32 * arg1.length) + 128] = 0
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 192] = 0
        mem[(32 * arg1.length) + 224] = 0
        mem[s + 32] = (32 * arg1.length) + 128
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require cd[((32 * idx) + arg1 + 36)] == address(cd[((32 * idx) + arg1 + 36)])
        _109 = mem[64]
        mem[64] = mem[64] + 128
        mem[_109] = 0
        mem[_109 + 32] = 0
        mem[_109 + 64] = 0
        mem[_109 + 96] = 0
        require ext_code.size(address(cd[((32 * idx) + arg1 + 36)]))
        staticcall address(cd[((32 * idx) + arg1 + 36)]).getAccountSnapshot(address rg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _112 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _114 = mem[_112 + 32]
        _115 = mem[_112 + 64]
        _116 = mem[_112 + 96]
        _117 = mem[64]
        mem[64] = mem[64] + 128
        mem[_117] = address(cd[((32 * idx) + arg1 + 36)])
        mem[_117 + 32] = _114
        mem[_117 + 64] = _115
        mem[_117 + 96] = _116
        require idx < mem[96]
        mem[(32 * idx) + 128] = _117
        idx = idx + 1
        continue 
    _101 = mem[64]
    mem[mem[64]] = 32
    _102 = mem[96]
    mem[mem[64] + 32] = mem[96]
    idx = 0
    s = mem[64] + 64
    t = 128
    while idx < _102:
        _119 = mem[t]
        mem[s] = mem[mem[t] + 12 len 20]
        mem[s + 32] = mem[_119 + 32]
        mem[s + 64] = mem[_119 + 64]
        mem[s + 96] = mem[_119 + 96]
        idx = idx + 1
        s = s + 128
        t = t + 32
        continue 
    return memory
      from mem[64]
       len _101 + (128 * _102) + -mem[64] + 64
}

function pTokenMetadata(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    mem[512] = 0
    require ext_code.size(arg1)
    staticcall arg1.exchangeRateStored() with:
            gas gas_remaining wei
    mem[544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.comptroller() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 544] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).markets(address rg1) with:
            gas gas_remaining wei
           args arg1
    mem[(2 * ceil32(return_data.size)) + 544 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    mem[(4 * ceil32(return_data.size)) + 544] = 0x95d89b4100000000000000000000000000000000000000000000000000000000
    require ext_code.size(arg1)
    staticcall arg1.symbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(4 * ceil32(return_data.size)) + 544 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (6 * ceil32(return_data.size)) + 544
    require return_data.size >= 32
    _18 = mem[(4 * ceil32(return_data.size)) + 544]
    require mem[(4 * ceil32(return_data.size)) + 544] <= test266151307()
    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544] + 575 < (4 * ceil32(return_data.size)) + return_data.size + 544
    _19 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544] + 544]
    require mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544] + 544] <= test266151307()
    require ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544] + 544]) + 32 >= 0 and (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544] + 544]) + 576 <= test266151307()
    mem[64] = (6 * ceil32(return_data.size)) + ceil32(mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 544] + 544]) + 576
    mem[(6 * ceil32(return_data.size)) + 544] = _19
    require _18 + _19 + 32 <= return_data.size
    mem[(6 * ceil32(return_data.size)) + 576 len ceil32(_19)] = mem[(4 * ceil32(return_data.size)) + _18 + 576 len ceil32(_19)]
    if ceil32(_19) <= _19:
        _959 = mem[64]
        mem[64] = mem[64] + 64
        mem[_959] = 4
        mem[_959 + 32] = 0x7045544800000000000000000000000000000000000000000000000000000000
        _960 = mem[64]
        mem[mem[64] + 32] = 0x7045544800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 36] = 0
        _1906 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        _1908 = sha3(mem[_1906 + 32 len mem[_1906]])
        mem[_960 + 68 len ceil32(_19)] = mem[(6 * ceil32(return_data.size)) + 576 len ceil32(_19)]
        if ceil32(_19) > _19:
            mem[_960 + _19 + 68] = 0
        mem[64] = _19 + _960 + 68
        if sha3(mem[_960 + 68 len _19]) == _1908:
            require ext_code.size(arg1)
            staticcall arg1.supplyRatePerBlock() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.borrowRatePerBlock() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.reserveFactorMantissa() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.totalBorrows() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.totalReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.getCash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            return address(arg1), 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0]),
                   ext_call.return_data[32],
                   0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee,
                   ext_call.return_data[31 len 1],
                   18
    else:
        mem[(6 * ceil32(return_data.size)) + _19 + 576] = 0
        _961 = mem[64]
        mem[64] = mem[64] + 64
        mem[_961] = 4
        mem[_961 + 32] = 0x7045544800000000000000000000000000000000000000000000000000000000
        _963 = mem[64]
        mem[mem[64] + 32] = 0x7045544800000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 36] = 0
        _1911 = mem[64]
        mem[mem[64]] = 4
        mem[64] = mem[64] + 36
        _1913 = sha3(mem[_1911 + 32 len mem[_1911]])
        mem[_963 + 68 len ceil32(_19)] = mem[(6 * ceil32(return_data.size)) + 576 len ceil32(_19)]
        if ceil32(_19) > _19:
            mem[_963 + _19 + 68] = 0
        mem[64] = _19 + _963 + 68
        if sha3(mem[_963 + 68 len _19]) == _1913:
            require ext_code.size(arg1)
            staticcall arg1.supplyRatePerBlock() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.borrowRatePerBlock() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.reserveFactorMantissa() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.totalBorrows() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.totalReserves() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.totalSupply() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.getCash() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(arg1)
            staticcall arg1.decimals() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[31 len 1]
            return address(arg1), 
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   ext_call.return_data[0],
                   bool(ext_call.return_data[0]),
                   ext_call.return_data[32],
                   0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee,
                   ext_call.return_data[31 len 1],
                   18
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(arg1)
    staticcall arg1.underlying() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    require ext_code.size(arg1)
    staticcall arg1.supplyRatePerBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.borrowRatePerBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.reserveFactorMantissa() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.totalBorrows() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.totalReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.getCash() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    return address(arg1), 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           bool(ext_call.return_data[0]),
           ext_call.return_data[32],
           address(ext_call.return_data[0]),
           ext_call.return_data[31 len 1],
           ext_call.return_data[0] << 248
}



}
