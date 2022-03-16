contract main {




// =====================  Runtime code  =====================


#
#  - all()
#  - pTokenMetadata(address arg1)
#  - pTokenMetadataAll(address[] arg1)
#  - sub_ea1ac324(?)
#
const sub_a220db71(?) = ext_call.return_data[0]


address comptrollerAddress;
address distributionAddress;
array of uint256 sub_7ce12bd2;
array of uint256 nativeToken;
array of uint256 sub_dfe70cef;
address owner;

function distribution() payable {
    return distributionAddress
}

function comptroller() payable {
    return comptrollerAddress
}

function sub_7ce12bd2(?) payable {
    return sub_7ce12bd2[0 len sub_7ce12bd2.length]
}

function owner() payable {
    return owner
}

function sub_dfe70cef(?) payable {
    return sub_dfe70cef[0 len sub_dfe70cef.length]
}

function nativeToken() payable {
    return nativeToken[0 len nativeToken.length]
}

function _fallback() payable {
    revert
}

function sub_3e33c78e(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require ext_code.size(distributionAddress)
    staticcall distributionAddress.wpcSpeeds(address rg1) with:
            gas gas_remaining wei
           args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return arg1 << 192, ext_call.return_data[0]
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

function sub_da11196f(?) payable {
    require calldata.size - 4 >= 160
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require ceil32(arg3.length) + 128 >= 96 and ceil32(arg3.length) + 128 <= test266151307()
    require arg3 + arg3.length + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 160 >= 128 and ceil32(arg3.length) + ceil32(arg4.length) + 160 <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 192 >= 160 and ceil32(arg3.length) + ceil32(arg4.length) + ceil32(arg5.length) + 192 <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'sender is not owner'
    comptrollerAddress = address(arg1)
    distributionAddress = address(arg2)
    sub_7ce12bd2[] = Array(len=arg3.length, data=arg3[all])
    nativeToken[] = Array(len=arg4.length, data=arg4[all])
    sub_dfe70cef[] = Array(len=arg5.length, data=arg5[all])
}

function getInterestRateModel(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(arg1)
    staticcall arg1.interestRateModel() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).blocksPerYear() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).multiplierPerBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).baseRatePerBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).jumpMultiplierPerBlock() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).kink() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return address(arg1), 
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0],
           ext_call.return_data[0]
}

function getAccountLimits(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[96] = 96
    mem[128] = 0
    mem[160] = 0
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.getAccountLiquidity(address rg1) with:
            gas gas_remaining wei
           args arg1
    mem[192 len 96] = ext_call.return_data[0 len 96]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require 0 == ext_call.return_data[0]
    mem[ceil32(return_data.size) + 288] = 0xabfceffc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(return_data.size) + 292] = arg1
    require ext_code.size(comptrollerAddress)
    staticcall comptrollerAddress.getAssetsIn(address rg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[ceil32(return_data.size) + 288 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = (2 * ceil32(return_data.size)) + 288
    require return_data.size >= 32
    _11 = mem[ceil32(return_data.size) + 288 len 4], address(arg1) << 64
    require mem[ceil32(return_data.size) + 288 len 4], address(arg1) << 64 <= test266151307()
    require ceil32(return_data.size) + return_data.size + 288 > ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg1) << 64 + 319
    _12 = mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg1) << 64 + 288]
    require mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg1) << 64 + 288] <= test266151307()
    require (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg1) << 64 + 288]) + 32 >= 0 and (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg1) << 64 + 288]) + 320 <= test266151307()
    mem[64] = (2 * ceil32(return_data.size)) + (32 * mem[ceil32(return_data.size) + mem[ceil32(return_data.size) + 288 len 4], address(arg1) << 64 + 288]) + 320
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
    idx = 0
    s = mem[64] + 160
    t = (2 * ceil32(return_data.size)) + 320
    while idx < _12:
        mem[s] = mem[t + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[mem[64] + 64] = mem[ceil32(return_data.size) + 224]
    mem[mem[64] + 96] = mem[ceil32(return_data.size) + 256]
    return memory
      from mem[64]
       len (32 * _12) + 160
}

