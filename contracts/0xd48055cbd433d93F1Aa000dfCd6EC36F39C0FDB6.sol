contract main {




// =====================  Runtime code  =====================


#
#  - sub_926f86ff(?)
#  - sub_fdf2d258(?)
#
address stor0;
address stor1;
address stor2;
address stor3;
address initiatorAddress;
address daoAddress;
address maintainerAddress;

function dao() payable {
    return daoAddress
}

function initiator() payable {
    return initiatorAddress
}

function maintainer() payable {
    return maintainerAddress
}

function _fallback() payable {
    revert
}

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == Mask(32, 224, arg1)
    if 0x4e2312e000000000000000000000000000000000000000000000000000000000 == Mask(32, 224, arg1):
        return True
    return (Mask(32, 224, arg1) == 0x1ffc9a700000000000000000000000000000000000000000000000000000000)
}

function sub_0f320d04(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    require arg1.length <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require msg.sender == maintainerAddress
    require ext_code.size(stor1)
    call stor1.0x1af82eea with:
         gas gas_remaining wei
        args 9, Array(len=arg1.length, data=arg1[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
}

function onERC1155Received(address arg1, address arg2, uint256 arg3, uint256 arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    if arg5.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg5.length)) + 97 < 96 or ceil32(ceil32(arg5.length)) + 97 > test266151307():
        revert with 0, 65
    require arg5 + arg5.length + 36 <= calldata.size
    if this.address == arg1:
        return 0xf23a6e6100000000000000000000000000000000000000000000000000000000
    else:
        return 0
}

function setDAO(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        if daoAddress != msg.sender:
            revert with 0, 'not l2 dao'
    else:
        require ext_code.size(stor0)
        staticcall stor0.xDomainMessageSender() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != daoAddress:
            revert with 0, 'not l1 dao'
    daoAddress = arg1
}

function setInitiator(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        if daoAddress != msg.sender:
            revert with 0, 'not l2 dao'
    else:
        require ext_code.size(stor0)
        staticcall stor0.xDomainMessageSender() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != daoAddress:
            revert with 0, 'not l1 dao'
    initiatorAddress = arg1
}

function setMaintainer(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor0 != msg.sender:
        if daoAddress != msg.sender:
            revert with 0, 'not l2 dao'
    else:
        require ext_code.size(stor0)
        staticcall stor0.xDomainMessageSender() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != daoAddress:
            revert with 0, 'not l1 dao'
    maintainerAddress = arg1
}

function onERC1155BatchReceived(address arg1, address arg2, uint256[] arg3, uint256[] arg4, bytes arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 == arg1
    require arg2 == arg2
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    require arg3.length <= test266151307()
    require arg3 + (32 * arg3.length) + 36 <= calldata.size
    require arg4 <= test266151307()
    require arg4 + 35 < calldata.size
    require arg4.length <= test266151307()
    require arg4 + (32 * arg4.length) + 36 <= calldata.size
    require arg5 <= test266151307()
    require arg5 + 35 < calldata.size
    require arg5.length <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    return 0
}

