contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_0565856b(?) payable {
    mem[96] = 7
    mem[128 len 224] = call.data[calldata.size len 224]
    mem[352] = 65544
    mem[384] = 196616
    mem[416] = 8
    mem[448] = 393224
    mem[480] = 262152
    mem[512] = 327688
    mem[544] = 131080
    idx = 0
    while idx < mem[96]:
        if idx >= 7:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = mem[(32 * idx) + 352]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[576] = 14
    mem[608] = 96
    s = 608
    idx = 14
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[1504] = 7
    mem[1536] = 0x122272326010100000000000000000000000000000000000000000000000000
    mem[1056] = 1504
    mem[1568] = 7
    mem[1600] = 0x122262325010100000000000000000000000000000000000000000000000000
    mem[1088] = 1568
    mem[1632] = 7
    mem[1664] = 0x122272326010200000000000000000000000000000000000000000000000000
    mem[1120] = 1632
    mem[1696] = 7
    mem[1728] = 0x122262325010200000000000000000000000000000000000000000000000000
    mem[1152] = 1696
    mem[1760] = 7
    mem[1792] = 0x122272326010300000000000000000000000000000000000000000000000000
    mem[1184] = 1760
    mem[1824] = 7
    mem[1856] = 0x122262325010300000000000000000000000000000000000000000000000000
    mem[1216] = 1824
    mem[1888] = 7
    mem[1920] = 0x120262125010400000000000000000000000000000000000000000000000000
    mem[1248] = 1888
    mem[1952] = 7
    mem[1984] = 0x120252124010400000000000000000000000000000000000000000000000000
    mem[1280] = 1952
    mem[2016] = 7
    mem[2048] = 0x122272326010500000000000000000000000000000000000000000000000000
    mem[1312] = 2016
    mem[2080] = 7
    mem[2112] = 0x122262325010500000000000000000000000000000000000000000000000000
    mem[1344] = 2080
    mem[2144] = 7
    mem[2176] = 0x122272326010600000000000000000000000000000000000000000000000000
    mem[1376] = 2144
    mem[2208] = 7
    mem[2240] = 0x122262325010600000000000000000000000000000000000000000000000000
    mem[1408] = 2208
    mem[2272] = 7
    mem[2304] = 0x122272326010700000000000000000000000000000000000000000000000000
    mem[1440] = 2272
    mem[64] = 2400
    mem[2336] = 7
    mem[2368] = 0x122262325010700000000000000000000000000000000000000000000000000
    mem[1472] = 2336
    idx = 0
    while idx < mem[576]:
        if idx >= 14:
            revert with 0, 50
        if idx >= mem[576]:
            revert with 0, 50
        mem[(32 * idx) + 608] = mem[(32 * idx) + 1056]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[2400] = 64
    _40 = mem[96]
    mem[2464] = mem[96]
    mem[2496 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    idx = mem[96]
    mem[2432] = (32 * mem[96]) + 96
    _47 = mem[576]
    mem[(32 * mem[96]) + 2496] = mem[576]
    idx = 0
    s = 608
    t = (32 * mem[96]) + (32 * mem[576]) + 2528
    u = (32 * mem[96]) + 2528
    while idx < _47:
        mem[u] = t + -(32 * _40) - 2528
        _53 = mem[s]
        _54 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _54:
            mem[v + t + 32] = mem[v + _53 + 32]
            v = v + 32
            continue 
        if ceil32(_54) > _54:
            mem[t + _54 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_54) + t + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}