contract main {




// =====================  Runtime code  =====================


#
#  - deposit(address arg1, address arg2, uint256 arg3, uint64 arg4, uint64 arg5, uint64 arg6)
#
uint8 stor0; offset 160
address timerAddress;
uint256 chainId;
address sub_146bf4b1Address;
uint256 sub_a1244c67;
mapping of struct whitelistedTokens;
uint64 sub_b2d6f4d4;
address messengerAddress; offset 64
address sub_5285e058Address;
address sub_e3229211Address;
address sub_5facafbdAddress;

function sub_146bf4b1(?) {
    return sub_146bf4b1Address
}

function timerAddress() {
    return timerAddress
}

function messenger() {
    return messengerAddress
}

function sub_5285e058(?) {
    return sub_5285e058Address
}

function sub_5facafbd(?) {
    return sub_5facafbdAddress
}

function chainId() {
    return chainId
}

function sub_a1244c67(?) {
    return sub_a1244c67
}

function sub_b2d6f4d4(?) {
    return sub_b2d6f4d4
}

function whitelistedTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return whitelistedTokens[arg1].field_0, 
           whitelistedTokens[arg1].field_256,
           whitelistedTokens[arg1].field_256,
           bool(whitelistedTokens[arg1].field_480)
}

function sub_e3229211(?) {
    return sub_e3229211Address
}

function isWhitelistToken(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(whitelistedTokens[address(arg1)].field_416)
}

function setCurrentTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    require timerAddress
    require ext_code.size(timerAddress)
    call timerAddress.0x22f8e566 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCurrentTime() {
    if not timerAddress:
        return block.timestamp
    require ext_code.size(timerAddress)
    staticcall timerAddress.0x29cb924d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_63635fd9(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if not whitelistedTokens[address(arg1)].field_416:
        return bool(whitelistedTokens[address(arg1)].field_416)
    if whitelistedTokens[address(arg1)].field_416 > -sub_b2d6f4d4 + test266151307():
        revert with 0, 17
    if not timerAddress:
        return (block.timestamp > uint64(sub_b2d6f4d4 + whitelistedTokens[address(arg1)].field_416))
    require ext_code.size(timerAddress)
    staticcall timerAddress.0x29cb924d with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] > uint64(sub_b2d6f4d4 + whitelistedTokens[address(arg1)].field_416))
}

function setMinimumBridgingDelay(uint64 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if messengerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OVM_XCHAIN: messenger contract unauthenticated'
    require ext_code.size(messengerAddress)
    staticcall messengerAddress.xDomainMessageSender() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != sub_5285e058Address:
        revert with 0, 'OVM_XCHAIN: wrong sender of cross-domain message'
    sub_b2d6f4d4 = arg1
    emit SetMinimumBridgingDelay(arg1);
}

function setCrossDomainAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if messengerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OVM_XCHAIN: messenger contract unauthenticated'
    require ext_code.size(messengerAddress)
    staticcall messengerAddress.xDomainMessageSender() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != sub_5285e058Address:
        revert with 0, 'OVM_XCHAIN: wrong sender of cross-domain message'
    if not arg1:
        revert with 0, 'Bad bridge router address'
    sub_5285e058Address = arg1
    emit SetXDomainAdmin(arg1);
}

function setEnableDeposits(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if messengerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OVM_XCHAIN: messenger contract unauthenticated'
    require ext_code.size(messengerAddress)
    staticcall messengerAddress.xDomainMessageSender() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != sub_5285e058Address:
        revert with 0, 'OVM_XCHAIN: wrong sender of cross-domain message'
    whitelistedTokens[address(arg1)].field_480 = uint32(arg2)
    emit DepositsEnabled(address(arg1), arg2);
}