function sub_491ee558(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 160
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require idx < mem[96]
            _71 = mem[(32 * idx) + 128]
            _73 = mem[64]
            mem[64] = mem[64] + 64
            mem[_73] = 0
            mem[_73 + 32] = 0
            mem[mem[64] + 4] = address(_71)
            require ext_code.size(distributionAddress)
            staticcall distributionAddress.wpcSpeeds(address rg1) with:
                    gas gas_remaining wei
                   args address(_71)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _83 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _87 = mem[_83]
            _89 = mem[64]
            mem[64] = mem[64] + 64
            mem[_89] = address(_71)
            mem[_89 + 32] = _87
            require idx < mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _89
            idx = idx + 1
            continue 
        _70 = mem[64]
        mem[mem[64]] = 32
        _72 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + 64
        while idx < _72:
            _100 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_100 + 32]
            idx = idx + 1
            s = s + 32
            t = t + 64
            continue 
        return memory
          from mem[64]
           len _70 + (64 * _72) + -mem[64] + 64
    mem[64] = (64 * ('cd', 4).length) + 224
    mem[(64 * ('cd', 4).length) + 160] = 0
    mem[(64 * ('cd', 4).length) + 192] = 0
    mem[var25001] = (64 * ('cd', 4).length) + 160
    s = var25001
    idx = var25002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(64 * ('cd', 4).length) + 160] = 0
        mem[(64 * ('cd', 4).length) + 192] = 0
        mem[s + 32] = (64 * ('cd', 4).length) + 160
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _121 = mem[(32 * idx) + 128]
        _123 = mem[64]
        mem[64] = mem[64] + 64
        mem[_123] = 0
        mem[_123 + 32] = 0
        mem[mem[64] + 4] = address(_121)
        require ext_code.size(distributionAddress)
        staticcall distributionAddress.wpcSpeeds(address rg1) with:
                gas gas_remaining wei
               args address(_121)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _130 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _131 = mem[_130]
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = address(_121)
        mem[_132 + 32] = _131
        require idx < mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _132
        idx = idx + 1
        continue 
    _120 = mem[64]
    mem[mem[64]] = 32
    _122 = mem[(32 * ('cd', 4).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = (32 * ('cd', 4).length) + 160
    t = mem[64] + 64
    while idx < _122:
        _134 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_134 + 32]
        idx = idx + 1
        s = s + 32
        t = t + 64
        continue 
    return memory
      from mem[64]
       len _120 + (64 * _122) + -mem[64] + 64
}

