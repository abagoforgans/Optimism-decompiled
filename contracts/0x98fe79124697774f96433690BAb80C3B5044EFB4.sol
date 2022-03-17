contract main {




// =====================  Runtime code  =====================


const PERMIT_TYPEHASH = 0xef6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126


uint8 initialized;
array of uint256 symbol;
array of struct name;
uint8 decimals;
address stor3;
address rubiconMarketAddress; offset 8
address bathHouseAddress;
address feeToAddress;
address underlyingAddress;
uint256 feeBPS;
uint256 totalSupply;
uint256 outstandingAmount;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 DOMAIN_SEPARATOR;
mapping of uint256 nonces;

function feeTo() payable {
    return feeToAddress
}

function name() payable {
    return name[0 len name.length].field_0
}

function initialized() payable {
    return bool(initialized)
}

function totalSupply() payable {
    return totalSupply
}

function feeBPS() payable {
    return feeBPS
}

function underlyingToken() payable {
    return underlyingAddress
}

function decimals() payable {
    return decimals
}

function DOMAIN_SEPARATOR() payable {
    return DOMAIN_SEPARATOR
}

function bathHouse() payable {
    return bathHouseAddress
}

function RubiconMarketAddress() payable {
    return rubiconMarketAddress
}

function underlying() payable {
    require initialized
    return underlyingAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[arg1]
}

function nonces(address arg1) payable {
    require calldata.size - 4 >= 32
    return nonces[arg1]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function outstandingAmount() payable {
    return outstandingAmount
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function setFeeBPS(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == bathHouseAddress
    require initialized
    feeBPS = arg1
}

function setFeeTo(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == bathHouseAddress
    require initialized
    feeToAddress = arg1
}

function setBathHouse(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == bathHouseAddress
    require initialized
    bathHouseAddress = arg1
}

function setMarket(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == bathHouseAddress
    require initialized
    rubiconMarketAddress = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(msg.sender)] -= arg2
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit 0x77ddf252: arg2, msg.sender, arg1
    return 1
}

function underlyingBalance() payable {
    if not initialized:
        revert with 0, 'BathToken not initialized'
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if outstandingAmount + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    return (outstandingAmount + ext_call.return_data[0])
}

function removeFilledTradeAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(bathHouseAddress)
    staticcall bathHouseAddress.isApprovedPair(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 32, 0xc96e6f7420616e20617070726f7665642070616972202d2062617468546f6b65
    if arg1 > outstandingAmount:
        revert with 0, 'SafeMath: subtraction overflow'
    outstandingAmount -= arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if allowance[address(arg1)][msg.sender] != -1:
        if arg3 > allowance[address(arg1)][msg.sender]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[address(arg1)][msg.sender] -= arg3
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'SafeMath: subtraction overflow'
    balanceOf[address(arg1)] -= arg3
    if arg3 + balanceOf[arg2] < balanceOf[arg2]:
        revert with 0, 'SafeMath: addition overflow'
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    emit 0x77ddf252: arg3, arg1, arg2
    return 1
}

function approveMarket() payable {
    require initialized
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, rubiconMarketAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(underlyingAddress)
        call underlyingAddress.approve(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args stor3, -1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function permit(address arg1, address arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) payable {
    require calldata.size - 4 >= 224
    if arg4 < block.timestamp:
        revert with 0, 'bathToken: EXPIRED'
    nonces[address(arg1)]++
    signer = erecover(sha3(0, DOMAIN_SEPARATOR, sha3(0xef6e71edae12b1b97f4d1f60370fef10105fa2faae0126114a169c64845d6126, address(arg1), address(arg2), arg3, nonces[address(arg1)], arg4)), arg5 << 248, arg6, arg7) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(signer):
        revert with 0, 'bathToken: INVALID_SIGNATURE'
    if address(signer) != arg1:
        revert with 0, 'bathToken: INVALID_SIGNATURE'
    allowance[address(arg1)][address(arg2)] = arg3
    emit Approval(arg3, arg1, arg2);
}

function cancel(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(bathHouseAddress)
    staticcall bathHouseAddress.isApprovedPair(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 32, 0xc96e6f7420616e20617070726f7665642070616972202d2062617468546f6b65
    if arg2 > outstandingAmount:
        revert with 0, 'SafeMath: subtraction overflow'
    outstandingAmount -= arg2
    require ext_code.size(rubiconMarketAddress)
    call rubiconMarketAddress.cancel(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function placeOffer(uint256 arg1, address arg2, uint256 arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(bathHouseAddress)
    staticcall bathHouseAddress.isApprovedPair(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 32, 0xc96e6f7420616e20617070726f7665642070616972202d2062617468546f6b65
    if not arg1:
        return 0
    if not arg2:
        return 0
    if not arg3:
        return 0
    if not arg4:
        return 0
    require ext_code.size(rubiconMarketAddress)
    call rubiconMarketAddress.offer(uint256 rg1, address rg2, uint256 rg3, address rg4, uint256 rg5, bool rg6) with:
         gas gas_remaining wei
        args 0, uint32(arg1), address(arg2), arg3, arg4, 0, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 + outstandingAmount < outstandingAmount:
        revert with 0, 'SafeMath: addition overflow'
    outstandingAmount += arg1
    return ext_call.return_data[0]
}

function rebalance(address arg1, address arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require ext_code.size(bathHouseAddress)
    staticcall bathHouseAddress.isApprovedPair(address rg1) with:
            gas gas_remaining wei
           args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) != 1:
        revert with 0, 32, 32, 0xc96e6f7420616e20617070726f7665642070616972202d2062617468546f6b65
    require initialized
    if not arg3:
        if 0 > arg4:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg4
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, 0
    else:
        if arg4 * arg3 / arg3 != arg4:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg4 * arg3 / 10000 > arg4:
            revert with 0, 'SafeMath: subtraction overflow'
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg4 - (arg4 * arg3 / 10000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg2)
        call arg2.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg4 * arg3 / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function initialize(string arg1, address arg2, address arg3, address arg4, address arg5) payable {
    require calldata.size - 4 >= 160
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require not initialized
    if arg1.length:
        symbol[] = Array(len=arg1.length, data=arg1[all])
    else:
        symbol.length = 0
        idx = 0
        while symbol.length + 31 / 32 > idx:
            symbol[idx] = 0
            idx = idx + 1
            continue 
    underlyingAddress = arg2
    rubiconMarketAddress = arg3
    bathHouseAddress = arg4
    mem[ceil32(arg1.length) + 128] = uint256(name.field_0)
    idx = ceil32(arg1.length) + 128
    s = 0
    while ceil32(arg1.length) + name.length + 128 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    DOMAIN_SEPARATOR = sha3(0x8b73c3c69bb8fe3d512ecc4cf759cc79239f7b179b0ffacaa9a75d522b39400f, sha3(mem[ceil32(arg1.length) + 128 len name.length]), 0xc89efdaa54c0f20c7adf612882df0950f5a951637e0307cdcb4c672f298b8bc6, chainid, this.address)
    uint8(name.length) = 24
    name.length.field_8 = 0
    name.length.field_160 = Mask(96, 0, 'BathToken v1')
    idx = 0
    while name.length + 31 / 32 > idx:
        name[idx].field_0 = 0
        idx = idx + 1
        continue 
    decimals = 18
    require ext_code.size(rubiconMarketAddress)
    staticcall rubiconMarketAddress.0x158ef93e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(bathHouseAddress)
    staticcall bathHouseAddress.0x158ef93e with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg2)
    call arg2.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args stor3, -1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit 0x62d3d1f1: block.timestamp
    feeToAddress = arg5
    feeBPS = 0
    initialized = 1
}

function deposit(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not initialized:
        revert with 0, 'BathToken not initialized'
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if outstandingAmount + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(underlyingAddress)
    call underlyingAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if 0 == totalSupply:
        if totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        if balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        emit 0x77ddf252: 0, 0, msg.sender
        emit Deposit(0, underlyingAddress, 0, msg.sender);
    else:
        if outstandingAmount + ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require outstandingAmount + ext_call.return_data[0]
        if (0 / outstandingAmount + ext_call.return_data[0]) + totalSupply < totalSupply:
            revert with 0, 'SafeMath: addition overflow'
        totalSupply += 0 / outstandingAmount + ext_call.return_data[0]
        if (0 / outstandingAmount + ext_call.return_data[0]) + balanceOf[address(msg.sender)] < balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(msg.sender)] += 0 / outstandingAmount + ext_call.return_data[0]
        emit 0x77ddf252: (0 / outstandingAmount + ext_call.return_data[0]), 0, msg.sender
        emit Deposit(0, underlyingAddress, 0 / outstandingAmount + ext_call.return_data[0], msg.sender);
}

function withdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not initialized:
        revert with 0, 'BathToken not initialized'
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if outstandingAmount + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'SafeMath: addition overflow'
    if not outstandingAmount + ext_call.return_data[0]:
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit 0x77ddf252: arg1, msg.sender, 0
        if not 0 / totalSupply:
            require ext_code.size(underlyingAddress)
            call underlyingAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args feeToAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(underlyingAddress)
            call underlyingAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0 / totalSupply
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0xbfc577cf: 0 / totalSupply, underlyingAddress, arg1, msg.sender, 0, feeToAddress
        else:
            if feeBPS * 0 / totalSupply / 0 / totalSupply != feeBPS:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(underlyingAddress)
            call underlyingAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args feeToAddress, feeBPS * 0 / totalSupply / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if feeBPS * 0 / totalSupply / 10000 > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(underlyingAddress)
            call underlyingAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (0 / totalSupply) - (feeBPS * 0 / totalSupply / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if feeBPS * 0 / totalSupply / 10000 > 0 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0xbfc577cf: (0 / totalSupply) - (feeBPS * 0 / totalSupply / 10000), underlyingAddress, arg1, msg.sender, feeBPS * 0 / totalSupply / 10000, feeToAddress
    else:
        if (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / outstandingAmount + ext_call.return_data[0] != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if arg1 > balanceOf[address(msg.sender)]:
            revert with 0, 'SafeMath: subtraction overflow'
        balanceOf[address(msg.sender)] -= arg1
        if arg1 > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        totalSupply -= arg1
        emit 0x77ddf252: arg1, msg.sender, 0
        if not (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
            require ext_code.size(underlyingAddress)
            call underlyingAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args feeToAddress, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(underlyingAddress)
            call underlyingAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if 0 > (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0xbfc577cf: (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply, underlyingAddress, arg1, msg.sender, 0, feeToAddress
        else:
            if feeBPS * (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply / (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply != feeBPS:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require ext_code.size(underlyingAddress)
            call underlyingAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args feeToAddress, feeBPS * (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply / 10000
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if feeBPS * (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply / 10000 > (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            require ext_code.size(underlyingAddress)
            call underlyingAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ((outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - (feeBPS * (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply / 10000)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if feeBPS * (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply / 10000 > (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0xbfc577cf: ((outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply) - (feeBPS * (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply / 10000), underlyingAddress, arg1, msg.sender, feeBPS * (outstandingAmount * arg1) + (ext_call.return_data[0] * arg1) / totalSupply / 10000, feeToAddress
}



}