function whitelistToken(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if messengerAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OVM_XCHAIN: messenger contract unauthenticated'
    require ext_code.size(messengerAddress)
    staticcall messengerAddress.xDomainMessageSender() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if ext_call.return_data[12 len 20] != sub_5285e058Address:
        revert with 0, 'OVM_XCHAIN: wrong sender of cross-domain message'
    if not timerAddress:
        whitelistedTokens[address(arg2)].field_0 = arg1
        whitelistedTokens[address(arg2)].field_256 = arg3
        whitelistedTokens[address(arg2)].field_416 = uint64(block.timestamp)
        whitelistedTokens[address(arg2)].field_480 = 1
        emit WhitelistToken(address(arg1), address(arg2), block.timestamp << 192, arg3);
    else:
        require ext_code.size(timerAddress)
        staticcall timerAddress.0x29cb924d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[ceil32(return_data.size) + 160] = ext_call.return_data[24 len 8]
        whitelistedTokens[address(arg2)].field_0 = arg1
        whitelistedTokens[address(arg2)].field_256 = arg3
        whitelistedTokens[address(arg2)].field_416 = mem[ceil32(return_data.size) + 184 len 8]
        whitelistedTokens[address(arg2)].field_480 = 1
        if not timerAddress:
            emit WhitelistToken(address(arg1), address(arg2), block.timestamp << 192, arg3);
        else:
            require ext_code.size(timerAddress)
            staticcall timerAddress.0x29cb924d with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            emit WhitelistToken(address(arg1), address(arg2), ext_call.return_data[0] << 192, arg3);
}