function pTokenBalancesAll(address[] arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require (32 * arg1.length) + 128 >= 96 and (32 * arg1.length) + 128 <= test266151307()
    mem[96] = arg1.length
    require calldata.size >= arg1 + (32 * arg1.length) + 36
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
    require arg2 == arg2
    require arg1.length <= test266151307()
    mem[(32 * arg1.length) + 128] = arg1.length
    mem[64] = (64 * arg1.length) + 160
    if not arg1.length:
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            _91 = mem[(32 * idx) + 128]
            _93 = mem[64]
            mem[64] = mem[64] + 128
            mem[_93] = 0
            mem[_93 + 32] = 0
            mem[_93 + 64] = 0
            mem[_93 + 96] = 0
            require ext_code.size(address(_91))
            staticcall address(_91).getAccountSnapshot(address rg1) with:
                    gas gas_remaining wei
                   args address(arg2)
            mem[mem[64] len 128] = ext_call.return_data[0 len 128]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _105 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 128
            _110 = mem[_105 + 32]
            _111 = mem[_105 + 64]
            _112 = mem[_105 + 96]
            _114 = mem[64]
            mem[64] = mem[64] + 128
            mem[_114] = address(_91)
            mem[_114 + 32] = _110
            mem[_114 + 64] = _111
            mem[_114 + 96] = _112
            require idx < mem[(32 * arg1.length) + 128]
            mem[(32 * idx) + (32 * arg1.length) + 160] = _114
            idx = idx + 1
            continue 
        _90 = mem[64]
        mem[mem[64]] = 32
        _92 = mem[(32 * arg1.length) + 128]
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        idx = 0
        s = (32 * arg1.length) + 160
        t = mem[64] + 64
        while idx < _92:
            _130 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_130 + 32]
            mem[t + 64] = mem[_130 + 64]
            mem[t + 96] = mem[_130 + 96]
            idx = idx + 1
            s = s + 32
            t = t + 128
            continue 
        return memory
          from mem[64]
           len _90 + (128 * _92) + -mem[64] + 64
    mem[64] = (64 * arg1.length) + 288
    mem[(64 * arg1.length) + 160] = 0
    mem[(64 * arg1.length) + 192] = 0
    mem[(64 * arg1.length) + 224] = 0
    mem[(64 * arg1.length) + 256] = 0
    mem[var28001] = (64 * arg1.length) + 160
    s = var28001
    idx = var28002
    while idx - 1:
        mem[64] = mem[64] + 128
        mem[(64 * arg1.length) + 160] = 0
        mem[(64 * arg1.length) + 192] = 0
        mem[(64 * arg1.length) + 224] = 0
        mem[(64 * arg1.length) + 256] = 0
        mem[s + 32] = (64 * arg1.length) + 160
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _158 = mem[(32 * idx) + 128]
        _160 = mem[64]
        mem[64] = mem[64] + 128
        mem[_160] = 0
        mem[_160 + 32] = 0
        mem[_160 + 64] = 0
        mem[_160 + 96] = 0
        require ext_code.size(address(_158))
        staticcall address(_158).getAccountSnapshot(address rg1) with:
                gas gas_remaining wei
               args address(arg2)
        mem[mem[64] len 128] = ext_call.return_data[0 len 128]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _169 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 128
        _171 = mem[_169 + 32]
        _172 = mem[_169 + 64]
        _173 = mem[_169 + 96]
        _174 = mem[64]
        mem[64] = mem[64] + 128
        mem[_174] = address(_158)
        mem[_174 + 32] = _171
        mem[_174 + 64] = _172
        mem[_174 + 96] = _173
        require idx < mem[(32 * arg1.length) + 128]
        mem[(32 * idx) + (32 * arg1.length) + 160] = _174
        idx = idx + 1
        continue 
    _157 = mem[64]
    mem[mem[64]] = 32
    _159 = mem[(32 * arg1.length) + 128]
    mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
    idx = 0
    s = (32 * arg1.length) + 160
    t = mem[64] + 64
    while idx < _159:
        _176 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_176 + 32]
        mem[t + 64] = mem[_176 + 64]
        mem[t + 96] = mem[_176 + 96]
        idx = idx + 1
        s = s + 32
        t = t + 128
        continue 
    return memory
      from mem[64]
       len _157 + (128 * _159) + -mem[64] + 64
}

