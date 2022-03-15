contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function tokenBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if ext_code.size(arg2) <= 0:
        return 0
    require ext_code.size(arg2)
    staticcall arg2.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function balances(address[] arg1, address[] arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + 97 > test266151307() or floor32(arg1.length) + 97 < 96:
        revert with 'NH{q', 65
    mem[96] = arg1.length
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
    if arg2.length > test266151307():
        revert with 'NH{q', 65
    if floor32(arg1.length) + floor32(arg2.length) + 98 > test266151307() or floor32(arg2.length) + 98 < 97:
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    idx = 0
    s = arg2 + 36
    t = floor32(arg1.length) + 129
    while idx < arg2.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if arg2.length and arg1.length > -1 / arg2.length:
        revert with 'NH{q', 17
    if arg2.length * arg1.length > test266151307():
        revert with 'NH{q', 65
    mem[floor32(arg1.length) + floor32(arg2.length) + 98] = arg2.length * arg1.length
    mem[64] = floor32(arg1.length) + floor32(arg2.length) + (32 * arg2.length * arg1.length) + 130
    if not arg2.length * arg1.length:
        idx = 0
        while idx < arg1.length:
            _189 = mem[floor32(arg1.length) + 97]
            s = 0
            while s < _189:
                _192 = mem[floor32(arg1.length) + 97]
                if mem[floor32(arg1.length) + 97] and idx > -1 / mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 17
                if s > (-1 * mem[floor32(arg1.length) + 97] * idx) - 1:
                    revert with 'NH{q', 17
                if s >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                if idx >= mem[96]:
                    revert with 'NH{q', 50
                if not mem[(32 * s) + floor32(arg1.length) + 141 len 20]:
                    if s + (mem[floor32(arg1.length) + 97] * idx) >= mem[floor32(arg1.length) + floor32(arg2.length) + 98]:
                        revert with 'NH{q', 50
                    mem[(32 * s + (mem[floor32(arg1.length) + 97] * idx)) + floor32(arg1.length) + floor32(arg2.length) + 130] = eth.balance(mem[(32 * idx) + 128])
                else:
                    _207 = mem[(32 * idx) + 128]
                    if s >= mem[floor32(arg1.length) + 97]:
                        revert with 'NH{q', 50
                    _213 = mem[(32 * s) + floor32(arg1.length) + 129]
                    if ext_code.size(mem[(32 * s) + floor32(arg1.length) + 129]) <= 0:
                        if s + (mem[floor32(arg1.length) + 97] * idx) >= mem[floor32(arg1.length) + floor32(arg2.length) + 98]:
                            revert with 'NH{q', 50
                        mem[(32 * s + (mem[floor32(arg1.length) + 97] * idx)) + floor32(arg1.length) + floor32(arg2.length) + 130] = 0
                    else:
                        mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                        require ext_code.size(address(_213))
                        staticcall address(_213).0x70a08231 with:
                                gas gas_remaining wei
                               args address(_207)
                        mem[mem[64]] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _221 = mem[64]
                        mem[64] = mem[64] + ceil32(return_data.size)
                        require return_data.size >= 32
                        require mem[_221] == mem[_221]
                        if s + (_192 * idx) >= mem[floor32(arg1.length) + floor32(arg2.length) + 98]:
                            revert with 'NH{q', 50
                        mem[(32 * s + (_192 * idx)) + floor32(arg1.length) + floor32(arg2.length) + 130] = mem[_221]
                if s == -1:
                    revert with 'NH{q', 17
                _189 = mem[floor32(arg1.length) + 97]
                s = s + 1
                continue 
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        mem[mem[64]] = 32
        _153 = mem[floor32(arg1.length) + floor32(arg2.length) + 98]
        mem[mem[64] + 32] = mem[floor32(arg1.length) + floor32(arg2.length) + 98]
        mem[mem[64] + 64 len 32 * _153] = mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * _153]
        return 32, mem[mem[64] + 32 len (32 * _153) + 32]
    mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * arg2.length * arg1.length] = call.data[calldata.size len 32 * arg2.length * arg1.length]
    idx = 0
    while idx < arg1.length:
        _190 = mem[floor32(arg1.length) + 97]
        s = 0
        while s < _190:
            _194 = mem[floor32(arg1.length) + 97]
            if mem[floor32(arg1.length) + 97] and idx > -1 / mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 17
            if s > (-1 * mem[floor32(arg1.length) + 97] * idx) - 1:
                revert with 'NH{q', 17
            if s >= mem[floor32(arg1.length) + 97]:
                revert with 'NH{q', 50
            if idx >= mem[96]:
                revert with 'NH{q', 50
            if not mem[(32 * s) + floor32(arg1.length) + 141 len 20]:
                if s + (mem[floor32(arg1.length) + 97] * idx) >= mem[floor32(arg1.length) + floor32(arg2.length) + 98]:
                    revert with 'NH{q', 50
                mem[(32 * s + (mem[floor32(arg1.length) + 97] * idx)) + floor32(arg1.length) + floor32(arg2.length) + 130] = eth.balance(mem[(32 * idx) + 128])
            else:
                _211 = mem[(32 * idx) + 128]
                if s >= mem[floor32(arg1.length) + 97]:
                    revert with 'NH{q', 50
                _214 = mem[(32 * s) + floor32(arg1.length) + 129]
                if ext_code.size(mem[(32 * s) + floor32(arg1.length) + 129]) <= 0:
                    if s + (mem[floor32(arg1.length) + 97] * idx) >= mem[floor32(arg1.length) + floor32(arg2.length) + 98]:
                        revert with 'NH{q', 50
                    mem[(32 * s + (mem[floor32(arg1.length) + 97] * idx)) + floor32(arg1.length) + floor32(arg2.length) + 130] = 0
                else:
                    mem[mem[64] + 4] = mem[(32 * idx) + 140 len 20]
                    require ext_code.size(address(_214))
                    staticcall address(_214).0x70a08231 with:
                            gas gas_remaining wei
                           args address(_211)
                    mem[mem[64]] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _222 = mem[64]
                    mem[64] = mem[64] + ceil32(return_data.size)
                    require return_data.size >= 32
                    require mem[_222] == mem[_222]
                    if s + (_194 * idx) >= mem[floor32(arg1.length) + floor32(arg2.length) + 98]:
                        revert with 'NH{q', 50
                    mem[(32 * s + (_194 * idx)) + floor32(arg1.length) + floor32(arg2.length) + 130] = mem[_222]
            if s == -1:
                revert with 'NH{q', 17
            _190 = mem[floor32(arg1.length) + 97]
            s = s + 1
            continue 
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    mem[mem[64]] = 32
    _154 = mem[floor32(arg1.length) + floor32(arg2.length) + 98]
    mem[mem[64] + 32] = mem[floor32(arg1.length) + floor32(arg2.length) + 98]
    mem[mem[64] + 64 len 32 * _154] = mem[floor32(arg1.length) + floor32(arg2.length) + 130 len 32 * _154]
    return 32, mem[mem[64] + 32 len (32 * _154) + 32]
}



}