function bridgeTokens(address arg1, uint32 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor0:
        revert with 0, 'ReentrancyGuard: reentrant call'
    stor0 = 0
    require ext_code.size(arg1)
    call arg1.balanceOf(address rg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'can't bridge zero tokens'
    if not whitelistedTokens[address(arg1)].field_416:
        revert with 0, 'non-whitelisted token or last bridge too recent'
    if whitelistedTokens[address(arg1)].field_416 > -sub_b2d6f4d4 + test266151307():
        revert with 0, 17
    if not timerAddress:
        if block.timestamp <= uint64(sub_b2d6f4d4 + whitelistedTokens[address(arg1)].field_416):
            revert with 0, 'non-whitelisted token or last bridge too recent'
    else:
        require ext_code.size(timerAddress)
        staticcall timerAddress.0x29cb924d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= uint64(sub_b2d6f4d4 + whitelistedTokens[address(arg1)].field_416):
            revert with 0, 'non-whitelisted token or last bridge too recent'
    if not timerAddress:
        whitelistedTokens[address(arg1)].field_416 = uint64(block.timestamp)
    else:
        require ext_code.size(timerAddress)
        staticcall timerAddress.0x29cb924d with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        whitelistedTokens[address(arg1)].field_416 = ext_call.return_data[24 len 8]
    if sub_146bf4b1Address != whitelistedTokens[address(arg1)].field_0:
        require ext_code.size(0x4200000000000000000000000000000000000010)
        call 0x4200000000000000000000000000000000000010.withdrawTo(address rg1, address rg2, uint256 rg3, uint32 rg4, bytes rg5) with:
             gas gas_remaining wei
            args address(arg1), whitelistedTokens[address(arg1)].field_256, ext_call.return_data[0], arg2 << 224, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokensBridged(ext_call.return_data[0], arg2, arg1, msg.sender);
    else:
        require ext_code.size(arg1)
        call arg1.withdraw(uint256 rg1) with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(0x4200000000000000000000000000000000000010)
        call 0x4200000000000000000000000000000000000010.withdrawTo(address rg1, address rg2, uint256 rg3, uint32 rg4, bytes rg5) with:
             gas gas_remaining wei
            args sub_e3229211Address, sub_5facafbdAddress, ext_call.return_data[0], arg2 << 224, 160, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit TokensBridged(ext_call.return_data[0], arg2, sub_e3229211Address, msg.sender);
    stor0 = 1
}

function _fallback() payable {
    if calldata.size >= 4:
        if unknown_0x63635fd9(?????) > uint32(call.func_hash) >> 224:
            if unknown_0x3cb747bf(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x146bf4b1(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return sub_146bf4b1Address
                if unknown_0x1c39c38d(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return timerAddress
                if unknown_0x22f8e566(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require timerAddress
                    require ext_code.size(timerAddress)
                    call timerAddress.0x22f8e566 with:
                         gas gas_remaining wei
                        args arg1
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                else:
                    if unknown_0x29cb924d(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        if not timerAddress:
                            return block.timestamp
                        require ext_code.size(timerAddress)
                        staticcall timerAddress.0x29cb924d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        return ext_call.return_data[0]
                    if unknown_0x2ec35b31(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == uint64(arg1)
                        if messengerAddress != msg.sender:
                            revert with 0, 'OVM_XCHAIN: messenger contract unauthenticated'
                        require ext_code.size(messengerAddress)
                        staticcall messengerAddress.xDomainMessageSender() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if ext_call.return_data[12 len 20] != sub_5285e058Address:
                            revert with 0, 'OVM_XCHAIN: wrong sender of cross-domain message'
                        sub_b2d6f4d4 = uint64(arg1)
                        emit SetMinimumBridgingDelay(uint64(arg1));
            else:
                if unknown_0x3cb747bf(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return messengerAddress
                if uint32(call.func_hash) >> 224 != unknown_0x4dedca28(?????):
                    if unknown_0x5285e058(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_5285e058Address
                    if uint32(call.func_hash) >> 224 != unknown_0x563c7f60(?????):
                        if uint32(call.func_hash) >> 224 != unknown_0x5facafbd(?????):
                        require not msg.value
                        return sub_5facafbdAddress
                    require not msg.value
                    require calldata.size - 4 >= 64
                    require arg1 == address(arg1)
                    require arg2 == bool(arg2)
                    if messengerAddress != msg.sender:
                        revert with 0, 'OVM_XCHAIN: messenger contract unauthenticated'
                    require ext_code.size(messengerAddress)
                    staticcall messengerAddress.xDomainMessageSender() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != sub_5285e058Address:
                        revert with 0, 'OVM_XCHAIN: wrong sender of cross-domain message'
                    whitelistedTokens[address(arg1)].field_480 = uint32(bool(arg2))
                    emit DepositsEnabled(address(arg1), bool(arg2));
                else:
                    require not msg.value
                    require calldata.size - 4 >= 96
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg3 == address(arg3)
                    if messengerAddress != msg.sender:
                        revert with 0, 'OVM_XCHAIN: messenger contract unauthenticated'
                    require ext_code.size(messengerAddress)
                    staticcall messengerAddress.xDomainMessageSender() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != sub_5285e058Address:
                        revert with 0, 'OVM_XCHAIN: wrong sender of cross-domain message'
                    if not timerAddress:
                        whitelistedTokens[address(arg2)].field_0 = address(arg1)
                        whitelistedTokens[address(arg2)].field_256 = address(arg3)
                        whitelistedTokens[address(arg2)].field_416 = uint64(block.timestamp)
                        whitelistedTokens[address(arg2)].field_480 = 1
                        emit WhitelistToken(address(arg1), address(arg2), block.timestamp << 192, address(arg3));
                    else:
                        require ext_code.size(timerAddress)
                        staticcall timerAddress.0x29cb924d with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        mem[ceil32(return_data.size) + 192] = ext_call.return_data[24 len 8]
                        whitelistedTokens[address(arg2)].field_0 = address(arg1)
                        whitelistedTokens[address(arg2)].field_256 = address(arg3)
                        whitelistedTokens[address(arg2)].field_416 = mem[ceil32(return_data.size) + 216 len 8]
                        whitelistedTokens[address(arg2)].field_480 = 1
                        if not timerAddress:
                            emit WhitelistToken(address(arg1), address(arg2), block.timestamp << 192, address(arg3));
                        else:
                            require ext_code.size(timerAddress)
                            staticcall timerAddress.0x29cb924d with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            emit WhitelistToken(address(arg1), address(arg2), ext_call.return_data[0] << 192, address(arg3));
        else:
            if unknown_0xc2d9dca9(?????) > uint32(call.func_hash) >> 224:
                if unknown_0x63635fd9(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if not whitelistedTokens[address(arg1)].field_416:
                        return bool(whitelistedTokens[address(arg1)].field_416)
                    if whitelistedTokens[address(arg1)].field_416 > -sub_b2d6f4d4 + test266151307():
                        revert with 0, 17
                    if not timerAddress:
                        return (block.timestamp > uint64(sub_b2d6f4d4 + whitelistedTokens[address(arg1)].field_416))
                    require ext_code.size(timerAddress)
                    staticcall timerAddress.0x29cb924d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    return (ext_call.return_data[0] > uint64(sub_b2d6f4d4 + whitelistedTokens[address(arg1)].field_416))
                if unknown_0x9a8a0592(?????) == uint32(call.func_hash) >> 224:
                    require not msg.value
                    return chainId
                if uint32(call.func_hash) >> 224 != unknown_0x9bfd2cdc(?????):
                    if unknown_0xa1244c67(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        return sub_a1244c67
                    if uint32(call.func_hash) >> 224 != unknown_0xb2d6f4d4(?????):
                    require not msg.value
                    return sub_b2d6f4d4
                require not msg.value
                require calldata.size - 4 >= 64
                require arg1 == address(arg1)
                require arg2 == uint32(arg2)
                if not stor0:
                    revert with 0, 'ReentrancyGuard: reentrant call'
                stor0 = 0
                require ext_code.size(address(arg1))
                call address(arg1).balanceOf(address rg1) with:
                     gas gas_remaining wei
                    args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'can't bridge zero tokens'
                if not whitelistedTokens[address(arg1)].field_416:
                    revert with 0, 'non-whitelisted token or last bridge too recent'
                if whitelistedTokens[address(arg1)].field_416 > -sub_b2d6f4d4 + test266151307():
                    revert with 0, 17
                if not timerAddress:
                    if block.timestamp <= uint64(sub_b2d6f4d4 + whitelistedTokens[address(arg1)].field_416):
                        revert with 0, 'non-whitelisted token or last bridge too recent'
                else:
                    require ext_code.size(timerAddress)
                    staticcall timerAddress.0x29cb924d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] <= uint64(sub_b2d6f4d4 + whitelistedTokens[address(arg1)].field_416):
                        revert with 0, 'non-whitelisted token or last bridge too recent'
                if not timerAddress:
                    whitelistedTokens[address(arg1)].field_416 = uint64(block.timestamp)
                else:
                    require ext_code.size(timerAddress)
                    staticcall timerAddress.0x29cb924d with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    whitelistedTokens[address(arg1)].field_416 = ext_call.return_data[24 len 8]
                if sub_146bf4b1Address != whitelistedTokens[address(arg1)].field_0:
                    require ext_code.size(0x4200000000000000000000000000000000000010)
                    call 0x4200000000000000000000000000000000000010.withdrawTo(address rg1, address rg2, uint256 rg3, uint32 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args address(arg1), whitelistedTokens[address(arg1)].field_256, ext_call.return_data[0], arg2 << 224, 160, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit TokensBridged(ext_call.return_data[0], uint32(arg2), address(arg1), msg.sender);
                else:
                    require ext_code.size(address(arg1))
                    call address(arg1).withdraw(uint256 rg1) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require ext_code.size(0x4200000000000000000000000000000000000010)
                    call 0x4200000000000000000000000000000000000010.withdrawTo(address rg1, address rg2, uint256 rg3, uint32 rg4, bytes rg5) with:
                         gas gas_remaining wei
                        args sub_e3229211Address, sub_5facafbdAddress, ext_call.return_data[0], arg2 << 224, 160, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    emit TokensBridged(ext_call.return_data[0], uint32(arg2), sub_e3229211Address, msg.sender);
                stor0 = 1
            else:
                if uint32(call.func_hash) >> 224 != unknown_0xc2d9dca9(?????):
                    if unknown_0xdaf9c210(?????) == uint32(call.func_hash) >> 224:
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return whitelistedTokens[arg1].field_0, 
                               whitelistedTokens[arg1].field_256,
                               whitelistedTokens[arg1].field_256,
                               bool(whitelistedTokens[arg1].field_480)
                    if uint32(call.func_hash) >> 224 != unknown_0xde7eba78(?????):
                        if unknown_0xe3229211(?????) == uint32(call.func_hash) >> 224:
                            require not msg.value
                            return sub_e3229211Address
                        if uint32(call.func_hash) >> 224 != unknown_0xfbb9fcf7(?????):
                        require not msg.value
                        require calldata.size - 4 >= 32
                        require arg1 == address(arg1)
                        return bool(whitelistedTokens[address(arg1)].field_416)
                    require not msg.value
                    require calldata.size - 4 >= 32
                    require arg1 == address(arg1)
                    if messengerAddress != msg.sender:
                        revert with 0, 'OVM_XCHAIN: messenger contract unauthenticated'
                    require ext_code.size(messengerAddress)
                    staticcall messengerAddress.xDomainMessageSender() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if ext_call.return_data[12 len 20] != sub_5285e058Address:
                        revert with 0, 'OVM_XCHAIN: wrong sender of cross-domain message'
                    if not address(arg1):
                        revert with 0, 'Bad bridge router address'
                    sub_5285e058Address = address(arg1)
                    emit SetXDomainAdmin(address(arg1));
                else:
                    require calldata.size - 4 >= 192
                    require arg1 == address(arg1)
                    require arg2 == address(arg2)
                    require arg4 == uint64(arg4)
                    require arg5 == uint64(arg5)
                    require arg6 == uint64(arg6)
                    if not whitelistedTokens[address(arg2)].field_480:
                        revert with 0, 'Contract is disabled'
                    if not stor0:
                        revert with 0, 'ReentrancyGuard: reentrant call'
                    stor0 = 0
                    if not whitelistedTokens[address(arg2)].field_416:
                        revert with 0, 'deposit token not whitelisted'
                    if uint64(arg4) > 25 * 10^16:
                        revert with 0, 'slowRelayFeePct must be <= 25%'
                    if uint64(arg5) > 25 * 10^16:
                        revert with 0, 'instantRelayFeePct must be <= 25%'
                    if uint64(arg6) < 600:
                        revert with 0, 17
                    if not timerAddress:
                        if block.timestamp < uint64(uint64(arg6) - 600):
                            revert with 0, 'deposit mined after deadline'
                        if 600 > -uint64(arg6) + test266151307():
                            revert with 0, 17
                        if not timerAddress:
                            if block.timestamp > uint64(uint64(arg6) + 600):
                                revert with 0, 'deposit mined after deadline'
                            if sub_146bf4b1Address != whitelistedTokens[address(arg2)].field_0:
                                mem[164] = msg.sender
                                mem[196] = this.address
                                mem[228] = arg3
                                mem[128] = 100
                                mem[164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[160 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                                mem[260] = 32
                                mem[292] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(arg2)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[324 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0
                                mem[424] = 0
                                call address(arg2) with:
                                   funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) << 544)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    require not mem[96]
                                else:
                                    mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[356] == bool(mem[356])
                                        if not mem[356]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                emit FundsDeposited(chainId, sub_a1244c67, address(arg1), msg.sender, whitelistedTokens[address(arg2)].field_0, address(arg2), arg3, arg4 << 192, arg5 << 192, uint64(arg6));
                            else:
                                if msg.value > 0:
                                    if arg3 != msg.value:
                                        revert with 0, 'msg.value must match amount'
                                    require ext_code.size(address(arg2))
                                    call address(arg2).deposit() with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    emit FundsDeposited(chainId, sub_a1244c67, address(arg1), msg.sender, whitelistedTokens[address(arg2)].field_0, address(arg2), arg3, arg4 << 192, arg5 << 192, uint64(arg6));
                                else:
                                    mem[164] = msg.sender
                                    mem[196] = this.address
                                    mem[228] = arg3
                                    mem[128] = 100
                                    mem[164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[160 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                                    mem[260] = 32
                                    mem[292] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg2)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[324 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0
                                    mem[424] = 0
                                    call address(arg2) with:
                                       funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        require not mem[96]
                                    else:
                                        mem[356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[356] == bool(mem[356])
                                            if not mem[356]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    emit FundsDeposited(chainId, sub_a1244c67, address(arg1), msg.sender, whitelistedTokens[address(arg2)].field_0, address(arg2), arg3, arg4 << 192, arg5 << 192, uint64(arg6));
                        else:
                            require ext_code.size(timerAddress)
                            staticcall timerAddress.0x29cb924d with:
                                    gas gas_remaining wei
                            mem[128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > uint64(uint64(arg6) + 600):
                                revert with 0, 'deposit mined after deadline'
                            if sub_146bf4b1Address != whitelistedTokens[address(arg2)].field_0:
                                mem[ceil32(return_data.size) + 164] = msg.sender
                                mem[ceil32(return_data.size) + 196] = this.address
                                mem[ceil32(return_data.size) + 228] = arg3
                                mem[ceil32(return_data.size) + 128] = 100
                                mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(return_data.size) + 160 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                                mem[ceil32(return_data.size) + 260] = 32
                                mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(arg2)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 324 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0
                                mem[ceil32(return_data.size) + 424] = 0
                                call address(arg2) with:
                                   funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) << 544)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                                        if not mem[ceil32(return_data.size) + 356]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if msg.value > 0:
                                    if arg3 != msg.value:
                                        revert with 0, 'msg.value must match amount'
                                    require ext_code.size(address(arg2))
                                    call address(arg2).deposit() with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[ceil32(return_data.size) + 164] = msg.sender
                                    mem[ceil32(return_data.size) + 196] = this.address
                                    mem[ceil32(return_data.size) + 228] = arg3
                                    mem[ceil32(return_data.size) + 128] = 100
                                    mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(return_data.size) + 160 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                                    mem[ceil32(return_data.size) + 260] = 32
                                    mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg2)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 324 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0
                                    mem[ceil32(return_data.size) + 424] = 0
                                    call address(arg2) with:
                                       funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                                            if not mem[ceil32(return_data.size) + 356]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            emit FundsDeposited(chainId, sub_a1244c67, address(arg1), msg.sender, whitelistedTokens[address(arg2)].field_0, address(arg2), arg3, arg4 << 192, arg5 << 192, uint64(arg6));
                    else:
                        require ext_code.size(timerAddress)
                        staticcall timerAddress.0x29cb924d with:
                                gas gas_remaining wei
                        mem[128] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < uint64(uint64(arg6) - 600):
                            revert with 0, 'deposit mined after deadline'
                        if 600 > -uint64(arg6) + test266151307():
                            revert with 0, 17
                        if not timerAddress:
                            if block.timestamp > uint64(uint64(arg6) + 600):
                                revert with 0, 'deposit mined after deadline'
                            if sub_146bf4b1Address != whitelistedTokens[address(arg2)].field_0:
                                mem[ceil32(return_data.size) + 164] = msg.sender
                                mem[ceil32(return_data.size) + 196] = this.address
                                mem[ceil32(return_data.size) + 228] = arg3
                                mem[ceil32(return_data.size) + 128] = 100
                                mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[ceil32(return_data.size) + 160 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                                mem[ceil32(return_data.size) + 260] = 32
                                mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(arg2)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[ceil32(return_data.size) + 324 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0
                                mem[ceil32(return_data.size) + 424] = 0
                                call address(arg2) with:
                                   funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) << 544)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                                        if not mem[ceil32(return_data.size) + 356]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if msg.value > 0:
                                    if arg3 != msg.value:
                                        revert with 0, 'msg.value must match amount'
                                    require ext_code.size(address(arg2))
                                    call address(arg2).deposit() with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[ceil32(return_data.size) + 164] = msg.sender
                                    mem[ceil32(return_data.size) + 196] = this.address
                                    mem[ceil32(return_data.size) + 228] = arg3
                                    mem[ceil32(return_data.size) + 128] = 100
                                    mem[ceil32(return_data.size) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[ceil32(return_data.size) + 160 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                                    mem[ceil32(return_data.size) + 260] = 32
                                    mem[ceil32(return_data.size) + 292] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg2)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[ceil32(return_data.size) + 324 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0
                                    mem[ceil32(return_data.size) + 424] = 0
                                    call address(arg2) with:
                                       funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[ceil32(return_data.size) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[ceil32(return_data.size) + 356] == bool(mem[ceil32(return_data.size) + 356])
                                            if not mem[ceil32(return_data.size) + 356]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        else:
                            require ext_code.size(timerAddress)
                            staticcall timerAddress.0x29cb924d with:
                                    gas gas_remaining wei
                            mem[ceil32(return_data.size) + 128] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] > uint64(uint64(arg6) + 600):
                                revert with 0, 'deposit mined after deadline'
                            if sub_146bf4b1Address != whitelistedTokens[address(arg2)].field_0:
                                mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                mem[(2 * ceil32(return_data.size)) + 196] = this.address
                                mem[(2 * ceil32(return_data.size)) + 228] = arg3
                                mem[(2 * ceil32(return_data.size)) + 128] = 100
                                mem[(2 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                mem[(2 * ceil32(return_data.size)) + 160 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                                mem[(2 * ceil32(return_data.size)) + 260] = 32
                                mem[(2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                if eth.balance(this.address) < 0:
                                    revert with 0, 'Address: insufficient balance for call'
                                if not ext_code.size(address(arg2)):
                                    revert with 0, 'Address: call to non-contract'
                                mem[(2 * ceil32(return_data.size)) + 324 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0
                                mem[(2 * ceil32(return_data.size)) + 424] = 0
                                call address(arg2) with:
                                   funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) >> 224
                                     gas gas_remaining wei
                                    args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) << 544)
                                if not return_data.size:
                                    if not ext_call.success:
                                        if mem[96]:
                                            revert with memory
                                              from 128
                                               len mem[96]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if mem[96]:
                                        require mem[96] >= 32
                                        require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                        if not ext_call.return_data[0]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        if return_data.size:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        require mem[(2 * ceil32(return_data.size)) + 356] == bool(mem[(2 * ceil32(return_data.size)) + 356])
                                        if not mem[(2 * ceil32(return_data.size)) + 356]:
                                            revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                            else:
                                if msg.value > 0:
                                    if arg3 != msg.value:
                                        revert with 0, 'msg.value must match amount'
                                    require ext_code.size(address(arg2))
                                    call address(arg2).deposit() with:
                                       value msg.value wei
                                         gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                else:
                                    mem[(2 * ceil32(return_data.size)) + 164] = msg.sender
                                    mem[(2 * ceil32(return_data.size)) + 196] = this.address
                                    mem[(2 * ceil32(return_data.size)) + 228] = arg3
                                    mem[(2 * ceil32(return_data.size)) + 128] = 100
                                    mem[(2 * ceil32(return_data.size)) + 164 len 28] = Mask(224, 32, msg.sender) >> 32
                                    mem[(2 * ceil32(return_data.size)) + 160 len 4] = transferFrom(address rg1, address rg2, uint256 rg3)
                                    mem[(2 * ceil32(return_data.size)) + 260] = 32
                                    mem[(2 * ceil32(return_data.size)) + 292] = 'SafeERC20: low-level call failed'
                                    if eth.balance(this.address) < 0:
                                        revert with 0, 'Address: insufficient balance for call'
                                    if not ext_code.size(address(arg2)):
                                        revert with 0, 'Address: call to non-contract'
                                    mem[(2 * ceil32(return_data.size)) + 324 len 128] = transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0
                                    mem[(2 * ceil32(return_data.size)) + 424] = 0
                                    call address(arg2) with:
                                       funct Mask(32, 224, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) >> 224
                                         gas gas_remaining wei
                                        args (Mask(768, -544, transferFrom(address rg1, address rg2, uint256 rg3), msg.sender, address(this.address), arg3, 0) << 544)
                                    if not return_data.size:
                                        if not ext_call.success:
                                            if mem[96]:
                                                revert with memory
                                                  from 128
                                                   len mem[96]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if mem[96]:
                                            require mem[96] >= 32
                                            require ext_call.return_data[0] == bool(ext_call.return_data[0])
                                            if not ext_call.return_data[0]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                                    else:
                                        mem[(2 * ceil32(return_data.size)) + 356 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            if return_data.size:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            require mem[(2 * ceil32(return_data.size)) + 356] == bool(mem[(2 * ceil32(return_data.size)) + 356])
                                            if not mem[(2 * ceil32(return_data.size)) + 356]:
                                                revert with 0, 'SafeERC20: ERC20 operation did not succeed'
                        emit FundsDeposited(chainId, sub_a1244c67, address(arg1), msg.sender, whitelistedTokens[address(arg2)].field_0, address(arg2), arg3, arg4 << 192, arg5 << 192, uint64(arg6));
                    if sub_a1244c67 > -2:
                        revert with 0, 17
                    sub_a1244c67++
                    stor0 = 1
}



}