function sub_7cd2eeb1(?) payable {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require (32 * ('cd', 4).length) + 128 >= 96 and (32 * ('cd', 4).length) + 128 <= test266151307()
    mem[96] = ('cd', 4).length
    require calldata.size >= cd[4] + (32 * ('cd', 4).length) + 36
    idx = 0
    s = cd[4] + 36
    t = 128
    while idx < ('cd', 4).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 4).length <= test266151307()
    mem[(32 * ('cd', 4).length) + 128] = ('cd', 4).length
    mem[64] = (64 * ('cd', 4).length) + 160
    if not ('cd', 4).length:
        idx = 0
        while idx < ('cd', 4).length:
            require idx < mem[96]
            _167 = mem[(32 * idx) + 128]
            _169 = mem[64]
            mem[64] = mem[64] + 192
            mem[_169] = 0
            mem[_169 + 32] = 0
            mem[_169 + 64] = 0
            mem[_169 + 96] = 0
            mem[_169 + 128] = 0
            mem[_169 + 160] = 0
            require ext_code.size(address(_167))
            staticcall address(_167).interestRateModel() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _180 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _184 = mem[_180]
            require mem[_180] == mem[_180 + 12 len 20]
            _197 = mem[64]
            mem[64] = mem[64] + 192
            mem[_197] = address(_167)
            require ext_code.size(address(_184))
            staticcall address(_184).blocksPerYear() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _202 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_197 + 32] = mem[_202]
            require ext_code.size(address(_184))
            staticcall address(_184).multiplierPerBlock() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _209 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_197 + 64] = mem[_209]
            require ext_code.size(address(_184))
            staticcall address(_184).baseRatePerBlock() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _217 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_197 + 96] = mem[_217]
            require ext_code.size(address(_184))
            staticcall address(_184).jumpMultiplierPerBlock() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _225 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_197 + 128] = mem[_225]
            require ext_code.size(address(_184))
            staticcall address(_184).kink() with:
                    gas gas_remaining wei
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            _233 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            mem[_197 + 160] = mem[_233]
            require idx < mem[(32 * ('cd', 4).length) + 128]
            mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _197
            idx = idx + 1
            continue 
        _166 = mem[64]
        mem[mem[64]] = 32
        _168 = mem[(32 * ('cd', 4).length) + 128]
        mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
        idx = 0
        s = (32 * ('cd', 4).length) + 160
        t = mem[64] + 64
        while idx < _168:
            _244 = mem[s]
            mem[t] = mem[mem[s] + 12 len 20]
            mem[t + 32] = mem[_244 + 32]
            mem[t + 64] = mem[_244 + 64]
            mem[t + 96] = mem[_244 + 96]
            mem[t + 128] = mem[_244 + 128]
            mem[t + 160] = mem[_244 + 160]
            idx = idx + 1
            s = s + 32
            t = t + 192
            continue 
        return memory
          from mem[64]
           len _166 + (192 * _168) + -mem[64] + 64
    mem[64] = (64 * ('cd', 4).length) + 352
    mem[(64 * ('cd', 4).length) + 160] = 0
    mem[(64 * ('cd', 4).length) + 192] = 0
    mem[(64 * ('cd', 4).length) + 224] = 0
    mem[(64 * ('cd', 4).length) + 256] = 0
    mem[(64 * ('cd', 4).length) + 288] = 0
    mem[(64 * ('cd', 4).length) + 320] = 0
    mem[var25001] = (64 * ('cd', 4).length) + 160
    s = var25001
    idx = var25002
    while idx - 1:
        mem[64] = mem[64] + 192
        mem[(64 * ('cd', 4).length) + 160] = 0
        mem[(64 * ('cd', 4).length) + 192] = 0
        mem[(64 * ('cd', 4).length) + 224] = 0
        mem[(64 * ('cd', 4).length) + 256] = 0
        mem[(64 * ('cd', 4).length) + 288] = 0
        mem[(64 * ('cd', 4).length) + 320] = 0
        mem[s + 32] = (64 * ('cd', 4).length) + 160
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < ('cd', 4).length:
        require idx < mem[96]
        _293 = mem[(32 * idx) + 128]
        _295 = mem[64]
        mem[64] = mem[64] + 192
        mem[_295] = 0
        mem[_295 + 32] = 0
        mem[_295 + 64] = 0
        mem[_295 + 96] = 0
        mem[_295 + 128] = 0
        mem[_295 + 160] = 0
        require ext_code.size(address(_293))
        staticcall address(_293).interestRateModel() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _305 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _307 = mem[_305]
        require mem[_305] == mem[_305 + 12 len 20]
        _308 = mem[64]
        mem[64] = mem[64] + 192
        mem[_308] = address(_293)
        require ext_code.size(address(_307))
        staticcall address(_307).blocksPerYear() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _311 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_308 + 32] = mem[_311]
        require ext_code.size(address(_307))
        staticcall address(_307).multiplierPerBlock() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _315 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_308 + 64] = mem[_315]
        require ext_code.size(address(_307))
        staticcall address(_307).baseRatePerBlock() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _319 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_308 + 96] = mem[_319]
        require ext_code.size(address(_307))
        staticcall address(_307).jumpMultiplierPerBlock() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _323 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_308 + 128] = mem[_323]
        require ext_code.size(address(_307))
        staticcall address(_307).kink() with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _327 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        mem[_308 + 160] = mem[_327]
        require idx < mem[(32 * ('cd', 4).length) + 128]
        mem[(32 * idx) + (32 * ('cd', 4).length) + 160] = _308
        idx = idx + 1
        continue 
    _292 = mem[64]
    mem[mem[64]] = 32
    _294 = mem[(32 * ('cd', 4).length) + 128]
    mem[mem[64] + 32] = mem[(32 * ('cd', 4).length) + 128]
    idx = 0
    s = (32 * ('cd', 4).length) + 160
    t = mem[64] + 64
    while idx < _294:
        _330 = mem[s]
        mem[t] = mem[mem[s] + 12 len 20]
        mem[t + 32] = mem[_330 + 32]
        mem[t + 64] = mem[_330 + 64]
        mem[t + 96] = mem[_330 + 96]
        mem[t + 128] = mem[_330 + 128]
        mem[t + 160] = mem[_330 + 160]
        idx = idx + 1
        s = s + 32
        t = t + 192
        continue 
    return memory
      from mem[64]
       len _292 + (192 * _294) + -mem[64] + 64
}



}