function sub_cb6e3ef7(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor0 != msg.sender:
        if daoAddress != msg.sender:
            revert with 0, 'not l2 dao'
    else:
        require ext_code.size(stor0)
        staticcall stor0.xDomainMessageSender() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != daoAddress:
            revert with 0, 'not l1 dao'
    require ext_code.size(stor2)
    call stor2.0xcb6e3ef7 with:
         gas gas_remaining wei
        args address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_2623e350(?) payable {
    require calldata.size - 4 >= 96
    require arg2 == address(arg2)
    require arg3 <= test266151307()
    require arg3 + 35 < calldata.size
    if arg3.length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(arg3.length)) + 97 < 96 or ceil32(ceil32(arg3.length)) + 97 > test266151307():
        revert with 0, 65
    require arg3 + arg3.length + 36 <= calldata.size
    require msg.sender == stor0
    require ext_code.size(stor0)
    staticcall stor0.xDomainMessageSender() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == initiatorAddress
    require ext_code.size(stor3)
    call stor3.0x2623e350 with:
         gas gas_remaining wei
        args arg1, address(arg2), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_39d3d0d6(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == uint8(arg1)
    require arg2 <= test266151307()
    require arg2 + 35 < calldata.size
    require arg2.length <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if stor0 != msg.sender:
        if daoAddress != msg.sender:
            revert with 0, 'not l2 dao'
    else:
        require ext_code.size(stor0)
        staticcall stor0.xDomainMessageSender() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != daoAddress:
            revert with 0, 'not l1 dao'
    require ext_code.size(stor1)
    call stor1.0x1af82eea with:
         gas gas_remaining wei
        args arg1 << 248, Array(len=arg2.length, data=arg2[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
}

function sub_4d970a1f(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require msg.sender == maintainerAddress
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 36).length) + 196
    u = 196
    while idx < ('cd', 36).length:
        mem[u] = t - 196
        require cd[s] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        require cd[36] + 36 <= calldata.size - cd[(cd[36] + cd[s] + 36)]
        mem[t] = cd[(cd[36] + cd[s] + 36)]
        mem[t + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[cd[(cd[36] + cd[s] + 36)] + t + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    require ext_code.size(stor2)
    call stor2.0xceed851f with:
         gas gas_remaining wei
        args cd[4] << 248, Array(len=('cd', 36).length, data=mem[196 len (32 * ('cd', 36).length) + (32 * ('cd', 36).length)])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_deeb2696(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require calldata.size > cd[36] + 35
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 97 < 96 or ceil32(32 * ('cd', 36).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    s = cd[36] + 36
    t = 128
    idx = 0
    while idx < ('cd', 36).length:
        require cd[s] == Mask(32, 224, cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    require msg.sender == maintainerAddress
    mem[ceil32(32 * ('cd', 36).length) + 97] = 0xdeeb269600000000000000000000000000000000000000000000000000000000
    mem[ceil32(32 * ('cd', 36).length) + 101] = uint8(cd[4])
    mem[ceil32(32 * ('cd', 36).length) + 133] = 64
    idx = 0
    s = ceil32(32 * ('cd', 36).length) + 197
    t = 128
    while idx < ('cd', 36).length:
        mem[s] = Mask(32, 224, mem[t])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor3)
    call stor3.0xdeeb2696 with:
         gas gas_remaining wei
        args cd[4] << 248, Array(len=('cd', 36).length, data=mem[ceil32(32 * ('cd', 36).length) + 197 len 32 * ('cd', 36).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1a8bf244(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require msg.sender == maintainerAddress
    require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    idx = 0
    s = cd[36] + 36
    t = (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + 228
    u = (32 * ('cd', 4).length) + 228
    while idx < ('cd', 36).length:
        mem[u] = t + -(32 * ('cd', 4).length) - 228
        require cd[s] < calldata.size + -cd[36] - 67
        require cd[(cd[36] + cd[s] + 36)] <= test266151307()
        require cd[36] + 36 <= calldata.size - cd[(cd[36] + cd[s] + 36)]
        mem[t] = cd[(cd[36] + cd[s] + 36)]
        mem[t + 32 len cd[(cd[36] + cd[s] + 36)]] = call.data[cd[36] + cd[s] + 68 len cd[(cd[36] + cd[s] + 36)]]
        mem[cd[(cd[36] + cd[s] + 36)] + t + 32] = 0
        idx = idx + 1
        s = s + 32
        t = t + ceil32(cd[(cd[36] + cd[s] + 36)]) + 32
        u = u + 32
        continue 
    require ext_code.size(stor3)
    call stor3.0xa32b3cb8 with:
         gas gas_remaining wei
        args 0, 64, (32 * ('cd', 4).length) + 96, ('cd', 4).length, call.data[cd[4] + 36 len 32 * ('cd', 4).length], ('cd', 36).length, mem[(32 * ('cd', 4).length) + 228 len (32 * ('cd', 36).length) + (32 * ('cd', 36).length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_20d89e90(?) payable {
    require calldata.size - 4 >= 288
    require cd[4] == address(cd[4])
    require calldata.size > 67
    require 196 <= calldata.size
    idx = 0
    s = 36
    t = 96
    while idx < 5:
        require cd[s] == uint8(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require cd[196] == uint8(cd[196])
    require cd[260] <= test266151307()
    require cd[260] + 35 < calldata.size
    if ('cd', 260).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 260).length)) + 257 < 256 or ceil32(ceil32(('cd', 260).length)) + 257 > test266151307():
        revert with 0, 65
    mem[256] = ('cd', 260).length
    require cd[260] + ('cd', 260).length + 36 <= calldata.size
    mem[('cd', 260).length + 288] = 0
    if stor0 != msg.sender:
        if daoAddress != msg.sender:
            revert with 0, 'not l2 dao'
        mem[ceil32(ceil32(('cd', 260).length)) + 257] = 0x81d390fc00000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(('cd', 260).length)) + 261] = address(cd[4])
        idx = 0
        s = 96
        t = ceil32(ceil32(('cd', 260).length)) + 293
        while idx < 5:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor3)
        call stor3.0x81d390fc with:
             gas gas_remaining wei
            args address(cd[4]), mem[ceil32(ceil32(('cd', 260).length)) + 293 len 160], cd[196] << 248, cd[228], 288, ('cd', 260).length, call.data[cd[260] + 36 len ('cd', 260).length], 0
    else:
        require ext_code.size(stor0)
        staticcall stor0.xDomainMessageSender() with:
                gas gas_remaining wei
        mem[ceil32(ceil32(('cd', 260).length)) + 257] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        if ext_call.return_data[12 len 20] != daoAddress:
            revert with 0, 'not l1 dao'
        mem[ceil32(ceil32(('cd', 260).length)) + ceil32(return_data.size) + 257] = 0x81d390fc00000000000000000000000000000000000000000000000000000000
        mem[ceil32(ceil32(('cd', 260).length)) + ceil32(return_data.size) + 261] = address(cd[4])
        idx = 0
        s = 96
        t = ceil32(ceil32(('cd', 260).length)) + ceil32(return_data.size) + 293
        while idx < 5:
            mem[t] = mem[s + 31 len 1]
            idx = idx + 1
            s = s + 32
            t = t + 32
            continue 
        require ext_code.size(stor3)
        call stor3.0x81d390fc with:
             gas gas_remaining wei
            args address(cd[4]), mem[ceil32(ceil32(('cd', 260).length)) + ceil32(return_data.size) + 293 len 160], cd[196] << 248, cd[228], 288, ('cd', 260).length, call.data[cd[260] + 36 len ('cd', 260).length], ext_call.return_data[('cd', 260).length + -ceil32(ceil32(('cd', 260).length)) + 31 len ceil32(('cd', 260).length) - ('cd', 260).length]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function sub_1c9e7038(?) payable {
    require calldata.size - 4 >= 512
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require cd[100] == Mask(32, 224, cd[100])
    require cd[132] == Mask(32, 224, cd[132])
    require cd[164] == Mask(16, 240, cd[164])
    require calldata.size >= 324
    require calldata.size >= 452
    require cd[452] == Mask(16, 240, cd[452])
    require cd[484] <= test266151307()
    require cd[484] + 35 < calldata.size
    if ('cd', 484).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 484).length)) + 97 < 96 or ceil32(ceil32(('cd', 484).length)) + 97 > test266151307():
        revert with 0, 65
    require cd[484] + ('cd', 484).length + 36 <= calldata.size
    mem[128 len ('cd', 484).length] = call.data[cd[484] + 36 len ('cd', 484).length]
    mem[('cd', 484).length + 128] = 0
    require msg.sender == stor0
    require ext_code.size(stor0)
    staticcall stor0.xDomainMessageSender() with:
            gas gas_remaining wei
    mem[ceil32(ceil32(('cd', 484).length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == initiatorAddress
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 101] = this.address
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 133] = 480
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 581] = ('cd', 68).length
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 613 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[('cd', 68).length + ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 613] = 0
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 165] = Mask(32, 224, cd[100])
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 197] = Mask(32, 224, cd[132])
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 229] = Mask(16, 240, cd[164])
    idx = 0
    s = 196
    t = ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 261
    while idx < 4:
        require cd[s] == uint8(cd[s])
        mem[t] = uint8(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 324
    t = ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 389
    while idx < 4:
        require cd[s] == uint8(cd[s])
        mem[t] = uint8(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 517] = Mask(16, 240, cd[452])
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 549] = ceil32(('cd', 68).length) + 512
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + ceil32(('cd', 68).length) + 613] = 4
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + ceil32(('cd', 68).length) + 645] = 0x696e697400000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2)
    call stor2.0xd670630b with:
         gas gas_remaining wei
        args address(this.address), 480, Mask(32, 224, cd[100]), Mask(32, 224, cd[132]), Mask(16, 240, cd[164]), mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 261 len 256], Mask(16, 240, cd[452]), ceil32(('cd', 68).length) + 512, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], 0, mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + ('cd', 68).length + 645 len ceil32(('cd', 68).length) + -('cd', 68).length + 32]
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 129] = 0xbe3d1e8900000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 161] = ext_call.return_data[0]
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 193] = 0x2623e35000000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 197] = cd[4]
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 229] = stor2
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 261] = 96
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 293] = mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97]
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97])] = mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97])]
    if ceil32(mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97]) > mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97]:
        mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97] + 325] = 0
    require ext_code.size(stor3)
    call stor3.0x2623e350 with:
         gas gas_remaining wei
        args cd[4], stor2, Array(len=mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97], data=mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args address(this.address), address(cd[36]), ext_call.return_data[0], 1, Array(len=('cd', 484).length, data=call.data[cd[484] + 36 len ('cd', 484).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_a5684628(?) payable {
    require calldata.size - 4 >= 512
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require cd[68] + 35 < calldata.size
    require ('cd', 68).length <= test266151307()
    require cd[68] + ('cd', 68).length + 36 <= calldata.size
    require cd[100] == Mask(32, 224, cd[100])
    require cd[132] == Mask(32, 224, cd[132])
    require cd[164] == Mask(16, 240, cd[164])
    require calldata.size >= 324
    require calldata.size >= 452
    require cd[452] == Mask(16, 240, cd[452])
    require cd[484] <= test266151307()
    require cd[484] + 35 < calldata.size
    if ('cd', 484).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 484).length)) + 97 < 96 or ceil32(ceil32(('cd', 484).length)) + 97 > test266151307():
        revert with 0, 65
    require cd[484] + ('cd', 484).length + 36 <= calldata.size
    mem[128 len ('cd', 484).length] = call.data[cd[484] + 36 len ('cd', 484).length]
    mem[('cd', 484).length + 128] = 0
    require msg.sender == stor0
    require ext_code.size(stor0)
    staticcall stor0.xDomainMessageSender() with:
            gas gas_remaining wei
    mem[ceil32(ceil32(('cd', 484).length)) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == initiatorAddress
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 101] = this.address
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 133] = 480
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 581] = ('cd', 68).length
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 613 len ('cd', 68).length] = call.data[cd[68] + 36 len ('cd', 68).length]
    mem[('cd', 68).length + ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 613] = 0
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 165] = Mask(32, 224, cd[100])
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 197] = Mask(32, 224, cd[132])
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 229] = Mask(16, 240, cd[164])
    idx = 0
    s = 196
    t = ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 261
    while idx < 4:
        require cd[s] == uint8(cd[s])
        mem[t] = uint8(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = 324
    t = ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 389
    while idx < 4:
        require cd[s] == uint8(cd[s])
        mem[t] = uint8(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 517] = Mask(16, 240, cd[452])
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 549] = ceil32(('cd', 68).length) + 512
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + ceil32(('cd', 68).length) + 613] = 4
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + ceil32(('cd', 68).length) + 645] = 0x696e697400000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2)
    call stor2.0x4ddc4edc with:
         gas gas_remaining wei
        args address(this.address), 480, Mask(32, 224, cd[100]), Mask(32, 224, cd[132]), Mask(16, 240, cd[164]), mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 261 len 256], Mask(16, 240, cd[452]), ceil32(('cd', 68).length) + 512, ('cd', 68).length, call.data[cd[68] + 36 len ('cd', 68).length], 0, mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + ('cd', 68).length + 645 len ceil32(('cd', 68).length) + -('cd', 68).length + 32]
    mem[ceil32(ceil32(('cd', 484).length)) + ceil32(return_data.size) + 97] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 129] = 0xbe3d1e8900000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 161] = ext_call.return_data[0]
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 193] = 0x2623e35000000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 197] = cd[4]
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 229] = stor2
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 261] = 96
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 293] = mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97]
    mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97])] = mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 129 len ceil32(mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97])]
    if ceil32(mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97]) > mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97]:
        mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97] + 325] = 0
    require ext_code.size(stor3)
    call stor3.0x2623e350 with:
         gas gas_remaining wei
        args cd[4], stor2, Array(len=mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97], data=mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 325 len ceil32(mem[ceil32(ceil32(('cd', 484).length)) + (2 * ceil32(return_data.size)) + 97])])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args address(this.address), address(cd[36]), ext_call.return_data[0], 1, Array(len=('cd', 484).length, data=call.data[cd[484] + 36 len ('cd', 484).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
