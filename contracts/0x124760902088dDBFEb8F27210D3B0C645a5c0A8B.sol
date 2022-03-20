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

function sub_19bd950d(?) payable {
    require calldata.size - 4 >= 64
    require arg2 == address(arg2)
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
        args arg1, address(arg2), 96, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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
    mem[64] = 96
    require calldata.size - 4 >= 64
    require cd[4] == uint8(cd[4])
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    require ('cd', 36).length <= test266151307()
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require msg.sender == maintainerAddress
    mem[96] = 0xceed851f00000000000000000000000000000000000000000000000000000000
    mem[100] = uint8(cd[4])
    mem[132] = 64
    mem[164] = ('cd', 36).length
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
    call stor2.mem[mem[64] len 4] with:
         gas gas_remaining wei
        args mem[mem[64] + 4 len (32 * ('cd', 36).length) + (32 * ('cd', 36).length) + -mem[64] + 192]
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

function sub_3228d9dc(?) payable {
    require calldata.size - 4 >= 256
    require cd[4] == address(cd[4])
    require 67 < calldata.size
    require calldata.size >= 196
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
    require cd[228] <= test266151307()
    require cd[228] + 35 < calldata.size
    if ('cd', 228).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 228).length)) + 257 < 256 or ceil32(ceil32(('cd', 228).length)) + 257 > test266151307():
        revert with 0, 65
    mem[256] = ('cd', 228).length
    require cd[228] + ('cd', 228).length + 36 <= calldata.size
    mem[('cd', 228).length + 288] = 0
    require msg.sender == maintainerAddress
    mem[ceil32(ceil32(('cd', 228).length)) + 257] = 0x81d390fc00000000000000000000000000000000000000000000000000000000
    mem[ceil32(ceil32(('cd', 228).length)) + 261] = address(cd[4])
    idx = 0
    s = 96
    t = ceil32(ceil32(('cd', 228).length)) + 293
    while idx < 5:
        mem[t] = mem[s + 31 len 1]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor3)
    call stor3.0x81d390fc with:
         gas gas_remaining wei
        args address(cd[4]), mem[ceil32(ceil32(('cd', 228).length)) + 293 len 160], 9, cd[196], 288, ('cd', 228).length, call.data[cd[228] + 36 len ('cd', 228).length], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
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
    mem[100] = 64
    mem[164] = ('cd', 4).length
    require ('cd', 4).length <= 0x7ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
    mem[196 len 32 * ('cd', 4).length] = call.data[cd[4] + 36 len 32 * ('cd', 4).length]
    mem[132] = (32 * ('cd', 4).length) + 96
    mem[(32 * ('cd', 4).length) + 196] = ('cd', 36).length
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
        args 0, mem[128 len (32 * ('cd', 4).length) + (32 * ('cd', 36).length) + (32 * ('cd', 36).length) + 100]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_20d89e90(?) payable {
    require calldata.size - 4 >= 288
    require cd[4] == address(cd[4])
    require 67 < calldata.size
    require calldata.size >= 196
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

function sub_9d8d453c(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require calldata.size + -cd[68] - 4 >= 736
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 100).length)) + 97 < 96 or ceil32(ceil32(('cd', 100).length)) + 97 > test266151307():
        revert with 0, 65
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require msg.sender == stor0
    require ext_code.size(stor0)
    staticcall stor0.xDomainMessageSender() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == initiatorAddress
    require ('cd', 68).length == Mask(32, 224, ('cd', 68).length)
    require ('cd', 68)[0] == Mask(32, 224, ('cd', 68)[0])
    require ('cd', 68)[1] == Mask(16, 240, ('cd', 68)[1])
    idx = 0
    s = cd[68] + 100
    t = ceil32(ceil32(('cd', 100).length)) + ceil32(return_data.size) + 293
    while idx < 4:
        require cd[s] == uint8(cd[s])
        mem[t] = uint8(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = cd[68] + 228
    t = ceil32(ceil32(('cd', 100).length)) + ceil32(return_data.size) + 421
    while idx < 4:
        require cd[s] == uint8(cd[s])
        mem[t] = uint8(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = cd[68] + 356
    t = ceil32(ceil32(('cd', 100).length)) + ceil32(return_data.size) + 549
    while idx < 10:
        require cd[s] == uint8(cd[s])
        mem[t] = uint8(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 68)[20] == Mask(16, 240, ('cd', 68)[20])
    require ('cd', 68)[21] < calldata.size + -cd[68] - 35
    require cd[(cd[68] + ('cd', 68)[21] + 4)] <= test266151307()
    require cd[68] + 4 <= calldata.size - cd[(cd[68] + ('cd', 68)[21] + 4)]
    mem[ceil32(ceil32(('cd', 100).length)) + ceil32(return_data.size) + ceil32(cd[(cd[68] + ('cd', 68)[21] + 4)]) + 965] = 4
    mem[ceil32(ceil32(('cd', 100).length)) + ceil32(return_data.size) + ceil32(cd[(cd[68] + ('cd', 68)[21] + 4)]) + 997] = 0x696e697400000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2)
    call stor2.0x84df3e1b with:
         gas gas_remaining wei
        args address(this.address), 96, ceil32(cd[(cd[68] + ('cd', 68)[21] + 4)]) + 864, Mask(32, 224, ('cd', 68).length), Mask(32, 224, ('cd', 68)[0]), Mask(16, 240, ('cd', 68)[1]), mem[ceil32(ceil32(('cd', 100).length)) + ceil32(return_data.size) + 293 len 576], Mask(16, 240, ('cd', 68)[20]), 736, cd[(cd[68] + ('cd', 68)[21] + 4)], call.data[cd[68] + ('cd', 68)[21] + 36 len cd[(cd[68] + ('cd', 68)[21] + 4)]], 0, mem[ceil32(ceil32(('cd', 100).length)) + ceil32(return_data.size) + cd[(cd[68] + ('cd', 68)[21] + 4)] + 997 len ceil32(cd[(cd[68] + ('cd', 68)[21] + 4)]) + -cd[(cd[68] + ('cd', 68)[21] + 4)] + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.0x2623e350 with:
         gas gas_remaining wei
        args cd[4], stor2, 96, 64, 0xbe3d1e8900000000000000000000000000000000000000000000000000000000, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args address(this.address), address(cd[36]), ext_call.return_data[0], 1, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_d6bd3a88(?) payable {
    require calldata.size - 4 >= 128
    require cd[36] == address(cd[36])
    require cd[68] <= test266151307()
    require calldata.size + -cd[68] - 4 >= 736
    require cd[100] <= test266151307()
    require cd[100] + 35 < calldata.size
    if ('cd', 100).length > test266151307():
        revert with 0, 65
    if ceil32(ceil32(('cd', 100).length)) + 97 < 96 or ceil32(ceil32(('cd', 100).length)) + 97 > test266151307():
        revert with 0, 65
    require cd[100] + ('cd', 100).length + 36 <= calldata.size
    require msg.sender == stor0
    require ext_code.size(stor0)
    staticcall stor0.xDomainMessageSender() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_call.return_data[12 len 20] == initiatorAddress
    require ('cd', 68).length == Mask(32, 224, ('cd', 68).length)
    require ('cd', 68)[0] == Mask(32, 224, ('cd', 68)[0])
    require ('cd', 68)[1] == Mask(16, 240, ('cd', 68)[1])
    idx = 0
    s = cd[68] + 100
    t = ceil32(ceil32(('cd', 100).length)) + ceil32(return_data.size) + 293
    while idx < 4:
        require cd[s] == uint8(cd[s])
        mem[t] = uint8(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = cd[68] + 228
    t = ceil32(ceil32(('cd', 100).length)) + ceil32(return_data.size) + 421
    while idx < 4:
        require cd[s] == uint8(cd[s])
        mem[t] = uint8(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    idx = 0
    s = cd[68] + 356
    t = ceil32(ceil32(('cd', 100).length)) + ceil32(return_data.size) + 549
    while idx < 10:
        require cd[s] == uint8(cd[s])
        mem[t] = uint8(cd[s])
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ('cd', 68)[20] == Mask(16, 240, ('cd', 68)[20])
    require ('cd', 68)[21] < calldata.size + -cd[68] - 35
    require cd[(cd[68] + ('cd', 68)[21] + 4)] <= test266151307()
    require cd[68] + 4 <= calldata.size - cd[(cd[68] + ('cd', 68)[21] + 4)]
    mem[ceil32(ceil32(('cd', 100).length)) + ceil32(return_data.size) + ceil32(cd[(cd[68] + ('cd', 68)[21] + 4)]) + 965] = 4
    mem[ceil32(ceil32(('cd', 100).length)) + ceil32(return_data.size) + ceil32(cd[(cd[68] + ('cd', 68)[21] + 4)]) + 997] = 0x696e697400000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor2)
    call stor2.0xe4ed68aa with:
         gas gas_remaining wei
        args address(this.address), 96, ceil32(cd[(cd[68] + ('cd', 68)[21] + 4)]) + 864, Mask(32, 224, ('cd', 68).length), Mask(32, 224, ('cd', 68)[0]), Mask(16, 240, ('cd', 68)[1]), mem[ceil32(ceil32(('cd', 100).length)) + ceil32(return_data.size) + 293 len 576], Mask(16, 240, ('cd', 68)[20]), 736, cd[(cd[68] + ('cd', 68)[21] + 4)], call.data[cd[68] + ('cd', 68)[21] + 36 len cd[(cd[68] + ('cd', 68)[21] + 4)]], 0, mem[ceil32(ceil32(('cd', 100).length)) + ceil32(return_data.size) + cd[(cd[68] + ('cd', 68)[21] + 4)] + 997 len ceil32(cd[(cd[68] + ('cd', 68)[21] + 4)]) + -cd[(cd[68] + ('cd', 68)[21] + 4)] + 32]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor3)
    call stor3.0x2623e350 with:
         gas gas_remaining wei
        args cd[4], stor2, 96, 64, 0xbe3d1e8900000000000000000000000000000000000000000000000000000000, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor2)
    call stor2.safeTransferFrom(address rg1, address rg2, uint256 rg3, uint256 rg4, bytes rg5) with:
         gas gas_remaining wei
        args address(this.address), address(cd[36]), ext_call.return_data[0], 1, Array(len=('cd', 100).length, data=call.data[cd[100] + 36 len ('cd', 100).length])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
