contract main {




// =====================  Runtime code  =====================


const sub_1ddd1bf6(?) = 10000

const sub_668d3d65(?) = 1800


address owner;
uint256 lastUpdatedTime;
uint256 sub_a8683fc7;
uint256 sub_03cd2571;
mapping of uint256 sub_eaa89729;
mapping of address sub_f024de61;
uint8 sub_f15674d7; offset 160
uint128 stor6; offset 160
address keeperAddress;
uint256 maxPriceDiff;

function sub_03cd2571(?) payable {
    return sub_03cd2571
}

function maxPriceDiff() payable {
    return maxPriceDiff
}

function owner() payable {
    return owner
}

function sub_a8683fc7(?) payable {
    return sub_a8683fc7
}

function keeper() payable {
    return keeperAddress
}

function lastUpdatedTime() payable {
    return lastUpdatedTime
}

function sub_eaa89729(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_eaa89729[arg1]
}

function sub_f024de61(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return sub_f024de61[arg1]
}

function sub_f15674d7(?) payable {
    return bool(sub_f15674d7)
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function setMaxPriceDiff(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    maxPriceDiff = arg1
    emit 0x8ce482bd: arg1
}

function setKeeper(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    keeperAddress = arg1
    emit 0xdc3dba1d: arg1
}

function sub_da3209bf(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6 = Mask(96, 0, bool(arg1))
    emit 0x1de4009f: bool(uint8(bool(arg1)))
}

function setPriceDuration(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if sub_03cd2571 > 1800:
        revert with 0, '!priceDuration'
    sub_03cd2571 = arg1
    emit 0xaae603f9: arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function getPrices(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
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
    if arg1.length > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg1.length
    mem[64] = ceil32(32 * arg1.length) + (32 * arg1.length) + 129
    if arg1.length:
        mem[ceil32(32 * arg1.length) + 129 len 32 * arg1.length] = call.data[calldata.size len 32 * arg1.length]
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if idx >= arg1.length:
            revert with 0, 50
        mem[(32 * idx) + ceil32(32 * arg1.length) + 129] = sub_eaa89729[mem[(32 * idx) + 140 len 20]]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 129] = 32
    mem[ceil32(32 * arg1.length) + (32 * arg1.length) + 161] = arg1.length
    s = 0
    s = mem[64] + 64
    t = ceil32(32 * arg1.length) + 129
    while arg1.length < arg1.length:
        mem[s] = mem[t]
        s = arg1.length + 1
        s = s + 32
        t = t + 32
        continue 
    return memory
      from mem[64]
       len s - mem[64]
}

function sub_729c8bef(?) payable {
    require calldata.size - 4 >= 64
    require cd[4] <= test266151307()
    require cd[4] + 35 < calldata.size
    if ('cd', 4).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 4).length) + 97 < 96 or ceil32(32 * ('cd', 4).length) + 97 > test266151307():
        revert with 0, 65
    mem[96] = ('cd', 4).length
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
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
    require cd[36] <= test266151307()
    require cd[36] + 35 < calldata.size
    if ('cd', 36).length > test266151307():
        revert with 0, 65
    if ceil32(32 * ('cd', 36).length) + 98 < 97 or ceil32(32 * ('cd', 4).length) + ceil32(32 * ('cd', 36).length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * ('cd', 4).length) + 97] = ('cd', 36).length
    require cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    idx = 0
    s = cd[36] + 36
    t = ceil32(32 * ('cd', 4).length) + 129
    while idx < ('cd', 36).length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < ('cd', 36).length:
        if idx >= ('cd', 36).length:
            revert with 0, 50
        if idx >= ('cd', 4).length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 5
        sub_f024de61[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * ('cd', 4).length) + 141 len 20]
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function setPrices(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 < 96 or ceil32(32 * arg1.length) + 97 > test266151307():
        revert with 0, 65
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
    require calldata.size > arg2 + 35
    if arg2.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg2.length) + 98 < 97 or ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98 > test266151307():
        revert with 0, 65
    mem[ceil32(32 * arg1.length) + 97] = arg2.length
    require arg2 + (32 * arg2.length) + 36 <= calldata.size
    s = arg2 + 36
    t = ceil32(32 * arg1.length) + 129
    idx = 0
    while idx < arg2.length:
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if keeperAddress != msg.sender:
        revert with 0, '!keeper'
    idx = 0
    while idx < arg1.length:
        if idx >= mem[96]:
            revert with 0, 50
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        sub_eaa89729[mem[(32 * idx) + 140 len 20]] = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        if idx >= mem[ceil32(32 * arg1.length) + 97]:
            revert with 0, 50
        _47 = mem[(32 * idx) + ceil32(32 * arg1.length) + 129]
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98] = mem[(32 * idx) + 140 len 20]
        mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 130] = _47
        emit 0xf9a09e28: mem[ceil32(32 * arg1.length) + ceil32(32 * arg2.length) + 98], _47
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
    lastUpdatedTime = block.timestamp
}

function getChainlinkPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, '!feed-error'
    require ext_code.size(arg1)
    staticcall arg1.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, '!price'
    if ext_call.return_data[96] <= 0:
        revert with 0, '!timeStamp'
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 8 == ext_call.return_data[31 len 1]:
        return ext_call.return_data[32], ext_call.return_data[96]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        return 100 * 10^6 * ext_call.return_data[32], ext_call.return_data[96]
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        return 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1], ext_call.return_data[96]
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    return 100 * 10^6 * ext_call.return_data[32] / s * t, ext_call.return_data[96]
}

function getPrice(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        revert with 0, '!feed-error'
    require ext_code.size(arg1)
    staticcall arg1.latestRoundData() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 160
    require ext_call.return_data[0] == ext_call.return_data[22 len 10]
    require ext_call.return_data[128] == ext_call.return_data[150 len 10]
    if ext_call.return_data[32] <= 0:
        revert with 0, '!price'
    if ext_call.return_data[96] <= 0:
        revert with 0, '!timeStamp'
    require ext_code.size(arg1)
    staticcall arg1.decimals() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[31 len 1]
    if 8 == ext_call.return_data[31 len 1]:
        if not sub_f15674d7:
            if lastUpdatedTime > !sub_03cd2571:
                revert with 0, 17
            if block.timestamp <= lastUpdatedTime + sub_03cd2571:
                if sub_eaa89729[stor5[address(arg1)]] > ext_call.return_data[32]:
                    if sub_eaa89729[stor5[address(arg1)]] < ext_call.return_data[32]:
                        revert with 0, 17
                    if sub_eaa89729[stor5[address(arg1)]] - ext_call.return_data[32] and 10^18 > -1 / sub_eaa89729[stor5[address(arg1)]] - ext_call.return_data[32]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if (10^18 * sub_eaa89729[stor5[address(arg1)]]) - (10^18 * ext_call.return_data[32]) / ext_call.return_data[32] <= maxPriceDiff:
                        return sub_eaa89729[stor5[address(arg1)]]
                else:
                    if ext_call.return_data[32] < sub_eaa89729[stor5[address(arg1)]]:
                        revert with 0, 17
                    if ext_call.return_data[32] - sub_eaa89729[stor5[address(arg1)]] and 10^18 > -1 / ext_call.return_data[32] - sub_eaa89729[stor5[address(arg1)]]:
                        revert with 0, 17
                    if not ext_call.return_data[32]:
                        revert with 0, 18
                    if (10^18 * ext_call.return_data[32]) - (10^18 * sub_eaa89729[stor5[address(arg1)]]) / ext_call.return_data[32] <= maxPriceDiff:
                        return sub_eaa89729[stor5[address(arg1)]]
            else:
                if ext_call.return_data[96] <= lastUpdatedTime:
                    if sub_eaa89729[stor5[address(arg1)]] > ext_call.return_data[32]:
                        if sub_eaa89729[stor5[address(arg1)]] < ext_call.return_data[32]:
                            revert with 0, 17
                        if sub_eaa89729[stor5[address(arg1)]] - ext_call.return_data[32] and 10^18 > -1 / sub_eaa89729[stor5[address(arg1)]] - ext_call.return_data[32]:
                            revert with 0, 17
                        if not ext_call.return_data[32]:
                            revert with 0, 18
                        if (10^18 * sub_eaa89729[stor5[address(arg1)]]) - (10^18 * ext_call.return_data[32]) / ext_call.return_data[32] <= maxPriceDiff:
                            return sub_eaa89729[stor5[address(arg1)]]
                    else:
                        if ext_call.return_data[32] < sub_eaa89729[stor5[address(arg1)]]:
                            revert with 0, 17
                        if ext_call.return_data[32] - sub_eaa89729[stor5[address(arg1)]] and 10^18 > -1 / ext_call.return_data[32] - sub_eaa89729[stor5[address(arg1)]]:
                            revert with 0, 17
                        if not ext_call.return_data[32]:
                            revert with 0, 18
                        if (10^18 * ext_call.return_data[32]) - (10^18 * sub_eaa89729[stor5[address(arg1)]]) / ext_call.return_data[32] <= maxPriceDiff:
                            return sub_eaa89729[stor5[address(arg1)]]
        return ext_call.return_data[32]
    if not ext_call.return_data[31 len 1]:
        if ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not sub_f15674d7:
            if lastUpdatedTime > !sub_03cd2571:
                revert with 0, 17
            if block.timestamp <= lastUpdatedTime + sub_03cd2571:
                if sub_eaa89729[stor5[address(arg1)]] > 100 * 10^6 * ext_call.return_data[32]:
                    if sub_eaa89729[stor5[address(arg1)]] < 100 * 10^6 * ext_call.return_data[32]:
                        revert with 0, 17
                    if sub_eaa89729[stor5[address(arg1)]] - (100 * 10^6 * ext_call.return_data[32]) and 10^18 > -1 / sub_eaa89729[stor5[address(arg1)]] - (100 * 10^6 * ext_call.return_data[32]):
                        revert with 0, 17
                    if not 100 * 10^6 * ext_call.return_data[32]:
                        revert with 0, 18
                    if (10^18 * sub_eaa89729[stor5[address(arg1)]]) - (100000000 * 10^18 * ext_call.return_data[32]) / 100 * 10^6 * ext_call.return_data[32] <= maxPriceDiff:
                        return sub_eaa89729[stor5[address(arg1)]]
                else:
                    if 100 * 10^6 * ext_call.return_data[32] < sub_eaa89729[stor5[address(arg1)]]:
                        revert with 0, 17
                    if (100 * 10^6 * ext_call.return_data[32]) - sub_eaa89729[stor5[address(arg1)]] and 10^18 > -1 / (100 * 10^6 * ext_call.return_data[32]) - sub_eaa89729[stor5[address(arg1)]]:
                        revert with 0, 17
                    if not 100 * 10^6 * ext_call.return_data[32]:
                        revert with 0, 18
                    if (100000000 * 10^18 * ext_call.return_data[32]) - (10^18 * sub_eaa89729[stor5[address(arg1)]]) / 100 * 10^6 * ext_call.return_data[32] <= maxPriceDiff:
                        return sub_eaa89729[stor5[address(arg1)]]
            else:
                if ext_call.return_data[96] <= lastUpdatedTime:
                    if sub_eaa89729[stor5[address(arg1)]] > 100 * 10^6 * ext_call.return_data[32]:
                        if sub_eaa89729[stor5[address(arg1)]] < 100 * 10^6 * ext_call.return_data[32]:
                            revert with 0, 17
                        if sub_eaa89729[stor5[address(arg1)]] - (100 * 10^6 * ext_call.return_data[32]) and 10^18 > -1 / sub_eaa89729[stor5[address(arg1)]] - (100 * 10^6 * ext_call.return_data[32]):
                            revert with 0, 17
                        if not 100 * 10^6 * ext_call.return_data[32]:
                            revert with 0, 18
                        if (10^18 * sub_eaa89729[stor5[address(arg1)]]) - (100000000 * 10^18 * ext_call.return_data[32]) / 100 * 10^6 * ext_call.return_data[32] <= maxPriceDiff:
                            return sub_eaa89729[stor5[address(arg1)]]
                    else:
                        if 100 * 10^6 * ext_call.return_data[32] < sub_eaa89729[stor5[address(arg1)]]:
                            revert with 0, 17
                        if (100 * 10^6 * ext_call.return_data[32]) - sub_eaa89729[stor5[address(arg1)]] and 10^18 > -1 / (100 * 10^6 * ext_call.return_data[32]) - sub_eaa89729[stor5[address(arg1)]]:
                            revert with 0, 17
                        if not 100 * 10^6 * ext_call.return_data[32]:
                            revert with 0, 18
                        if (100000000 * 10^18 * ext_call.return_data[32]) - (10^18 * sub_eaa89729[stor5[address(arg1)]]) / 100 * 10^6 * ext_call.return_data[32] <= maxPriceDiff:
                            return sub_eaa89729[stor5[address(arg1)]]
        return (100 * 10^6 * ext_call.return_data[32])
    if bool(bool(ext_call.return_data[31 len 1] < 78)) or bool(bool(ext_call.return_data[31 len 1] < 32)):
        if ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
            revert with 0, 17
        if not 10^ext_call.return_data[31 len 1]:
            revert with 0, 18
        if not sub_f15674d7:
            if lastUpdatedTime > !sub_03cd2571:
                revert with 0, 17
            if block.timestamp <= lastUpdatedTime + sub_03cd2571:
                if sub_eaa89729[stor5[address(arg1)]] > 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]:
                    if sub_eaa89729[stor5[address(arg1)]] < 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]:
                        revert with 0, 17
                    if sub_eaa89729[stor5[address(arg1)]] - (100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]) and 10^18 > -1 / sub_eaa89729[stor5[address(arg1)]] - (100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]):
                        revert with 0, 17
                    if not 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]:
                        revert with 0, 18
                    if (10^18 * sub_eaa89729[stor5[address(arg1)]]) - (10^18 * 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]) / 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1] <= maxPriceDiff:
                        return sub_eaa89729[stor5[address(arg1)]]
                else:
                    if 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1] < sub_eaa89729[stor5[address(arg1)]]:
                        revert with 0, 17
                    if (100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]) - sub_eaa89729[stor5[address(arg1)]] and 10^18 > -1 / (100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]) - sub_eaa89729[stor5[address(arg1)]]:
                        revert with 0, 17
                    if not 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]:
                        revert with 0, 18
                    if (10^18 * 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]) - (10^18 * sub_eaa89729[stor5[address(arg1)]]) / 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1] <= maxPriceDiff:
                        return sub_eaa89729[stor5[address(arg1)]]
            else:
                if ext_call.return_data[96] <= lastUpdatedTime:
                    if sub_eaa89729[stor5[address(arg1)]] > 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]:
                        if sub_eaa89729[stor5[address(arg1)]] < 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]:
                            revert with 0, 17
                        if sub_eaa89729[stor5[address(arg1)]] - (100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]) and 10^18 > -1 / sub_eaa89729[stor5[address(arg1)]] - (100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]):
                            revert with 0, 17
                        if not 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]:
                            revert with 0, 18
                        if (10^18 * sub_eaa89729[stor5[address(arg1)]]) - (10^18 * 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]) / 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1] <= maxPriceDiff:
                            return sub_eaa89729[stor5[address(arg1)]]
                    else:
                        if 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1] < sub_eaa89729[stor5[address(arg1)]]:
                            revert with 0, 17
                        if (100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]) - sub_eaa89729[stor5[address(arg1)]] and 10^18 > -1 / (100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]) - sub_eaa89729[stor5[address(arg1)]]:
                            revert with 0, 17
                        if not 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]:
                            revert with 0, 18
                        if (10^18 * 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1]) - (10^18 * sub_eaa89729[stor5[address(arg1)]]) / 100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1] <= maxPriceDiff:
                            return sub_eaa89729[stor5[address(arg1)]]
        return (100 * 10^6 * ext_call.return_data[32] / 10^ext_call.return_data[31 len 1])
    s = 10
    t = 1
    idx = ext_call.return_data[31 len 1]
    while idx > 1:
        if s > -1 / s:
            revert with 0, 17
        if not bool(idx):
            s = s * s
            t = t
            idx = uint255(idx) * 0.5
            continue 
        s = s * s
        t = s * t
        idx = uint255(idx) * 0.5
        continue 
    if t > -1 / s:
        revert with 0, 17
    if ext_call.return_data[32] > 0x2af31dc4611873bf3f70834acdae9f0f4f534f5d60585a5f1c1a3ced1b:
        revert with 0, 17
    if not s * t:
        revert with 0, 18
    if not sub_f15674d7:
        if lastUpdatedTime > !sub_03cd2571:
            revert with 0, 17
        if block.timestamp <= lastUpdatedTime + sub_03cd2571:
            if sub_eaa89729[stor5[address(arg1)]] > 100 * 10^6 * ext_call.return_data[32] / s * t:
                if sub_eaa89729[stor5[address(arg1)]] < 100 * 10^6 * ext_call.return_data[32] / s * t:
                    revert with 0, 17
                if sub_eaa89729[stor5[address(arg1)]] - (100 * 10^6 * ext_call.return_data[32] / s * t) and 10^18 > -1 / sub_eaa89729[stor5[address(arg1)]] - (100 * 10^6 * ext_call.return_data[32] / s * t):
                    revert with 0, 17
                if not 100 * 10^6 * ext_call.return_data[32] / s * t:
                    revert with 0, 18
                if (10^18 * sub_eaa89729[stor5[address(arg1)]]) - (10^18 * 100 * 10^6 * ext_call.return_data[32] / s * t) / 100 * 10^6 * ext_call.return_data[32] / s * t <= maxPriceDiff:
                    return sub_eaa89729[stor5[address(arg1)]]
            else:
                if 100 * 10^6 * ext_call.return_data[32] / s * t < sub_eaa89729[stor5[address(arg1)]]:
                    revert with 0, 17
                if (100 * 10^6 * ext_call.return_data[32] / s * t) - sub_eaa89729[stor5[address(arg1)]] and 10^18 > -1 / (100 * 10^6 * ext_call.return_data[32] / s * t) - sub_eaa89729[stor5[address(arg1)]]:
                    revert with 0, 17
                if not 100 * 10^6 * ext_call.return_data[32] / s * t:
                    revert with 0, 18
                if (10^18 * 100 * 10^6 * ext_call.return_data[32] / s * t) - (10^18 * sub_eaa89729[stor5[address(arg1)]]) / 100 * 10^6 * ext_call.return_data[32] / s * t <= maxPriceDiff:
                    return sub_eaa89729[stor5[address(arg1)]]
        else:
            if ext_call.return_data[96] <= lastUpdatedTime:
                if sub_eaa89729[stor5[address(arg1)]] > 100 * 10^6 * ext_call.return_data[32] / s * t:
                    if sub_eaa89729[stor5[address(arg1)]] < 100 * 10^6 * ext_call.return_data[32] / s * t:
                        revert with 0, 17
                    if sub_eaa89729[stor5[address(arg1)]] - (100 * 10^6 * ext_call.return_data[32] / s * t) and 10^18 > -1 / sub_eaa89729[stor5[address(arg1)]] - (100 * 10^6 * ext_call.return_data[32] / s * t):
                        revert with 0, 17
                    if not 100 * 10^6 * ext_call.return_data[32] / s * t:
                        revert with 0, 18
                    if (10^18 * sub_eaa89729[stor5[address(arg1)]]) - (10^18 * 100 * 10^6 * ext_call.return_data[32] / s * t) / 100 * 10^6 * ext_call.return_data[32] / s * t <= maxPriceDiff:
                        return sub_eaa89729[stor5[address(arg1)]]
                else:
                    if 100 * 10^6 * ext_call.return_data[32] / s * t < sub_eaa89729[stor5[address(arg1)]]:
                        revert with 0, 17
                    if (100 * 10^6 * ext_call.return_data[32] / s * t) - sub_eaa89729[stor5[address(arg1)]] and 10^18 > -1 / (100 * 10^6 * ext_call.return_data[32] / s * t) - sub_eaa89729[stor5[address(arg1)]]:
                        revert with 0, 17
                    if not 100 * 10^6 * ext_call.return_data[32] / s * t:
                        revert with 0, 18
                    if (10^18 * 100 * 10^6 * ext_call.return_data[32] / s * t) - (10^18 * sub_eaa89729[stor5[address(arg1)]]) / 100 * 10^6 * ext_call.return_data[32] / s * t <= maxPriceDiff:
                        return sub_eaa89729[stor5[address(arg1)]]
    return (100 * 10^6 * ext_call.return_data[32] / s * t)
}



}
