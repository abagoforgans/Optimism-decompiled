contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_0565856b(?) payable {
    mem[96] = 3
    mem[128 len 96] = call.data[calldata.size len 96]
    mem[224] = 7
    mem[256] = 65543
    mem[288] = 131079
    idx = 0
    while idx < mem[96]:
        if idx >= 3:
            revert with 0, 50
        if idx >= mem[96]:
            revert with 0, 50
        mem[(32 * idx) + 128] = mem[(32 * idx) + 224]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[320] = 6
    mem[352] = 96
    s = 352
    idx = 6
    while idx - 1:
        mem[s + 32] = 96
        s = s + 32
        idx = idx - 1
        continue 
    mem[736] = 23
    mem[768] = 0x11124141f010804000100010802000108020002080100000000000000000000
    mem[544] = 736
    mem[800] = 23
    mem[832] = 0x11424171f010804000100010802000108020002080100000000000000000000
    mem[576] = 800
    mem[864] = 23
    mem[896] = 0x11124141f010104000100010102000101020002010100000000000000000000
    mem[608] = 864
    mem[928] = 23
    mem[960] = 0x11424171f010104000100010102000101020002010100000000000000000000
    mem[640] = 928
    mem[992] = 23
    mem[1024] = 0x11124141f010304000100010302000103020002030100000000000000000000
    mem[672] = 992
    mem[64] = 1120
    mem[1056] = 23
    mem[1088] = 0x11424171f010304000100010302000103020002030100000000000000000000
    mem[704] = 1056
    idx = 0
    while idx < mem[320]:
        if idx >= 6:
            revert with 0, 50
        if idx >= mem[320]:
            revert with 0, 50
        mem[(32 * idx) + 352] = mem[(32 * idx) + 544]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[1120] = 64
    _32 = mem[96]
    mem[1184] = mem[96]
    mem[1216 len 32 * mem[96]] = mem[128 len 32 * mem[96]]
    idx = mem[96]
    mem[1152] = (32 * mem[96]) + 96
    _39 = mem[320]
    mem[(32 * mem[96]) + 1216] = mem[320]
    idx = 0
    s = 352
    t = (32 * mem[96]) + (32 * mem[320]) + 1248
    u = (32 * mem[96]) + 1248
    while idx < _39:
        mem[u] = t + -(32 * _32) - 1248
        _45 = mem[s]
        _46 = mem[mem[s]]
        mem[t] = mem[mem[s]]
        v = 0
        while v < _46:
            mem[v + t + 32] = mem[v + _45 + 32]
            v = v + 32
            continue 
        if ceil32(_46) > _46:
            mem[t + _46 + 32] = 0
        idx = idx + 1
        s = s + 32
        t = ceil32(_46) + t + 32
        u = u + 32
        continue 
    return memory
      from mem[64]
       len t - mem[64]
}



}
