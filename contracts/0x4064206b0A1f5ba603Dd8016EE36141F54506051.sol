contract main {




// =====================  Runtime code  =====================


#
#  - getOwnersByPage(uint256 arg1, uint256 arg2)
#  - purchase(uint256 arg1, address arg2, address arg3, bytes arg4)
#  - transfer(address arg1, uint256 arg2)
#
const publicLockVersion = 8


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor51;
mapping of uint8 stor102;
mapping of uint8 stor103;
mapping of uint256 keyManagerToNonce;
uint8 isAlive; offset 160
address tokenAddress;
uint128 stor106; offset 160
address unlockProtocolAddress;
uint256 stor106;
uint256 expirationDuration;
uint256 stor108; offset 32
uint256 keyPrice;
big480 stor108;
uint256 maxNumberOfKeys;
uint256 totalSupply;
uint32 stor111;
address beneficiaryAddress;
uint256 stor111;
address onKeyPurchaseHookAddress;
address onKeyCancelHookAddress;
mapping of struct tokenIdFor;
mapping of uint32 ownerOf;
array of address owners;
mapping of address keyManagerOf;
mapping of address approved;
mapping of uint8 stor119;
array of uint256 name;
array of struct stor121;
array of struct stor122;
uint256 transferFeeBasisPoints;
uint256 refundPenaltyBasisPoints;
uint256 freeTrialLength;
array of address stor11591756326471999264895421442065030704299572019615264954066775150057963321363;

function supportsInterface(bytes4 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor51[Mask(32, 224, arg1)])
}

function owners(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < owners.length
    return owners[arg1]
}

function name() {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not address(ownerOf[arg1]):
        revert with 0, 'NO_SUCH_KEY'
    return approved[arg1]
}

function unlockProtocol() {
    return unlockProtocolAddress
}

function keyPrice() {
    return keyPrice
}

function expirationDuration() {
    return expirationDuration
}

function totalSupply() {
    return totalSupply
}

function transferFeeBasisPoints() {
    return transferFeeBasisPoints
}

function onKeyCancelHook() {
    return onKeyCancelHookAddress
}

function onKeyPurchaseHook() {
    return onKeyPurchaseHookAddress
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2:
        revert with 0, 'ONLY_ONE_KEY_PER_OWNER'
    return tokenIdFor[address(arg1)].field_0
}

function beneficiary() {
    return address(beneficiaryAddress)
}

function isAlive() {
    return bool(isAlive)
}

function keyManagerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return keyManagerOf[arg1]
}

function isKeyGranter(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor103[address(arg1)])
}

function refundPenaltyBasisPoints() {
    return refundPenaltyBasisPoints
}

function ownerOf(uint256 arg1) {
    require calldata.size - 4 >= 32
    return address(ownerOf[arg1])
}

function maxNumberOfKeys() {
    return maxNumberOfKeys
}

function numberOfOwners() {
    return owners.length
}

function getTokenIdFor(address arg1) {
    require calldata.size - 4 >= 32
    return tokenIdFor[address(arg1)].field_0
}

function tokenAddress() {
    return tokenAddress
}

function freeTrialLength() {
    return freeTrialLength
}

function isLockManager(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    return bool(stor102[address(arg1)])
}

function keyExpirationTimestampFor(address arg1) {
    require calldata.size - 4 >= 32
    return tokenIdFor[address(arg1)].field_256
}

function keyManagerToNonce(address arg1) {
    require calldata.size - 4 >= 32
    return keyManagerToNonce[arg1]
}

function _fallback() payable {
  stop
}

function isKeyOwner(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    return (address(ownerOf[arg1]) == arg2)
}

function getHasValidKey(address arg1) {
    require calldata.size - 4 >= 32
    return (block.timestamp < tokenIdFor[address(arg1)].field_256)
}

function tokenByIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 >= totalSupply:
        revert with 0, 'OUT_OF_RANGE'
    return arg1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        revert with 0, 'INVALID_ADDRESS'
    if block.timestamp < tokenIdFor[address(arg1)].field_256:
        return 1
    else:
        return 0
}

function invalidateOffchainApproval(uint256 arg1) {
    require calldata.size - 4 >= 32
    if arg1 <= keyManagerToNonce[msg.sender]:
        revert with 0, 'NONCE_ALREADY_USED'
    keyManagerToNonce[msg.sender] = arg1
    emit 0xf5d035b7: arg1, msg.sender
}

function getCancelAndRefundApprovalHash(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return sha3(this.address, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572), keyManagerToNonce[address(arg1)], arg2)
}

function isApprovedForAll(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if keyManagerOf[stor114[address(arg1)].field_0]:
        return bool(stor119[stor117[stor114[address(arg1)].field_0]][address(arg2)])
    return bool(stor119[address(arg1)][address(arg2)])
}

function setApprovalForAll(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not isAlive:
        revert with 0, 'LOCK_DEPRECATED'
    if msg.sender == arg1:
        revert with 0, 'APPROVE_SELF'
    stor119[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function getBalance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not arg1:
        return eth.balance(arg2)
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function updateBeneficiary(address arg1) {
    require calldata.size - 4 >= 32
    if address(beneficiaryAddress) != msg.sender:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                        mem[198 len 30]
        if not stor102[address(msg.sender)]:
            revert with 0, 'ONLY_BENEFICIARY_OR_LOCKMANAGER'
    if not arg1:
        revert with 0, 'INVALID_ADDRESS'
    address(beneficiaryAddress) = arg1
}

function renounceLockManager() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor102[address(msg.sender)] = 0
    emit 0x42885193: msg.sender
}

function disableLock() {
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x294d6978696e4c6f636b4d616e616765723a2063616c6c657220646f6573206e6f74206861766520746865204c6f636b4d616e6167657220726f6c,
                    mem[223 len 5]
    if not isAlive:
        revert with 0, 'LOCK_DEPRECATED'
    emit Disable()
    isAlive = 0
}

function initialize() {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x73436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    stor51[0x1ffc9a700000000000000000000000000000000000000000000000000000000] = 1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function updateTransferFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x294d6978696e4c6f636b4d616e616765723a2063616c6c657220646f6573206e6f74206861766520746865204c6f636b4d616e6167657220726f6c,
                    mem[223 len 5]
    emit TransferFeeChanged(arg1);
    transferFeeBasisPoints = arg1
}

function updateRefundPenalty(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x294d6978696e4c6f636b4d616e616765723a2063616c6c657220646f6573206e6f74206861766520746865204c6f636b4d616e6167657220726f6c,
                    mem[223 len 5]
    emit 0xd6867bc5: arg1, arg2
    freeTrialLength = arg1
    refundPenaltyBasisPoints = arg2
}

function approveBeneficiary(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        if address(beneficiaryAddress) != msg.sender:
            revert with 0, 'ONLY_LOCK_MANAGER_OR_BENEFICIARY'
    require ext_code.size(tokenAddress)
    call tokenAddress.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function addKeyGranter(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x294d6978696e4c6f636b4d616e616765723a2063616c6c657220646f6573206e6f74206861766520746865204c6f636b4d616e6167657220726f6c,
                    mem[223 len 5]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor103[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor103[address(arg1)] = 1
    emit 0x684f8a71: arg1
}

function addLockManager(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x294d6978696e4c6f636b4d616e616765723a2063616c6c657220646f6573206e6f74206861766520746865204c6f636b4d616e6167657220726f6c,
                    mem[223 len 5]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if stor102[address(arg1)]:
        revert with 0, 'Roles: account already has role'
    stor102[address(arg1)] = 1
    emit 0x91d5c045: arg1
}

function updateLockName(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x294d6978696e4c6f636b4d616e616765723a2063616c6c657220646f6573206e6f74206861766520746865204c6f636b4d616e6167657220726f6c,
                    mem[223 len 5]
    name.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        name[s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while name.length + 31 / 32 > idx:
        name[idx] = 0
        idx = idx + 1
        continue 
}

function setBaseTokenURI(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x294d6978696e4c6f636b4d616e616765723a2063616c6c657220646f6573206e6f74206861766520746865204c6f636b4d616e6167657220726f6c,
                    mem[223 len 5]
    stor122.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        stor122[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while stor122.length + 31 / 32 > idx:
        stor122[idx].field_0 = 0
        idx = idx + 1
        continue 
}

function updateKeyPricing(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x294d6978696e4c6f636b4d616e616765723a2063616c6c657220646f6573206e6f74206861766520746865204c6f636b4d616e6167657220726f6c,
                    mem[223 len 5]
    if not isAlive:
        revert with 0, 'LOCK_DEPRECATED'
    if arg2:
        require ext_code.size(arg2)
        staticcall arg2.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'INVALID_TOKEN'
    keyPrice = arg1
    tokenAddress = arg2
    emit 0x3615065c: keyPrice, arg1, tokenAddress, arg2
}

function getTransferFee(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if block.timestamp >= tokenIdFor[address(arg1)].field_256:
        return 0
    if arg2:
        if transferFeeBasisPoints * arg2 / arg2 != transferFeeBasisPoints:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (transferFeeBasisPoints * arg2 / 10000)
    if not tokenIdFor[address(arg1)].field_256 - block.timestamp:
        return 0
    if (tokenIdFor[address(arg1)].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / tokenIdFor[address(arg1)].field_256 - block.timestamp != transferFeeBasisPoints:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((tokenIdFor[address(arg1)].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000)
}

function updateLockSymbol(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x294d6978696e4c6f636b4d616e616765723a2063616c6c657220646f6573206e6f74206861766520746865204c6f636b4d616e6167657220726f6c,
                    mem[223 len 5]
    stor121.length = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        stor121[s].field_0 = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while stor121.length + 31 / 32 > idx:
        stor121[idx].field_0 = 0
        idx = idx + 1
        continue 
    emit 0x8868e22e: Array(len=arg1.length, data=arg1[all])
}

function setEventHooks(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x294d6978696e4c6f636b4d616e616765723a2063616c6c657220646f6573206e6f74206861766520746865204c6f636b4d616e6167657220726f6c,
                    mem[223 len 5]
    if arg1:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
            revert with 0, 'INVALID_ON_KEY_SOLD_HOOK'
        if not ext_code.hash(arg1):
            revert with 0, 'INVALID_ON_KEY_SOLD_HOOK'
    if arg2:
        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg2):
            revert with 0, 'INVALID_ON_KEY_CANCEL_HOOK'
        if not ext_code.hash(arg2):
            revert with 0, 'INVALID_ON_KEY_CANCEL_HOOK'
    onKeyPurchaseHookAddress = arg1
    onKeyCancelHookAddress = arg2
}

function revokeKeyGranter(address arg1) {
    require calldata.size - 4 >= 32
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x294d6978696e4c6f636b4d616e616765723a2063616c6c657220646f6573206e6f74206861766520746865204c6f636b4d616e6167657220726f6c,
                    mem[223 len 5]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor103[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65526f6c65733a206163636f756e7420646f6573206e6f74206861766520726f6c,
                    mem[197 len 31]
    stor103[address(arg1)] = 0
    emit 0x766f6199: arg1
}

function setKeyManagerOf(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not address(ownerOf[arg1]):
        revert with 0, 'NO_SUCH_KEY'
    if keyManagerOf[arg1] != msg.sender:
        if keyManagerOf[arg1]:
            if not msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            34,
                            0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                            mem[198 len 30]
            if not stor102[address(msg.sender)]:
                revert with 0, 'UNAUTHORIZED_KEY_MANAGER_UPDATE'
        else:
            if address(ownerOf[arg1]) != msg.sender:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                34,
                                0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                                mem[198 len 30]
                if not stor102[address(msg.sender)]:
                    revert with 0, 'UNAUTHORIZED_KEY_MANAGER_UPDATE'
    if keyManagerOf[arg1] != arg2:
        keyManagerOf[arg1] = arg2
        if approved[arg1]:
            approved[arg1] = 0
        emit 0x9d2895c4: arg1, 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not isAlive:
        revert with 0, 'LOCK_DEPRECATED'
    if keyManagerOf[arg2] != msg.sender:
        if keyManagerOf[arg2]:
            if approved[arg2] != msg.sender:
                if keyManagerOf[stor114[address(stor115[arg2])].field_0]:
                    if not stor119[stor117[stor114[address(stor115[arg2])].field_0]][address(msg.sender)]:
                        revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
                else:
                    if not stor119[address(stor115[arg2])][address(msg.sender)]:
                        revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
        else:
            if address(ownerOf[arg2]) != msg.sender:
                if approved[arg2] != msg.sender:
                    if keyManagerOf[stor114[address(stor115[arg2])].field_0]:
                        if not stor119[stor117[stor114[address(stor115[arg2])].field_0]][address(msg.sender)]:
                            revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
                    else:
                        if not stor119[address(stor115[arg2])][address(msg.sender)]:
                            revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
    if arg1 == msg.sender:
        revert with 0, 'APPROVE_SELF'
    approved[arg2] = arg1
    emit Approval(address(ownerOf[arg2]), arg1, arg2);
}

function purchasePriceFor(address arg1, address arg2, bytes arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not onKeyPurchaseHookAddress:
        if not keyPrice:
            mem[ceil32(arg3.length) + 128] = keyPrice
            return Mask(8 * -ceil32(arg3.length) + arg3.length + 32, 0, 0), mem[arg3.length + 160 len -arg3.length + ceil32(arg3.length)]
        require ext_code.size(unlockProtocolAddress)
        staticcall unlockProtocolAddress.computeAvailableDiscountFor(address rg1, uint256 rg2) with:
                gas gas_remaining wei
               args address(arg1), keyPrice
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 64
        if ext_call.return_data[0] > keyPrice:
            revert with 0, 'INVALID_DISCOUNT_FROM_UNLOCK'
        return 0, Mask(224, 0, keyPrice - ext_call.return_data[0])
    require ext_code.size(onKeyPurchaseHookAddress)
    staticcall onKeyPurchaseHookAddress with:
            gas gas_remaining wei
           args msg.sender, address(arg1), address(arg2), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0, ext_call.return_data[4 len 28]
    require ext_code.size(unlockProtocolAddress)
    staticcall unlockProtocolAddress.computeAvailableDiscountFor(address rg1, uint256 rg2) with:
            gas gas_remaining wei
           args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if ext_call.return_data[0] > ext_call.return_data[0]:
        revert with 0, 'INVALID_DISCOUNT_FROM_UNLOCK'
    else:
        return 0
}

function initialize(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5, string arg6) {
    require calldata.size - 4 >= 192
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x73436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[ceil32(arg6.length) + 242 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    tokenAddress = arg3
    if arg3:
        require ext_code.size(arg3)
        staticcall arg3.0x18160ddd with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] <= 0:
            revert with 0, 'INVALID_TOKEN'
    isAlive = 1
    if arg2 > 876000 * 24 * 3600:
        revert with 0, 'MAX_EXPIRATION_100_YEARS'
    uint256(stor106.field_0) = Mask(96, 0, stor106.field_160)
    address(beneficiaryAddress) = arg1
    expirationDuration = arg2
    keyPrice = arg4
    maxNumberOfKeys = arg5
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 
                            32,
                            46,
                            0x73436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[ceil32(arg6.length) + 242 len 18]
        if not uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
    stor51[0x1ffc9a700000000000000000000000000000000000000000000000000000000] = 1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
    name[] = Array(len=arg6.length, data=arg6[all])
    stor51[0x5b5e139f00000000000000000000000000000000000000000000000000000000] = 1
    stor51[0x780e9d6300000000000000000000000000000000000000000000000000000000] = 1
    refundPenaltyBasisPoints = 1000
    if not arg1:
        revert with 0, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg6.length) + 230 len 30]
    if not arg1:
        revert with 0, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[ceil32(arg6.length) + 230 len 30]
    if not stor102[address(arg1)]:
        if stor102[address(arg1)]:
            revert with 0, 'Roles: account already has role'
        stor102[address(arg1)] = 1
    if not stor103[address(arg1)]:
        if not arg1:
            revert with 0, 
                        32,
                        34,
                        0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                        mem[ceil32(arg6.length) + 230 len 30]
        if stor103[address(arg1)]:
            revert with 0, 'Roles: account already has role'
        stor103[address(arg1)] = 1
    stor51[0x80ac58cd00000000000000000000000000000000000000000000000000000000] = 1
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function getCancelAndRefundValueFor(address arg1) {
    require calldata.size - 4 >= 32
    if block.timestamp >= tokenIdFor[address(arg1)].field_256:
        revert with 0, 'KEY_NOT_VALID'
    if tokenIdFor[address(arg1)].field_256 - block.timestamp + freeTrialLength >= expirationDuration:
        if freeTrialLength:
            if tokenIdFor[address(arg1)].field_256 - block.timestamp + freeTrialLength >= expirationDuration:
                return keyPrice
        if not keyPrice:
            if keyPrice <= 0:
                return 0
            return keyPrice
        if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if keyPrice <= refundPenaltyBasisPoints * keyPrice / 10000:
            return 0
        return (keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000))
    if not keyPrice:
        require expirationDuration
        if freeTrialLength:
            if tokenIdFor[address(arg1)].field_256 - block.timestamp + freeTrialLength >= expirationDuration:
                return (0 / expirationDuration)
        if not keyPrice:
            if 0 / expirationDuration <= 0:
                return 0
            return (0 / expirationDuration)
        if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 0 / expirationDuration <= refundPenaltyBasisPoints * keyPrice / 10000:
            return 0
        return ((0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000))
    if (tokenIdFor[address(arg1)].field_256 * keyPrice) - (block.timestamp * keyPrice) / keyPrice != tokenIdFor[address(arg1)].field_256 - block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    require expirationDuration
    if freeTrialLength:
        if tokenIdFor[address(arg1)].field_256 - block.timestamp + freeTrialLength >= expirationDuration:
            return ((tokenIdFor[address(arg1)].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration)
    if not keyPrice:
        if (tokenIdFor[address(arg1)].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration <= 0:
            return 0
        return ((tokenIdFor[address(arg1)].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration)
    if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if (tokenIdFor[address(arg1)].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration <= refundPenaltyBasisPoints * keyPrice / 10000:
        return 0
    return (((tokenIdFor[address(arg1)].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000))
}

function symbol() {
    if stor121.length:
        if 31 < stor121.length:
            mem[128] = uint256(stor121.field_0)
            idx = 128
            s = 0
            while stor121.length + 96 > idx:
                mem[idx + 32] = stor121[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            return Array(len=stor121.length, data=mem[128 len stor121.length])
        mem[128] = 256 * stor121.length.field_8
        mem[ceil32(stor121.length) + 192 len ceil32(stor121.length)] = mem[128 len ceil32(stor121.length)]
        if not Mask(5, 1, stor121.length and (256 * not bool(stor121.length)) - 1):
            return Array(len=stor121.length, data=mem[128 len stor121.length])
        mem[floor32(stor121.length) + ceil32(stor121.length) + 192] = Mask(-(8 * -stor121.length % 32 + 32) + 256, 0, mem[floor32(stor121.length) + ceil32(stor121.length) + 192])
        return Array(len=stor121.length, data=mem[128 len ceil32(stor121.length)], mem[(2 * ceil32(stor121.length)) + 192 len floor32(stor121.length) + -ceil32(stor121.length) + 32]), 
    mem[96] = 0xcec4105200000000000000000000000000000000000000000000000000000000
    require ext_code.size(unlockProtocolAddress)
    staticcall unlockProtocolAddress.globalTokenSymbol() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _6 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require return_data.size >= mem[mem[96] + 96] + mem[96] + 32 and mem[mem[96] + 96] <= 4294967296
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    _12 = mem[_6 + 96]
    mem[ceil32(return_data.size) + 128 len ceil32(mem[_6 + 96])] = mem[_6 + 128 len ceil32(mem[_6 + 96])]
    if not _12 % 32:
        mem[_12 + ceil32(return_data.size) + 128] = 32
        mem[_12 + ceil32(return_data.size) + 160] = mem[ceil32(return_data.size) + 96]
        mem[_12 + ceil32(return_data.size) + 192 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
        if not mem[ceil32(return_data.size) + 96] % 32:
            return 32, mem[_12 + ceil32(return_data.size) + 160 len mem[ceil32(return_data.size) + 96] + 32]
        mem[floor32(mem[ceil32(return_data.size) + 96]) + _12 + ceil32(return_data.size) + 192] = mem[floor32(mem[ceil32(return_data.size) + 96]) + _12 + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 224 len mem[ceil32(return_data.size) + 96] % 32]
        return Array(len=mem[ceil32(return_data.size) + 96], data=mem[_12 + ceil32(return_data.size) + 192 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
    mem[floor32(_12) + ceil32(return_data.size) + 128] = mem[floor32(_12) + ceil32(return_data.size) + -(_12 % 32) + 160 len _12 % 32]
    mem[floor32(_12) + ceil32(return_data.size) + 160] = 32
    mem[floor32(_12) + ceil32(return_data.size) + 192] = mem[ceil32(return_data.size) + 96]
    mem[floor32(_12) + ceil32(return_data.size) + 224 len ceil32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len ceil32(mem[ceil32(return_data.size) + 96])]
    if not mem[ceil32(return_data.size) + 96] % 32:
        return 32, mem[floor32(_12) + ceil32(return_data.size) + 192 len mem[ceil32(return_data.size) + 96] + 32]
    mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_12) + ceil32(return_data.size) + 224] = mem[floor32(mem[ceil32(return_data.size) + 96]) + floor32(_12) + ceil32(return_data.size) + -(mem[ceil32(return_data.size) + 96] % 32) + 256 len mem[ceil32(return_data.size) + 96] % 32]
    return Array(len=mem[ceil32(return_data.size) + 96], data=mem[floor32(_12) + ceil32(return_data.size) + 224 len floor32(mem[ceil32(return_data.size) + 96]) + 32]), 
}

function expireAndRefundFor(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    59,
                    0x294d6978696e4c6f636b4d616e616765723a2063616c6c657220646f6573206e6f74206861766520746865204c6f636b4d616e6167657220726f6c,
                    mem[223 len 5]
    if block.timestamp >= tokenIdFor[address(arg1)].field_256:
        revert with 0, 'KEY_NOT_VALID'
    emit 0xa7068a99: arg2, tokenIdFor[address(arg1)].field_0, arg1, msg.sender
    tokenIdFor[address(arg1)].field_256 = block.timestamp
    if arg2:
        if not tokenAddress:
            if eth.balance(this.address) < arg2:
                revert with 0, 'Address: insufficient balance'
            call arg1 with:
               value arg2 wei
                 gas gas_remaining wei
            if not return_data.size:
                if not ext_call.success:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                58,
                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                mem[222 len 6]
            else:
                if not ext_call.success:
                    revert with 0, 
                                32,
                                58,
                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                mem[ceil32(return_data.size) + 223 len 6]
            ('bool', 'ext_call.success')
        else:
            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            if not ext_code.hash(tokenAddress):
                revert with 0, 'SafeERC20: call to non-contract'
            mem[196 len 64] = unknown_0xa9059cbb(?????), address(arg1) << 64, 0, Mask(224, 32, arg2) >> 32
            call tokenAddress with:
                 gas gas_remaining wei
                args Mask(224, 32, arg2) << 224, mem[260 len 4]
            if not return_data.size:
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if not unknown_0xa9059cbb(?????), address(arg1) << 64:
                    revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
            else:
                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[228]:
                        revert with 0, 
                                    32,
                                    42,
                                    0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[ceil32(return_data.size) + 307 len 22]
    if onKeyCancelHookAddress:
        require ext_code.size(onKeyCancelHookAddress)
        call onKeyCancelHookAddress.0xb499b6c5 with:
             gas gas_remaining wei
            args msg.sender, address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function grantKeys(address[] arg1, uint256[] arg2, address[] arg3) {
    require calldata.size - 4 >= 96
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor103[address(msg.sender)]:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        34,
                        0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                        mem[198 len 30]
        if not stor102[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        72,
                        0x4d6978696e4b65794772616e7465723a2063616c6c657220646f6573206e6f74206861766520746865204b65794772616e746572206f72204c6f636b4d616e6167657220726f6c00,
                        mem[236 len 24]
    idx = 0
    while idx < arg1.length:
        require idx < arg2.length
        require idx < arg3.length
        if not address(cd[((32 * idx) + arg1 + 36)]):
            revert with 0, 'INVALID_ADDRESS'
        if cd[((32 * idx) + arg2 + 36)] <= tokenIdFor[address(cd[((32 * idx) + arg1 + 36)])].field_256:
            revert with 0, 'ALREADY_OWNS_KEY'
        if tokenIdFor[address(cd[((32 * idx) + arg1 + 36)])].field_0:
            mem[32] = 117
            if keyManagerOf[stor114[address(cd[((32 * idx) + arg1 + 36)])].field_0] != address(cd[((32 * idx) + arg3 + 36)]):
                keyManagerOf[stor114[address(cd[((32 * idx) + arg1 + 36)])].field_0] = address(cd[((32 * idx) + arg3 + 36)])
                mem[32] = 118
                if approved[stor114[address(cd[((32 * idx) + arg1 + 36)])].field_0]:
                    mem[32] = 118
                    approved[stor114[address(cd[((32 * idx) + arg1 + 36)])].field_0] = 0
                emit 0x9d2895c4: tokenIdFor[address(cd[((32 * idx) + arg1 + 36)])].field_0, 0
        else:
            totalSupply++
            tokenIdFor[address(cd[((32 * idx) + arg1 + 36)])].field_0 = totalSupply + 1
            if address(ownerOf[stor114[address(cd[((32 * idx) + arg1 + 36)])].field_0]) != address(cd[((32 * idx) + arg1 + 36)]):
                owners.length++
                stor19A0[stor116.length] = address(cd[((32 * idx) + arg1 + 36)])
                address(ownerOf[stor114[address(cd[((32 * idx) + arg1 + 36)])].field_0]) = address(cd[((32 * idx) + arg1 + 36)])
            mem[32] = 117
            if keyManagerOf[stor114[address(cd[((32 * idx) + arg1 + 36)])].field_0] != address(cd[((32 * idx) + arg3 + 36)]):
                keyManagerOf[stor114[address(cd[((32 * idx) + arg1 + 36)])].field_0] = address(cd[((32 * idx) + arg3 + 36)])
                mem[32] = 118
                if approved[stor114[address(cd[((32 * idx) + arg1 + 36)])].field_0]:
                    mem[32] = 118
                    approved[stor114[address(cd[((32 * idx) + arg1 + 36)])].field_0] = 0
                emit 0x9d2895c4: tokenIdFor[address(cd[((32 * idx) + arg1 + 36)])].field_0, 0
        emit 0x9d2895c4: tokenIdFor[address(cd[((32 * idx) + arg1 + 36)])].field_0, address(cd[((32 * idx) + arg3 + 36)])
        tokenIdFor[address(cd[((32 * idx) + arg1 + 36)])].field_256 = cd[((32 * idx) + arg2 + 36)]
        mem[0] = tokenIdFor[address(cd[((32 * idx) + arg1 + 36)])].field_0
        emit 0x64ddf252: 0, address(cd[((32 * idx) + arg1 + 36)]), tokenIdFor[address(cd[((32 * idx) + arg1 + 36)])].field_0
        idx = idx + 1
        continue 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not isAlive:
        revert with 0, 'LOCK_DEPRECATED'
    if block.timestamp >= tokenIdFor[address(arg1)].field_256:
        revert with 0, 'KEY_NOT_VALID'
    if keyManagerOf[arg3] != msg.sender:
        if keyManagerOf[arg3]:
            if approved[arg3] != msg.sender:
                if keyManagerOf[stor114[address(stor115[arg3])].field_0]:
                    if not stor119[stor117[stor114[address(stor115[arg3])].field_0]][address(msg.sender)]:
                        revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
                else:
                    if not stor119[address(stor115[arg3])][address(msg.sender)]:
                        revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
        else:
            if address(ownerOf[arg3]) != msg.sender:
                if approved[arg3] != msg.sender:
                    if keyManagerOf[stor114[address(stor115[arg3])].field_0]:
                        if not stor119[stor117[stor114[address(stor115[arg3])].field_0]][address(msg.sender)]:
                            revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
                    else:
                        if not stor119[address(stor115[arg3])][address(msg.sender)]:
                            revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
    if address(ownerOf[arg3]) != arg1:
        revert with 0, 'TRANSFER_FROM: NOT_KEY_OWNER'
    if transferFeeBasisPoints >= 10000:
        revert with 0, 'KEY_TRANSFERS_DISABLED'
    if not arg2:
        revert with 0, 'INVALID_ADDRESS'
    if block.timestamp >= tokenIdFor[address(arg1)].field_256:
        if not address(ownerOf[arg3]):
            revert with 0, 'NON_EXISTENT_KEY'
        if 0 > tokenIdFor[address(stor115[arg3])].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        emit 0xe9408df9: 0, arg3
    else:
        if not tokenIdFor[address(arg1)].field_256 - block.timestamp:
            if not address(ownerOf[arg3]):
                revert with 0, 'NON_EXISTENT_KEY'
            if 0 > tokenIdFor[address(stor115[arg3])].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0xe9408df9: 0, arg3
        else:
            if (tokenIdFor[address(arg1)].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / tokenIdFor[address(arg1)].field_256 - block.timestamp != transferFeeBasisPoints:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not address(ownerOf[arg3]):
                revert with 0, 'NON_EXISTENT_KEY'
            if (tokenIdFor[address(arg1)].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000 > tokenIdFor[address(stor115[arg3])].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            tokenIdFor[address(stor115[arg3])].field_256 -= (tokenIdFor[address(arg1)].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000
            emit 0xe9408df9: (tokenIdFor[address(arg1)].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000, 0, arg3
    if not tokenIdFor[arg2].field_0:
        tokenIdFor[arg2].field_0 = arg3
        if address(ownerOf[arg3]) != arg2:
            owners.length++
            stor19A0[stor116.length] = arg2
            address(ownerOf[arg3]) = arg2
        if approved[arg3]:
            approved[arg3] = 0
    if tokenIdFor[arg2].field_256 > block.timestamp:
        if tokenIdFor[arg2].field_256 - block.timestamp + tokenIdFor[address(arg1)].field_256 < tokenIdFor[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        tokenIdFor[arg2].field_256 = tokenIdFor[arg2].field_256 - block.timestamp + tokenIdFor[address(arg1)].field_256
    else:
        tokenIdFor[arg2].field_256 = tokenIdFor[address(arg1)].field_256
        tokenIdFor[arg2].field_0 = arg3
        if not keyManagerOf[arg3]:
            if address(ownerOf[arg3]) != arg2:
                owners.length++
                stor19A0[stor116.length] = arg2
                address(ownerOf[arg3]) = arg2
        else:
            keyManagerOf[arg3] = 0
            if approved[arg3]:
                approved[arg3] = 0
            emit 0x9d2895c4: arg3, 0
            if address(ownerOf[arg3]) != arg2:
                owners.length++
                stor19A0[stor116.length] = arg2
                address(ownerOf[arg3]) = arg2
    tokenIdFor[address(arg1)].field_256 = block.timestamp
    tokenIdFor[address(arg1)].field_0 = 0
    emit 0x64ddf252: arg1, arg2, arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not isAlive:
        revert with 0, 'LOCK_DEPRECATED'
    if block.timestamp >= tokenIdFor[address(arg1)].field_256:
        revert with 0, 'KEY_NOT_VALID'
    if keyManagerOf[arg3] != msg.sender:
        if keyManagerOf[arg3]:
            if approved[arg3] != msg.sender:
                if keyManagerOf[stor114[address(stor115[arg3])].field_0]:
                    if not stor119[stor117[stor114[address(stor115[arg3])].field_0]][address(msg.sender)]:
                        revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
                else:
                    if not stor119[address(stor115[arg3])][address(msg.sender)]:
                        revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
        else:
            if address(ownerOf[arg3]) != msg.sender:
                if approved[arg3] != msg.sender:
                    if keyManagerOf[stor114[address(stor115[arg3])].field_0]:
                        if not stor119[stor117[stor114[address(stor115[arg3])].field_0]][address(msg.sender)]:
                            revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
                    else:
                        if not stor119[address(stor115[arg3])][address(msg.sender)]:
                            revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
    if address(ownerOf[arg3]) != arg1:
        revert with 0, 'TRANSFER_FROM: NOT_KEY_OWNER'
    if transferFeeBasisPoints >= 10000:
        revert with 0, 'KEY_TRANSFERS_DISABLED'
    if not arg2:
        revert with 0, 'INVALID_ADDRESS'
    if block.timestamp >= tokenIdFor[address(arg1)].field_256:
        if not address(ownerOf[arg3]):
            revert with 0, 'NON_EXISTENT_KEY'
        if 0 > tokenIdFor[address(stor115[arg3])].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        emit 0xe9408df9: 0, arg3
    else:
        if not tokenIdFor[address(arg1)].field_256 - block.timestamp:
            if not address(ownerOf[arg3]):
                revert with 0, 'NON_EXISTENT_KEY'
            if 0 > tokenIdFor[address(stor115[arg3])].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0xe9408df9: 0, arg3
        else:
            if (tokenIdFor[address(arg1)].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / tokenIdFor[address(arg1)].field_256 - block.timestamp != transferFeeBasisPoints:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[229 len 31]
            if not address(ownerOf[arg3]):
                revert with 0, 'NON_EXISTENT_KEY'
            if (tokenIdFor[address(arg1)].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000 > tokenIdFor[address(stor115[arg3])].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            tokenIdFor[address(stor115[arg3])].field_256 -= (tokenIdFor[address(arg1)].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000
            emit 0xe9408df9: (tokenIdFor[address(arg1)].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000, 0, arg3
    if not tokenIdFor[arg2].field_0:
        tokenIdFor[arg2].field_0 = arg3
        if address(ownerOf[arg3]) != arg2:
            owners.length++
            stor19A0[stor116.length] = arg2
            address(ownerOf[arg3]) = arg2
        if approved[arg3]:
            approved[arg3] = 0
    if tokenIdFor[arg2].field_256 > block.timestamp:
        if tokenIdFor[arg2].field_256 - block.timestamp + tokenIdFor[address(arg1)].field_256 < tokenIdFor[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        tokenIdFor[arg2].field_256 = tokenIdFor[arg2].field_256 - block.timestamp + tokenIdFor[address(arg1)].field_256
    else:
        tokenIdFor[arg2].field_256 = tokenIdFor[address(arg1)].field_256
        tokenIdFor[arg2].field_0 = arg3
        if keyManagerOf[arg3]:
            keyManagerOf[arg3] = 0
            if approved[arg3]:
                approved[arg3] = 0
            emit 0x9d2895c4: arg3, 0
        if address(ownerOf[arg3]) != arg2:
            owners.length++
            stor19A0[stor116.length] = arg2
            address(ownerOf[arg3]) = arg2
    tokenIdFor[address(arg1)].field_256 = block.timestamp
    tokenIdFor[address(arg1)].field_0 = 0
    emit 0x64ddf252: arg1, arg2, arg3
    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if ext_code.hash(arg2):
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, 128, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'NON_COMPLIANT_ERC721_RECEIVER'
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    if not isAlive:
        revert with 0, 'LOCK_DEPRECATED'
    if block.timestamp >= tokenIdFor[address(arg1)].field_256:
        revert with 0, 'KEY_NOT_VALID'
    if keyManagerOf[arg3] != msg.sender:
        if keyManagerOf[arg3]:
            if approved[arg3] != msg.sender:
                if keyManagerOf[stor114[address(stor115[arg3])].field_0]:
                    if not stor119[stor117[stor114[address(stor115[arg3])].field_0]][address(msg.sender)]:
                        revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
                else:
                    if not stor119[address(stor115[arg3])][address(msg.sender)]:
                        revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
        else:
            if address(ownerOf[arg3]) != msg.sender:
                if approved[arg3] != msg.sender:
                    if keyManagerOf[stor114[address(stor115[arg3])].field_0]:
                        if not stor119[stor117[stor114[address(stor115[arg3])].field_0]][address(msg.sender)]:
                            revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
                    else:
                        if not stor119[address(stor115[arg3])][address(msg.sender)]:
                            revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
    if address(ownerOf[arg3]) != arg1:
        revert with 0, 'TRANSFER_FROM: NOT_KEY_OWNER'
    if transferFeeBasisPoints >= 10000:
        revert with 0, 'KEY_TRANSFERS_DISABLED'
    if not arg2:
        revert with 0, 'INVALID_ADDRESS'
    if block.timestamp >= tokenIdFor[address(arg1)].field_256:
        if not address(ownerOf[arg3]):
            revert with 0, 'NON_EXISTENT_KEY'
        if 0 > tokenIdFor[address(stor115[arg3])].field_256:
            revert with 0, 'SafeMath: subtraction overflow'
        emit 0xe9408df9: 0, arg3
    else:
        if not tokenIdFor[address(arg1)].field_256 - block.timestamp:
            if not address(ownerOf[arg3]):
                revert with 0, 'NON_EXISTENT_KEY'
            if 0 > tokenIdFor[address(stor115[arg3])].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            emit 0xe9408df9: 0, arg3
        else:
            if (tokenIdFor[address(arg1)].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / tokenIdFor[address(arg1)].field_256 - block.timestamp != transferFeeBasisPoints:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[ceil32(arg4.length) + 229 len 31]
            if not address(ownerOf[arg3]):
                revert with 0, 'NON_EXISTENT_KEY'
            if (tokenIdFor[address(arg1)].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000 > tokenIdFor[address(stor115[arg3])].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            tokenIdFor[address(stor115[arg3])].field_256 -= (tokenIdFor[address(arg1)].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000
            emit 0xe9408df9: (tokenIdFor[address(arg1)].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000, 0, arg3
    if not tokenIdFor[arg2].field_0:
        tokenIdFor[arg2].field_0 = arg3
        if address(ownerOf[arg3]) != arg2:
            owners.length++
            stor19A0[stor116.length] = arg2
            address(ownerOf[arg3]) = arg2
        if approved[arg3]:
            approved[arg3] = 0
    if tokenIdFor[arg2].field_256 > block.timestamp:
        if tokenIdFor[arg2].field_256 - block.timestamp + tokenIdFor[address(arg1)].field_256 < tokenIdFor[address(arg1)].field_256:
            revert with 0, 'SafeMath: addition overflow'
        tokenIdFor[arg2].field_256 = tokenIdFor[arg2].field_256 - block.timestamp + tokenIdFor[address(arg1)].field_256
    else:
        tokenIdFor[arg2].field_256 = tokenIdFor[address(arg1)].field_256
        tokenIdFor[arg2].field_0 = arg3
        if keyManagerOf[arg3]:
            keyManagerOf[arg3] = 0
            if approved[arg3]:
                approved[arg3] = 0
            emit 0x9d2895c4: arg3, 0
        if address(ownerOf[arg3]) != arg2:
            owners.length++
            stor19A0[stor116.length] = arg2
            address(ownerOf[arg3]) = arg2
    tokenIdFor[address(arg1)].field_256 = block.timestamp
    tokenIdFor[address(arg1)].field_0 = 0
    emit 0x64ddf252: arg1, arg2, arg3
    if ext_code.hash(arg2) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
        if ext_code.hash(arg2):
            require ext_code.size(arg2)
            call arg2.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                 gas gas_remaining wei
                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                revert with 0, 'NON_COMPLIANT_ERC721_RECEIVER'
}

function withdraw(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x77526f6c65733a206163636f756e7420697320746865207a65726f20616464726573,
                    mem[198 len 30]
    if not stor102[address(msg.sender)]:
        if address(beneficiaryAddress) != msg.sender:
            revert with 0, 'ONLY_LOCK_MANAGER_OR_BENEFICIARY'
    if not arg1:
        if not arg2:
            if eth.balance(this.address) <= 0:
                revert with 0, 'NOT_ENOUGH_FUNDS'
            emit Withdrawal(eth.balance(this.address), msg.sender, arg1, address(beneficiaryAddress));
            if eth.balance(this.address):
                if not arg1:
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 'Address: insufficient balance'
                    call address(beneficiaryAddress) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        58,
                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                        mem[222 len 6]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        58,
                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                        mem[ceil32(return_data.size) + 223 len 6]
                    ('bool', 'ext_call.success')
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor111), uint32(stor111), Mask(224, 32, eth.balance(this.address)) >> 32
                    call arg1 with:
                       funct uint32(stor111)
                         gas gas_remaining wei
                        args Mask(224, 32, eth.balance(this.address)) << 224, mem[260 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor111):
                            revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 307 len 22]
        else:
            if arg2 <= eth.balance(this.address):
                emit Withdrawal(arg2, msg.sender, arg1, address(beneficiaryAddress));
                if arg2:
                    if not arg1:
                        if eth.balance(this.address) < arg2:
                            revert with 0, 'Address: insufficient balance'
                        call address(beneficiaryAddress) with:
                           value arg2 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            58,
                                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                            mem[222 len 6]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                            mem[ceil32(return_data.size) + 223 len 6]
                        ('bool', 'ext_call.success')
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor111), uint32(stor111), Mask(224, 32, arg2) >> 32
                        call arg1 with:
                           funct uint32(stor111)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor111):
                                revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
            else:
                if eth.balance(this.address) <= 0:
                    revert with 0, 'NOT_ENOUGH_FUNDS'
                emit Withdrawal(eth.balance(this.address), msg.sender, arg1, address(beneficiaryAddress));
                if eth.balance(this.address):
                    if not arg1:
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 'Address: insufficient balance'
                        call address(beneficiaryAddress) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            58,
                                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                            mem[222 len 6]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                            mem[ceil32(return_data.size) + 223 len 6]
                        ('bool', 'ext_call.success')
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor111), uint32(stor111), Mask(224, 32, eth.balance(this.address)) >> 32
                        call arg1 with:
                           funct uint32(stor111)
                             gas gas_remaining wei
                            args Mask(224, 32, eth.balance(this.address)) << 224, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor111):
                                revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not arg2:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'NOT_ENOUGH_FUNDS'
            emit Withdrawal(ext_call.return_data[0], msg.sender, arg1, address(beneficiaryAddress));
            if ext_call.return_data[0]:
                if not arg1:
                    if eth.balance(this.address) < ext_call.return_data[0]:
                        revert with 0, 'Address: insufficient balance'
                    call address(beneficiaryAddress) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining wei
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        58,
                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                        mem[222 len 6]
                    else:
                        if not ext_call.success:
                            revert with 0, 
                                        32,
                                        58,
                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                        mem[ceil32(return_data.size) + 223 len 6]
                    ('bool', 'ext_call.success')
                else:
                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    if not ext_code.hash(arg1):
                        revert with 0, 'SafeERC20: call to non-contract'
                    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor111), uint32(stor111), ext_call.return_data[0 len 28]
                    call arg1 with:
                       funct uint32(stor111)
                         gas gas_remaining wei
                        args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
                    if not return_data.size:
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if not unknown_0xa9059cbb(?????), Mask(224, 0, stor111):
                            revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                    else:
                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        if not ext_call.success:
                            revert with 0, 'SafeERC20: low-level call failed'
                        if return_data.size:
                            require return_data.size >= 32
                            if not mem[228]:
                                revert with 0, 
                                            32,
                                            42,
                                            0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                            mem[ceil32(return_data.size) + 307 len 22]
        else:
            if arg2 <= ext_call.return_data[0]:
                emit Withdrawal(arg2, msg.sender, arg1, address(beneficiaryAddress));
                if arg2:
                    if not arg1:
                        if eth.balance(this.address) < arg2:
                            revert with 0, 'Address: insufficient balance'
                        call address(beneficiaryAddress) with:
                           value arg2 wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            58,
                                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                            mem[222 len 6]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                            mem[ceil32(return_data.size) + 223 len 6]
                        ('bool', 'ext_call.success')
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor111), uint32(stor111), Mask(224, 32, arg2) >> 32
                        call arg1 with:
                           funct uint32(stor111)
                             gas gas_remaining wei
                            args Mask(224, 32, arg2) << 224, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor111):
                                revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
            else:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'NOT_ENOUGH_FUNDS'
                emit Withdrawal(ext_call.return_data[0], msg.sender, arg1, address(beneficiaryAddress));
                if ext_call.return_data[0]:
                    if not arg1:
                        if eth.balance(this.address) < ext_call.return_data[0]:
                            revert with 0, 'Address: insufficient balance'
                        call address(beneficiaryAddress) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            58,
                                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                            mem[222 len 6]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                            mem[ceil32(return_data.size) + 223 len 6]
                        ('bool', 'ext_call.success')
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(arg1):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, stor111), uint32(stor111), ext_call.return_data[0 len 28]
                        call arg1 with:
                           funct uint32(stor111)
                             gas gas_remaining wei
                            args Mask(480, -256, ext_call.return_data[0 len 28]) << 256, mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, stor111):
                                revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
}

function tokenURI(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[96] = 16
    mem[128] = 0x3031323334353637383961626364656600000000000000000000000000000000
    mem[160] = 42
    mem[192 len 42] = code.data[23322 len 42]
    mem[192 len 8] = Mask(8, -(2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) + 256, 0) << (2713877091499598330239944961141122840311015265600950719674787125185463975936, 0) - 256
    mem[193 len 8] = Mask(8, -(6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) + 256, 0) << (6784692728748995825599862402852807100777538164002376799186967812963659939840, 0) - 256
    idx = 0
    while idx < 20:
        require idx + 12 < 32
        require (2 * idx) + 2 < 42
        mem[(2 * idx) + 194 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        require idx + 12 < 32
        require Mask(4, -(('mask_shl', 160, 0, -3, 'address'), 0) + 256, idx + 12) << (('mask_shl', 160, 0, -3, 'address'), 0) - 256 < 16
        require (2 * idx) + 3 < 42
        mem[(2 * idx) + 195 len 8] = Mask(8, -(0, 0) + 256, 0) << (0, 0) - 256
        idx = idx + 1
        continue 
    if not arg1:
        mem[256] = 0
        if stor122.length:
            if 31 < stor122.length:
                mem[320] = uint256(stor122.field_0)
                idx = 320
                s = 0
                while stor122.length + 288 > idx:
                    mem[idx + 32] = stor122[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor122.length) + 320] = 0
                mem[ceil32(stor122.length) + 416 len floor32(stor122.length)] = mem[320 len floor32(stor122.length)]
                mem[ceil32(stor122.length) + floor32(stor122.length) + 416] = 256^(-stor122.length % 32 + 32) - 1 and mem[ceil32(stor122.length) + floor32(stor122.length) + 416] or mem[floor32(stor122.length) + 320] and !(256^(-stor122.length % 32 + 32) - 1)
                mem[ceil32(stor122.length) + stor122.length + 416 len 0] = None
                var28001 = ceil32(stor122.length) + 384
                var28002 = ceil32(stor122.length) + stor122.length + 416
                mem[ceil32(stor122.length) + stor122.length + 416 len 0] = None
                mem[ceil32(stor122.length) + stor122.length + 416 len 0] = None
                mem[ceil32(stor122.length) + stor122.length + 448 len 0] = None
            else:
                mem[320] = 256 * stor122.length.field_8
                mem[ceil32(stor122.length) + 320] = 0
                mem[ceil32(stor122.length) + 416 len floor32(stor122.length)] = mem[320 len floor32(stor122.length)]
                var22001 = floor32(stor122.length) + 320
                var22002 = ceil32(stor122.length) + floor32(stor122.length) + 416
                mem[ceil32(stor122.length) + floor32(stor122.length) + 416] = 256^(-stor122.length % 32 + 32) - 1 and mem[ceil32(stor122.length) + floor32(stor122.length) + 416] or mem[floor32(stor122.length) + 320] and !(256^(-stor122.length % 32 + 32) - 1)
                mem[ceil32(stor122.length) + stor122.length + 416 len 0] = None
                mem[ceil32(stor122.length) + stor122.length + 416 len 0] = None
                var28001 = ceil32(stor122.length) + 352
                var28002 = ceil32(stor122.length) + stor122.length + 416
                mem[ceil32(stor122.length) + stor122.length + 416 len 0] = None
            mem[ceil32(stor122.length) + stor122.length + 416] = 32
            mem[ceil32(stor122.length) + stor122.length + 448] = mem[ceil32(stor122.length) + 384]
            mem[ceil32(stor122.length) + stor122.length + 480 len ceil32(mem[ceil32(stor122.length) + 384])] = mem[ceil32(stor122.length) + 416 len ceil32(mem[ceil32(stor122.length) + 384])]
            if not mem[ceil32(stor122.length) + 384] % 32:
                return 32, mem[ceil32(stor122.length) + stor122.length + 448 len mem[ceil32(stor122.length) + 384] + 32]
            mem[floor32(mem[ceil32(stor122.length) + 384]) + ceil32(stor122.length) + stor122.length + 480] = mem[floor32(mem[ceil32(stor122.length) + 384]) + ceil32(stor122.length) + stor122.length + -(mem[ceil32(stor122.length) + 384] % 32) + 512 len mem[ceil32(stor122.length) + 384] % 32]
            return Array(len=mem[ceil32(stor122.length) + 384], data=mem[ceil32(stor122.length) + stor122.length + 480 len floor32(mem[ceil32(stor122.length) + 384]) + 32]), 
        mem[288] = 0xa998e9fb00000000000000000000000000000000000000000000000000000000
        require ext_code.size(unlockProtocolAddress)
        staticcall unlockProtocolAddress.globalBaseTokenURI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[288 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _26 = mem[288]
        require mem[288] <= 4294967296
        require mem[288] + 32 <= return_data.size
        require return_data.size >= mem[mem[288] + 288] + mem[288] + 32 and mem[mem[288] + 288] <= 4294967296
        mem[ceil32(return_data.size) + 288] = mem[mem[288] + 288]
        _36 = mem[_26 + 288]
        mem[ceil32(return_data.size) + 320 len ceil32(mem[_26 + 288])] = mem[_26 + 320 len ceil32(mem[_26 + 288])]
        var23001 = ceil32(_36)
        if _36 % 32:
            mem[floor32(_36) + ceil32(return_data.size) + 320] = mem[floor32(_36) + ceil32(return_data.size) + -(_36 % 32) + 352 len _36 % 32]
            mem[64] = floor32(_36) + ceil32(return_data.size) + 416
            mem[floor32(_36) + ceil32(return_data.size) + 352] = 1
            mem[floor32(_36) + ceil32(return_data.size) + 384] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            mem[floor32(_36) + ceil32(return_data.size) + 448 len floor32(mem[ceil32(return_data.size) + 288])] = mem[ceil32(return_data.size) + 320 len floor32(mem[ceil32(return_data.size) + 288])]
            mem[floor32(_36) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 288]) + 448] = 256^(-(mem[ceil32(return_data.size) + 288] % 32) + 32) - 1 and mem[floor32(_36) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 288]) + 448] or mem[ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 288]) + 320] and !(256^(-(mem[ceil32(return_data.size) + 288] % 32) + 32) - 1)
            mem[floor32(_36) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 448] = 0, mem[193 len 31]
            mem[floor32(_36) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 480 len 10] = mem[224 len 10]
            mem[floor32(_36) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 490 len 0] = None
            mem[floor32(_36) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 490 len 1] = 47
            mem[floor32(_36) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 491 len 0] = None
            mem[64] = floor32(_36) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 491
            mem[floor32(_36) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 491] = 32
            mem[floor32(_36) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 523] = mem[floor32(_36) + ceil32(return_data.size) + 416]
            mem[floor32(_36) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 555 len ceil32(mem[floor32(_36) + ceil32(return_data.size) + 416])] = mem[floor32(_36) + ceil32(return_data.size) + 448 len ceil32(mem[floor32(_36) + ceil32(return_data.size) + 416])]
            if not mem[floor32(_36) + ceil32(return_data.size) + 416] % 32:
                return 32, mem[floor32(_36) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 523 len mem[floor32(_36) + ceil32(return_data.size) + 416] + 32], 
            mem[floor32(mem[floor32(_36) + ceil32(return_data.size) + 416]) + floor32(_36) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 555] = mem[floor32(mem[floor32(_36) + ceil32(return_data.size) + 416]) + floor32(_36) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + -(mem[floor32(_36) + ceil32(return_data.size) + 416] % 32) + 587 len mem[floor32(_36) + ceil32(return_data.size) + 416] % 32]
            return Array(len=mem[floor32(_36) + ceil32(return_data.size) + 416], data=mem[floor32(_36) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 555 len floor32(mem[floor32(_36) + ceil32(return_data.size) + 416]) + 32]), 
        mem[64] = _36 + ceil32(return_data.size) + 384
        mem[_36 + ceil32(return_data.size) + 320] = 1
        mem[_36 + ceil32(return_data.size) + 352] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        mem[_36 + ceil32(return_data.size) + 416 len floor32(mem[ceil32(return_data.size) + 288])] = mem[ceil32(return_data.size) + 320 len floor32(mem[ceil32(return_data.size) + 288])]
        var29001 = ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 288]) + 320
        var29002 = _36 + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 288]) + 416
        mem[_36 + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 288]) + 416] = 256^(-(mem[ceil32(return_data.size) + 288] % 32) + 32) - 1 and mem[_36 + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 288]) + 416] or mem[ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 288]) + 320] and !(256^(-(mem[ceil32(return_data.size) + 288] % 32) + 32) - 1)
        mem[_36 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 416] = 0, mem[193 len 31]
        mem[_36 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 448 len 10] = mem[224 len 10]
        mem[_36 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 458 len 0] = None
        mem[_36 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 458 len 1] = 47
        mem[_36 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 459 len 0] = None
        mem[64] = _36 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 459
        mem[_36 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 459] = 32
        mem[_36 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 491] = mem[_36 + ceil32(return_data.size) + 384]
        mem[_36 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 523 len ceil32(mem[_36 + ceil32(return_data.size) + 384])] = mem[_36 + ceil32(return_data.size) + 416 len ceil32(mem[_36 + ceil32(return_data.size) + 384])]
        if not mem[_36 + ceil32(return_data.size) + 384] % 32:
            return 32, mem[_36 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 491 len mem[_36 + ceil32(return_data.size) + 384] + 32], 
        mem[floor32(mem[_36 + ceil32(return_data.size) + 384]) + _36 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 523] = mem[floor32(mem[_36 + ceil32(return_data.size) + 384]) + _36 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + -(mem[_36 + ceil32(return_data.size) + 384] % 32) + 555 len mem[_36 + ceil32(return_data.size) + 384] % 32]
        return Array(len=mem[_36 + ceil32(return_data.size) + 384], data=mem[_36 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 288] + 523 len floor32(mem[_36 + ceil32(return_data.size) + 384]) + 32]), 
    if not arg1:
        mem[256] = 1
        mem[288] = 0x3000000000000000000000000000000000000000000000000000000000000000
        if stor122.length:
            if 31 < stor122.length:
                mem[352] = uint256(stor122.field_0)
                idx = 352
                s = 0
                while stor122.length + 320 > idx:
                    mem[idx + 32] = stor122[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[ceil32(stor122.length) + 352] = 0
                mem[ceil32(stor122.length) + 448 len floor32(stor122.length)] = mem[352 len floor32(stor122.length)]
                var29001 = floor32(stor122.length) + 352
                var29002 = ceil32(stor122.length) + floor32(stor122.length) + 448
                mem[ceil32(stor122.length) + floor32(stor122.length) + 448] = 256^(-stor122.length % 32 + 32) - 1 and mem[ceil32(stor122.length) + floor32(stor122.length) + 448] or mem[floor32(stor122.length) + 352] and !(256^(-stor122.length % 32 + 32) - 1)
                mem[ceil32(stor122.length) + stor122.length + 448 len 0] = None
                mem[ceil32(stor122.length) + stor122.length + 448 len 0] = None
                mem[ceil32(stor122.length) + stor122.length + 448 len 0] = None
            else:
                mem[352] = 256 * stor122.length.field_8
                mem[ceil32(stor122.length) + 352] = 0
                mem[ceil32(stor122.length) + 448 len floor32(stor122.length)] = mem[352 len floor32(stor122.length)]
                mem[ceil32(stor122.length) + floor32(stor122.length) + 448] = 256^(-stor122.length % 32 + 32) - 1 and mem[ceil32(stor122.length) + floor32(stor122.length) + 448] or mem[floor32(stor122.length) + 352] and !(256^(-stor122.length % 32 + 32) - 1)
                mem[ceil32(stor122.length) + stor122.length + 448 len 0] = None
                var29001 = ceil32(stor122.length) + 416
                var29002 = ceil32(stor122.length) + stor122.length + 448
                mem[ceil32(stor122.length) + stor122.length + 448 len 0] = None
                mem[ceil32(stor122.length) + stor122.length + 448 len 0] = None
                mem[ceil32(stor122.length) + stor122.length + 448 len 0] = 0
            mem[ceil32(stor122.length) + stor122.length + 449] = 32
            mem[ceil32(stor122.length) + stor122.length + 481] = mem[ceil32(stor122.length) + 416]
            mem[ceil32(stor122.length) + stor122.length + 513 len ceil32(mem[ceil32(stor122.length) + 416])] = mem[ceil32(stor122.length) + 448 len ceil32(mem[ceil32(stor122.length) + 416])]
            if not mem[ceil32(stor122.length) + 416] % 32:
                return 32, mem[ceil32(stor122.length) + stor122.length + 481 len mem[ceil32(stor122.length) + 416] + 32]
            mem[floor32(mem[ceil32(stor122.length) + 416]) + ceil32(stor122.length) + stor122.length + 513] = mem[floor32(mem[ceil32(stor122.length) + 416]) + ceil32(stor122.length) + stor122.length + -(mem[ceil32(stor122.length) + 416] % 32) + 545 len mem[ceil32(stor122.length) + 416] % 32]
            return Array(len=mem[ceil32(stor122.length) + 416], data=mem[ceil32(stor122.length) + stor122.length + 513 len floor32(mem[ceil32(stor122.length) + 416]) + 32]), 
        mem[320] = 0xa998e9fb00000000000000000000000000000000000000000000000000000000
        require ext_code.size(unlockProtocolAddress)
        staticcall unlockProtocolAddress.globalBaseTokenURI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[320 len return_data.size] = ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        _47 = mem[320]
        require mem[320] <= 4294967296
        require mem[320] + 32 <= return_data.size
        require return_data.size >= mem[mem[320] + 320] + mem[320] + 32 and mem[mem[320] + 320] <= 4294967296
        mem[ceil32(return_data.size) + 320] = mem[mem[320] + 320]
        _64 = mem[_47 + 320]
        mem[ceil32(return_data.size) + 352 len ceil32(mem[_47 + 320])] = mem[_47 + 352 len ceil32(mem[_47 + 320])]
        if not _64 % 32:
            mem[_64 + ceil32(return_data.size) + 352] = 1
            mem[_64 + ceil32(return_data.size) + 384] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            mem[_64 + ceil32(return_data.size) + 448 len floor32(mem[ceil32(return_data.size) + 320])] = mem[ceil32(return_data.size) + 352 len floor32(mem[ceil32(return_data.size) + 320])]
            mem[_64 + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 320]) + 448] = 256^(-(mem[ceil32(return_data.size) + 320] % 32) + 32) - 1 and mem[_64 + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 320]) + 448] or mem[ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 320]) + 352] and !(256^(-(mem[ceil32(return_data.size) + 320] % 32) + 32) - 1)
            mem[_64 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 448] = 0, mem[193 len 31]
            mem[_64 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 480 len 10] = mem[224 len 10]
            mem[_64 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 490 len 0] = None
            mem[_64 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 490 len 1] = 47
            mem[_64 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 491 len 0] = None
            mem[_64 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 491 len 0] = 0
            mem[64] = _64 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 492
            mem[_64 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 492] = 32
            mem[_64 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 524] = mem[_64 + ceil32(return_data.size) + 416]
            mem[_64 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 556 len ceil32(mem[_64 + ceil32(return_data.size) + 416])] = mem[_64 + ceil32(return_data.size) + 448 len ceil32(mem[_64 + ceil32(return_data.size) + 416])]
            if not mem[_64 + ceil32(return_data.size) + 416] % 32:
                return 32, mem[_64 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 524 len mem[_64 + ceil32(return_data.size) + 416] + 32], 
            mem[floor32(mem[_64 + ceil32(return_data.size) + 416]) + _64 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 556] = mem[floor32(mem[_64 + ceil32(return_data.size) + 416]) + _64 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + -(mem[_64 + ceil32(return_data.size) + 416] % 32) + 588 len mem[_64 + ceil32(return_data.size) + 416] % 32]
            return memory
              from mem[64]
               len floor32(mem[_64 + ceil32(return_data.size) + 416]) + _64 + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + -mem[64] + 588
        mem[floor32(_64) + ceil32(return_data.size) + 352] = mem[floor32(_64) + ceil32(return_data.size) + -(_64 % 32) + 384 len _64 % 32]
        mem[floor32(_64) + ceil32(return_data.size) + 384] = 1
        mem[floor32(_64) + ceil32(return_data.size) + 416] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        mem[floor32(_64) + ceil32(return_data.size) + 480 len floor32(mem[ceil32(return_data.size) + 320])] = mem[ceil32(return_data.size) + 352 len floor32(mem[ceil32(return_data.size) + 320])]
        mem[floor32(_64) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 320]) + 480] = 256^(-(mem[ceil32(return_data.size) + 320] % 32) + 32) - 1 and mem[floor32(_64) + ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 320]) + 480] or mem[ceil32(return_data.size) + floor32(mem[ceil32(return_data.size) + 320]) + 352] and !(256^(-(mem[ceil32(return_data.size) + 320] % 32) + 32) - 1)
        mem[floor32(_64) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 480] = 0, mem[193 len 31]
        mem[floor32(_64) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 512 len 10] = mem[224 len 10]
        mem[floor32(_64) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 522 len 0] = None
        mem[floor32(_64) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 522 len 1] = 47
        mem[floor32(_64) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 523 len 0] = None
        mem[floor32(_64) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 523 len 0] = 0
        mem[64] = floor32(_64) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 524
        mem[floor32(_64) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 524] = 32
        mem[floor32(_64) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 556] = mem[floor32(_64) + ceil32(return_data.size) + 448]
        mem[floor32(_64) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 588 len ceil32(mem[floor32(_64) + ceil32(return_data.size) + 448])] = mem[floor32(_64) + ceil32(return_data.size) + 480 len ceil32(mem[floor32(_64) + ceil32(return_data.size) + 448])]
        if not mem[floor32(_64) + ceil32(return_data.size) + 448] % 32:
            return 32, mem[floor32(_64) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 556 len mem[floor32(_64) + ceil32(return_data.size) + 448] + 32], 
        mem[floor32(mem[floor32(_64) + ceil32(return_data.size) + 448]) + floor32(_64) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 588] = mem[floor32(mem[floor32(_64) + ceil32(return_data.size) + 448]) + floor32(_64) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + -(mem[floor32(_64) + ceil32(return_data.size) + 448] % 32) + 620 len mem[floor32(_64) + ceil32(return_data.size) + 448] % 32]
        return Array(len=mem[floor32(_64) + ceil32(return_data.size) + 448], data=mem[floor32(_64) + ceil32(return_data.size) + mem[ceil32(return_data.size) + 320] + 588 len floor32(mem[floor32(_64) + ceil32(return_data.size) + 448]) + 32]), 
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 10
        continue 
    mem[256] = s
    mem[64] = ceil32(s) + 288
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[256]
            mem[t + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
            t = t - 1
            idx = idx / 10
            continue 
        if stor122.length:
            _752 = mem[64]
            mem[64] = mem[64] + ceil32(stor122.length) + 32
            mem[_752] = stor122.length
            if 31 >= stor122.length:
                mem[_752 + 32] = 256 * stor122.length.field_8
                _809 = mem[64]
                mem[64] = mem[64] + 32
                mem[_809] = 0
                _810 = mem[64]
                mem[64] = mem[64] + 32
                mem[_810] = 0
                _844 = mem[64]
                mem[mem[64] + 32 len floor32(stor122.length)] = mem[_752 + 32 len floor32(stor122.length)]
                mem[mem[64] + floor32(stor122.length) + 32] = 256^(-stor122.length % 32 + 32) - 1 and mem[mem[64] + floor32(stor122.length) + 32] or mem[_752 + floor32(stor122.length) + 32] and !(256^(-stor122.length % 32 + 32) - 1)
                mem[mem[64] + stor122.length + 32 len 0] = None
                mem[mem[64] + stor122.length + 32 len 0] = None
                _1749 = mem[256]
                mem[mem[64] + stor122.length + 32 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
                mem[mem[64] + stor122.length + floor32(mem[256]) + -(mem[256] % 32) + 64 len mem[256] % 32] = mem[floor32(mem[256]) + -(mem[256] % 32) + 320 len mem[256] % 32]
                _1957 = mem[64]
                mem[64] = _1749 + mem[64] + stor122.length + 32
                mem[_1749 + _844 + stor122.length + 32] = 32
                mem[_1749 + _844 + stor122.length + 64] = mem[_1957]
                _2007 = mem[_1957]
                mem[_1749 + _844 + stor122.length + 96 len ceil32(mem[_1957])] = mem[_1957 + 32 len ceil32(mem[_1957])]
                if not _2007 % 32:
                    return 32, mem[_1749 + _844 + stor122.length + 64 len _2007 + 32]
                mem[floor32(_2007) + _1749 + _844 + stor122.length + 96] = mem[floor32(_2007) + _1749 + _844 + stor122.length + -(_2007 % 32) + 128 len _2007 % 32]
                return 32, mem[_1749 + _844 + stor122.length + 64 len floor32(_2007) + 64]
            mem[0] = 122
            mem[_752 + 32] = uint256(stor122.field_0)
            idx = _752 + 32
            s = 0
            while _752 + stor122.length > idx:
                mem[idx + 32] = stor122[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            _1136 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1136] = 0
            _1137 = mem[64]
            mem[64] = mem[64] + 32
            mem[_1137] = 0
            _1182 = mem[64]
            mem[mem[64] + 32 len floor32(stor122.length)] = mem[_752 + 32 len floor32(stor122.length)]
            mem[mem[64] + floor32(stor122.length) + 32] = 256^(-stor122.length % 32 + 32) - 1 and mem[mem[64] + floor32(stor122.length) + 32] or mem[_752 + floor32(stor122.length) + 32] and !(256^(-stor122.length % 32 + 32) - 1)
            mem[mem[64] + stor122.length + 32 len 0] = None
            mem[mem[64] + stor122.length + 32 len 0] = None
            _1953 = mem[256]
            mem[mem[64] + stor122.length + 32 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
            mem[mem[64] + stor122.length + floor32(mem[256]) + -(mem[256] % 32) + 64 len mem[256] % 32] = mem[floor32(mem[256]) + -(mem[256] % 32) + 320 len mem[256] % 32]
            _2086 = mem[64]
            mem[64] = _1953 + mem[64] + stor122.length + 32
            mem[_1953 + _1182 + stor122.length + 32] = 32
            mem[_1953 + _1182 + stor122.length + 64] = mem[_2086]
            _2116 = mem[_2086]
            mem[_1953 + _1182 + stor122.length + 96 len ceil32(mem[_2086])] = mem[_2086 + 32 len ceil32(mem[_2086])]
            if not _2116 % 32:
                return 32, mem[_1953 + _1182 + stor122.length + 64 len _2116 + 32]
            mem[floor32(_2116) + _1953 + _1182 + stor122.length + 96] = mem[floor32(_2116) + _1953 + _1182 + stor122.length + -(_2116 % 32) + 128 len _2116 % 32]
            return 32, mem[_1953 + _1182 + stor122.length + 64 len floor32(_2116) + 64]
        mem[mem[64]] = 0xa998e9fb00000000000000000000000000000000000000000000000000000000
        require ext_code.size(unlockProtocolAddress)
        staticcall unlockProtocolAddress.globalBaseTokenURI() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        _791 = mem[64]
        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _811 = mem[_791]
        require mem[_791] <= 4294967296
        require mem[_791] + 32 <= return_data.size
        require return_data.size >= mem[_791 + mem[_791]] + mem[_791] + 32 and mem[_791 + mem[_791]] <= 4294967296
        mem[_791 + ceil32(return_data.size)] = mem[_791 + mem[_791]]
        _864 = mem[_791 + _811]
        mem[_791 + ceil32(return_data.size) + 32 len ceil32(mem[_791 + _811])] = mem[_791 + _811 + 32 len ceil32(mem[_791 + _811])]
        if not _864 % 32:
            mem[64] = _864 + _791 + ceil32(return_data.size) + 96
            mem[_864 + _791 + ceil32(return_data.size) + 32] = 1
            mem[_864 + _791 + ceil32(return_data.size) + 64] = 0x2f00000000000000000000000000000000000000000000000000000000000000
            _1185 = mem[_791 + ceil32(return_data.size)]
            mem[_864 + _791 + ceil32(return_data.size) + 128 len floor32(mem[_791 + ceil32(return_data.size)])] = mem[_791 + ceil32(return_data.size) + 32 len floor32(mem[_791 + ceil32(return_data.size)])]
            mem[_864 + _791 + ceil32(return_data.size) + floor32(mem[_791 + ceil32(return_data.size)]) + 128] = 256^(-(mem[_791 + ceil32(return_data.size)] % 32) + 32) - 1 and mem[_864 + _791 + ceil32(return_data.size) + floor32(mem[_791 + ceil32(return_data.size)]) + 128] or mem[_791 + ceil32(return_data.size) + floor32(mem[_791 + ceil32(return_data.size)]) + 32] and !(256^(-(mem[_791 + ceil32(return_data.size)] % 32) + 32) - 1)
            _1468 = mem[160]
            mem[_864 + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + 128 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
            mem[_864 + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + floor32(mem[160]) + 128] = 256^(-(mem[160] % 32) + 32) - 1 and mem[_864 + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + floor32(mem[160]) + 128] or mem[floor32(mem[160]) + 192] and !(256^(-(mem[160] % 32) + 32) - 1)
            mem[_864 + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + _1468 + 128 len 0] = None
            mem[_864 + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + _1468 + 128 len 1] = 47
            _1961 = mem[256]
            mem[_864 + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + _1468 + 129 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
            mem[_864 + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + _1468 + floor32(mem[256]) + -(mem[256] % 32) + 161 len mem[256] % 32] = mem[floor32(mem[256]) + -(mem[256] % 32) + 320 len mem[256] % 32]
            mem[64] = _1961 + _864 + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + _1468 + 129
            mem[_1961 + _864 + _791 + ceil32(return_data.size) + _1185 + _1468 + 129] = 32
            mem[_1961 + _864 + _791 + ceil32(return_data.size) + _1185 + _1468 + 161] = mem[_864 + _791 + ceil32(return_data.size) + 96]
            mem[_1961 + _864 + _791 + ceil32(return_data.size) + _1185 + _1468 + 193 len ceil32(mem[_864 + _791 + ceil32(return_data.size) + 96])] = mem[_864 + _791 + ceil32(return_data.size) + 128 len ceil32(mem[_864 + _791 + ceil32(return_data.size) + 96])]
            if not mem[_864 + _791 + ceil32(return_data.size) + 96] % 32:
                return 32, mem[_1961 + _864 + _791 + ceil32(return_data.size) + _1185 + _1468 + 161 len mem[_864 + _791 + ceil32(return_data.size) + 96] + 32], 
            mem[floor32(mem[_864 + _791 + ceil32(return_data.size) + 96]) + _1961 + _864 + _791 + ceil32(return_data.size) + _1185 + _1468 + 193] = mem[floor32(mem[_864 + _791 + ceil32(return_data.size) + 96]) + _1961 + _864 + _791 + ceil32(return_data.size) + _1185 + _1468 + -(mem[_864 + _791 + ceil32(return_data.size) + 96] % 32) + 225 len mem[_864 + _791 + ceil32(return_data.size) + 96] % 32]
            return Array(len=mem[_864 + _791 + ceil32(return_data.size) + 96], data=mem[_1961 + _864 + _791 + ceil32(return_data.size) + _1185 + _1468 + 193 len floor32(mem[_864 + _791 + ceil32(return_data.size) + 96]) + 32]), 
        mem[floor32(_864) + _791 + ceil32(return_data.size) + 32] = mem[floor32(_864) + _791 + ceil32(return_data.size) + -(_864 % 32) + 64 len _864 % 32]
        mem[64] = floor32(_864) + _791 + ceil32(return_data.size) + 128
        mem[floor32(_864) + _791 + ceil32(return_data.size) + 64] = 1
        mem[floor32(_864) + _791 + ceil32(return_data.size) + 96] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        _1210 = mem[_791 + ceil32(return_data.size)]
        mem[floor32(_864) + _791 + ceil32(return_data.size) + 160 len floor32(mem[_791 + ceil32(return_data.size)])] = mem[_791 + ceil32(return_data.size) + 32 len floor32(mem[_791 + ceil32(return_data.size)])]
        mem[floor32(_864) + _791 + ceil32(return_data.size) + floor32(mem[_791 + ceil32(return_data.size)]) + 160] = 256^(-(mem[_791 + ceil32(return_data.size)] % 32) + 32) - 1 and mem[floor32(_864) + _791 + ceil32(return_data.size) + floor32(mem[_791 + ceil32(return_data.size)]) + 160] or mem[_791 + ceil32(return_data.size) + floor32(mem[_791 + ceil32(return_data.size)]) + 32] and !(256^(-(mem[_791 + ceil32(return_data.size)] % 32) + 32) - 1)
        _1472 = mem[160]
        mem[floor32(_864) + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
        mem[floor32(_864) + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + floor32(mem[160]) + 160] = 256^(-(mem[160] % 32) + 32) - 1 and mem[floor32(_864) + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + floor32(mem[160]) + 160] or mem[floor32(mem[160]) + 192] and !(256^(-(mem[160] % 32) + 32) - 1)
        mem[floor32(_864) + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + _1472 + 160 len 0] = None
        mem[floor32(_864) + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + _1472 + 160 len 1] = 47
        _1965 = mem[256]
        mem[floor32(_864) + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + _1472 + 161 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
        mem[floor32(_864) + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + _1472 + floor32(mem[256]) + -(mem[256] % 32) + 193 len mem[256] % 32] = mem[floor32(mem[256]) + -(mem[256] % 32) + 320 len mem[256] % 32]
        mem[64] = _1965 + floor32(_864) + _791 + ceil32(return_data.size) + mem[_791 + ceil32(return_data.size)] + _1472 + 161
        mem[_1965 + floor32(_864) + _791 + ceil32(return_data.size) + _1210 + _1472 + 161] = 32
        mem[_1965 + floor32(_864) + _791 + ceil32(return_data.size) + _1210 + _1472 + 193] = mem[floor32(_864) + _791 + ceil32(return_data.size) + 128]
        mem[_1965 + floor32(_864) + _791 + ceil32(return_data.size) + _1210 + _1472 + 225 len ceil32(mem[floor32(_864) + _791 + ceil32(return_data.size) + 128])] = mem[floor32(_864) + _791 + ceil32(return_data.size) + 160 len ceil32(mem[floor32(_864) + _791 + ceil32(return_data.size) + 128])]
        if not mem[floor32(_864) + _791 + ceil32(return_data.size) + 128] % 32:
            return 32, mem[_1965 + floor32(_864) + _791 + ceil32(return_data.size) + _1210 + _1472 + 193 len mem[floor32(_864) + _791 + ceil32(return_data.size) + 128] + 32], 
        mem[floor32(mem[floor32(_864) + _791 + ceil32(return_data.size) + 128]) + _1965 + floor32(_864) + _791 + ceil32(return_data.size) + _1210 + _1472 + 225] = mem[floor32(mem[floor32(_864) + _791 + ceil32(return_data.size) + 128]) + _1965 + floor32(_864) + _791 + ceil32(return_data.size) + _1210 + _1472 + -(mem[floor32(_864) + _791 + ceil32(return_data.size) + 128] % 32) + 257 len mem[floor32(_864) + _791 + ceil32(return_data.size) + 128] % 32]
        return Array(len=mem[floor32(_864) + _791 + ceil32(return_data.size) + 128], data=mem[_1965 + floor32(_864) + _791 + ceil32(return_data.size) + _1210 + _1472 + 225 len floor32(mem[floor32(_864) + _791 + ceil32(return_data.size) + 128]) + 32]), 
    mem[288 len s] = code.data[23322 len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[256]
        mem[t + 288 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mod', ('var', 0), 10))), 0) - 256
        t = t - 1
        idx = idx / 10
        continue 
    if stor122.length:
        _755 = mem[64]
        mem[64] = mem[64] + ceil32(stor122.length) + 32
        mem[_755] = stor122.length
        if 31 >= stor122.length:
            mem[_755 + 32] = 256 * stor122.length.field_8
            _813 = mem[64]
            mem[64] = mem[64] + 32
            mem[_813] = 0
            _814 = mem[64]
            mem[64] = mem[64] + 32
            mem[_814] = 0
            _849 = mem[64]
            mem[mem[64] + 32 len floor32(stor122.length)] = mem[_755 + 32 len floor32(stor122.length)]
            mem[mem[64] + floor32(stor122.length) + 32] = 256^(-stor122.length % 32 + 32) - 1 and mem[mem[64] + floor32(stor122.length) + 32] or mem[_755 + floor32(stor122.length) + 32] and !(256^(-stor122.length % 32 + 32) - 1)
            mem[mem[64] + stor122.length + 32 len 0] = None
            mem[mem[64] + stor122.length + 32 len 0] = None
            _1765 = mem[256]
            mem[mem[64] + stor122.length + 32 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
            mem[mem[64] + stor122.length + floor32(mem[256]) + -(mem[256] % 32) + 64 len mem[256] % 32] = mem[floor32(mem[256]) + -(mem[256] % 32) + 320 len mem[256] % 32]
            _1973 = mem[64]
            mem[64] = _1765 + mem[64] + stor122.length + 32
            mem[_1765 + _849 + stor122.length + 32] = 32
            mem[_1765 + _849 + stor122.length + 64] = mem[_1973]
            _2022 = mem[_1973]
            mem[_1765 + _849 + stor122.length + 96 len ceil32(mem[_1973])] = mem[_1973 + 32 len ceil32(mem[_1973])]
            if not _2022 % 32:
                return 32, mem[_1765 + _849 + stor122.length + 64 len _2022 + 32]
            mem[floor32(_2022) + _1765 + _849 + stor122.length + 96] = mem[floor32(_2022) + _1765 + _849 + stor122.length + -(_2022 % 32) + 128 len _2022 % 32]
            return 32, mem[_1765 + _849 + stor122.length + 64 len floor32(_2022) + 64]
        mem[0] = 122
        mem[_755 + 32] = uint256(stor122.field_0)
        idx = _755 + 32
        s = 0
        while _755 + stor122.length > idx:
            mem[idx + 32] = stor122[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        _1139 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1139] = 0
        _1140 = mem[64]
        mem[64] = mem[64] + 32
        mem[_1140] = 0
        _1186 = mem[64]
        mem[mem[64] + 32 len floor32(stor122.length)] = mem[_755 + 32 len floor32(stor122.length)]
        mem[mem[64] + floor32(stor122.length) + 32] = 256^(-stor122.length % 32 + 32) - 1 and mem[mem[64] + floor32(stor122.length) + 32] or mem[_755 + floor32(stor122.length) + 32] and !(256^(-stor122.length % 32 + 32) - 1)
        mem[mem[64] + stor122.length + 32 len 0] = None
        mem[mem[64] + stor122.length + 32 len 0] = None
        _1969 = mem[256]
        mem[mem[64] + stor122.length + 32 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
        mem[mem[64] + stor122.length + floor32(mem[256]) + -(mem[256] % 32) + 64 len mem[256] % 32] = mem[floor32(mem[256]) + -(mem[256] % 32) + 320 len mem[256] % 32]
        _2099 = mem[64]
        mem[64] = _1969 + mem[64] + stor122.length + 32
        mem[_1969 + _1186 + stor122.length + 32] = 32
        mem[_1969 + _1186 + stor122.length + 64] = mem[_2099]
        _2126 = mem[_2099]
        mem[_1969 + _1186 + stor122.length + 96 len ceil32(mem[_2099])] = mem[_2099 + 32 len ceil32(mem[_2099])]
        if not _2126 % 32:
            return 32, mem[_1969 + _1186 + stor122.length + 64 len _2126 + 32]
        mem[floor32(_2126) + _1969 + _1186 + stor122.length + 96] = mem[floor32(_2126) + _1969 + _1186 + stor122.length + -(_2126 % 32) + 128 len _2126 % 32]
        return 32, mem[_1969 + _1186 + stor122.length + 64 len floor32(_2126) + 64]
    mem[mem[64]] = 0xa998e9fb00000000000000000000000000000000000000000000000000000000
    require ext_code.size(unlockProtocolAddress)
    staticcall unlockProtocolAddress.globalBaseTokenURI() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    _793 = mem[64]
    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = mem[64] + ceil32(return_data.size)
    require return_data.size >= 32
    _815 = mem[_793]
    require mem[_793] <= 4294967296
    require mem[_793] + 32 <= return_data.size
    require return_data.size >= mem[_793 + mem[_793]] + mem[_793] + 32 and mem[_793 + mem[_793]] <= 4294967296
    mem[_793 + ceil32(return_data.size)] = mem[_793 + mem[_793]]
    _865 = mem[_793 + _815]
    mem[_793 + ceil32(return_data.size) + 32 len ceil32(mem[_793 + _815])] = mem[_793 + _815 + 32 len ceil32(mem[_793 + _815])]
    if not _865 % 32:
        mem[64] = _865 + _793 + ceil32(return_data.size) + 96
        mem[_865 + _793 + ceil32(return_data.size) + 32] = 1
        mem[_865 + _793 + ceil32(return_data.size) + 64] = 0x2f00000000000000000000000000000000000000000000000000000000000000
        _1189 = mem[_793 + ceil32(return_data.size)]
        mem[_865 + _793 + ceil32(return_data.size) + 128 len floor32(mem[_793 + ceil32(return_data.size)])] = mem[_793 + ceil32(return_data.size) + 32 len floor32(mem[_793 + ceil32(return_data.size)])]
        mem[_865 + _793 + ceil32(return_data.size) + floor32(mem[_793 + ceil32(return_data.size)]) + 128] = 256^(-(mem[_793 + ceil32(return_data.size)] % 32) + 32) - 1 and mem[_865 + _793 + ceil32(return_data.size) + floor32(mem[_793 + ceil32(return_data.size)]) + 128] or mem[_793 + ceil32(return_data.size) + floor32(mem[_793 + ceil32(return_data.size)]) + 32] and !(256^(-(mem[_793 + ceil32(return_data.size)] % 32) + 32) - 1)
        _1484 = mem[160]
        mem[_865 + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + 128 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
        mem[_865 + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + floor32(mem[160]) + 128] = 256^(-(mem[160] % 32) + 32) - 1 and mem[_865 + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + floor32(mem[160]) + 128] or mem[floor32(mem[160]) + 192] and !(256^(-(mem[160] % 32) + 32) - 1)
        mem[_865 + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + _1484 + 128 len 0] = None
        mem[_865 + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + _1484 + 128 len 1] = 47
        _1977 = mem[256]
        mem[_865 + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + _1484 + 129 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
        mem[_865 + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + _1484 + floor32(mem[256]) + -(mem[256] % 32) + 161 len mem[256] % 32] = mem[floor32(mem[256]) + -(mem[256] % 32) + 320 len mem[256] % 32]
        mem[64] = _1977 + _865 + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + _1484 + 129
        mem[_1977 + _865 + _793 + ceil32(return_data.size) + _1189 + _1484 + 129] = 32
        mem[_1977 + _865 + _793 + ceil32(return_data.size) + _1189 + _1484 + 161] = mem[_865 + _793 + ceil32(return_data.size) + 96]
        mem[_1977 + _865 + _793 + ceil32(return_data.size) + _1189 + _1484 + 193 len ceil32(mem[_865 + _793 + ceil32(return_data.size) + 96])] = mem[_865 + _793 + ceil32(return_data.size) + 128 len ceil32(mem[_865 + _793 + ceil32(return_data.size) + 96])]
        if not mem[_865 + _793 + ceil32(return_data.size) + 96] % 32:
            return memory
              from mem[64]
               len mem[_865 + _793 + ceil32(return_data.size) + 96] + _1977 + _865 + _793 + ceil32(return_data.size) + _1189 + _1484 + -mem[64] + 193
        mem[floor32(mem[_865 + _793 + ceil32(return_data.size) + 96]) + _1977 + _865 + _793 + ceil32(return_data.size) + _1189 + _1484 + 193] = mem[floor32(mem[_865 + _793 + ceil32(return_data.size) + 96]) + _1977 + _865 + _793 + ceil32(return_data.size) + _1189 + _1484 + -(mem[_865 + _793 + ceil32(return_data.size) + 96] % 32) + 225 len mem[_865 + _793 + ceil32(return_data.size) + 96] % 32]
        return memory
          from mem[64]
           len floor32(mem[_865 + _793 + ceil32(return_data.size) + 96]) + _1977 + _865 + _793 + ceil32(return_data.size) + _1189 + _1484 + -mem[64] + 225
    mem[floor32(_865) + _793 + ceil32(return_data.size) + 32] = mem[floor32(_865) + _793 + ceil32(return_data.size) + -(_865 % 32) + 64 len _865 % 32]
    mem[64] = floor32(_865) + _793 + ceil32(return_data.size) + 128
    mem[floor32(_865) + _793 + ceil32(return_data.size) + 64] = 1
    mem[floor32(_865) + _793 + ceil32(return_data.size) + 96] = 0x2f00000000000000000000000000000000000000000000000000000000000000
    _1216 = mem[_793 + ceil32(return_data.size)]
    mem[floor32(_865) + _793 + ceil32(return_data.size) + 160 len floor32(mem[_793 + ceil32(return_data.size)])] = mem[_793 + ceil32(return_data.size) + 32 len floor32(mem[_793 + ceil32(return_data.size)])]
    mem[floor32(_865) + _793 + ceil32(return_data.size) + floor32(mem[_793 + ceil32(return_data.size)]) + 160] = 256^(-(mem[_793 + ceil32(return_data.size)] % 32) + 32) - 1 and mem[floor32(_865) + _793 + ceil32(return_data.size) + floor32(mem[_793 + ceil32(return_data.size)]) + 160] or mem[_793 + ceil32(return_data.size) + floor32(mem[_793 + ceil32(return_data.size)]) + 32] and !(256^(-(mem[_793 + ceil32(return_data.size)] % 32) + 32) - 1)
    _1488 = mem[160]
    mem[floor32(_865) + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + 160 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
    mem[floor32(_865) + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + floor32(mem[160]) + 160] = 256^(-(mem[160] % 32) + 32) - 1 and mem[floor32(_865) + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + floor32(mem[160]) + 160] or mem[floor32(mem[160]) + 192] and !(256^(-(mem[160] % 32) + 32) - 1)
    mem[floor32(_865) + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + _1488 + 160 len 0] = None
    mem[floor32(_865) + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + _1488 + 160 len 1] = 47
    _1981 = mem[256]
    mem[floor32(_865) + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + _1488 + 161 len floor32(mem[256])] = mem[288 len floor32(mem[256])]
    mem[floor32(_865) + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + _1488 + floor32(mem[256]) + -(mem[256] % 32) + 193 len mem[256] % 32] = mem[floor32(mem[256]) + -(mem[256] % 32) + 320 len mem[256] % 32]
    mem[64] = _1981 + floor32(_865) + _793 + ceil32(return_data.size) + mem[_793 + ceil32(return_data.size)] + _1488 + 161
    mem[_1981 + floor32(_865) + _793 + ceil32(return_data.size) + _1216 + _1488 + 161] = 32
    mem[_1981 + floor32(_865) + _793 + ceil32(return_data.size) + _1216 + _1488 + 193] = mem[floor32(_865) + _793 + ceil32(return_data.size) + 128]
    mem[_1981 + floor32(_865) + _793 + ceil32(return_data.size) + _1216 + _1488 + 225 len ceil32(mem[floor32(_865) + _793 + ceil32(return_data.size) + 128])] = mem[floor32(_865) + _793 + ceil32(return_data.size) + 160 len ceil32(mem[floor32(_865) + _793 + ceil32(return_data.size) + 128])]
    if not mem[floor32(_865) + _793 + ceil32(return_data.size) + 128] % 32:
        return memory
          from mem[64]
           len mem[floor32(_865) + _793 + ceil32(return_data.size) + 128] + _1981 + floor32(_865) + _793 + ceil32(return_data.size) + _1216 + _1488 + -mem[64] + 225
    mem[floor32(mem[floor32(_865) + _793 + ceil32(return_data.size) + 128]) + _1981 + floor32(_865) + _793 + ceil32(return_data.size) + _1216 + _1488 + 225] = mem[floor32(mem[floor32(_865) + _793 + ceil32(return_data.size) + 128]) + _1981 + floor32(_865) + _793 + ceil32(return_data.size) + _1216 + _1488 + -(mem[floor32(_865) + _793 + ceil32(return_data.size) + 128] % 32) + 257 len mem[floor32(_865) + _793 + ceil32(return_data.size) + 128] % 32]
    return memory
      from mem[64]
       len floor32(mem[floor32(_865) + _793 + ceil32(return_data.size) + 128]) + _1981 + floor32(_865) + _793 + ceil32(return_data.size) + _1216 + _1488 + -mem[64] + 257
}

function shareKey(address arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not isAlive:
        revert with 0, 'LOCK_DEPRECATED'
    if keyManagerOf[arg2] != msg.sender:
        if keyManagerOf[arg2]:
            if approved[arg2] != msg.sender:
                if keyManagerOf[stor114[address(stor115[arg2])].field_0]:
                    if not stor119[stor117[stor114[address(stor115[arg2])].field_0]][address(msg.sender)]:
                        revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
                else:
                    if not stor119[address(stor115[arg2])][address(msg.sender)]:
                        revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
        else:
            if address(ownerOf[arg2]) != msg.sender:
                if approved[arg2] != msg.sender:
                    if keyManagerOf[stor114[address(stor115[arg2])].field_0]:
                        if not stor119[stor117[stor114[address(stor115[arg2])].field_0]][address(msg.sender)]:
                            revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
                    else:
                        if not stor119[address(stor115[arg2])][address(msg.sender)]:
                            revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
    if transferFeeBasisPoints >= 10000:
        revert with 0, 'KEY_TRANSFERS_DISABLED'
    if not arg1:
        revert with 0, 'INVALID_ADDRESS'
    if block.timestamp >= tokenIdFor[address(stor115[arg2])].field_256:
        revert with 0, 'KEY_NOT_VALID'
    if block.timestamp >= tokenIdFor[address(stor115[arg2])].field_256:
        if arg3 < arg3:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 < tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp:
            if not address(ownerOf[arg2]):
                revert with 0, 'NON_EXISTENT_KEY'
            if arg3 > tokenIdFor[address(stor115[arg2])].field_256:
                revert with 0, 'SafeMath: subtraction overflow'
            tokenIdFor[address(stor115[arg2])].field_256 -= arg3
            emit 0xe9408df9: arg3, 0, arg2
            if tokenIdFor[arg1].field_0:
                if tokenIdFor[arg1].field_256 <= block.timestamp:
                    if keyManagerOf[stor114[arg1].field_0]:
                        keyManagerOf[stor114[arg1].field_0] = 0
                        if approved[stor114[arg1].field_0]:
                            approved[stor114[arg1].field_0] = 0
                        emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
            else:
                totalSupply++
                tokenIdFor[arg1].field_0 = totalSupply + 1
                if address(ownerOf[stor114[arg1].field_0]) != arg1:
                    owners.length++
                    stor19A0[stor116.length] = arg1
                    address(ownerOf[stor114[arg1].field_0]) = arg1
                emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
            if not address(ownerOf[stor114[arg1].field_0]):
                revert with 0, 'NON_EXISTENT_KEY'
            if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                if arg3 + block.timestamp < block.timestamp:
                    revert with 0, 'SafeMath: addition overflow'
                tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = arg3 + block.timestamp
            else:
                if arg3 + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                    revert with 0, 'SafeMath: addition overflow'
                tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 += arg3
            emit 0xe9408df9: arg3, 1, tokenIdFor[arg1].field_0
            emit 0x64ddf252: address(ownerOf[arg2]), arg1, tokenIdFor[arg1].field_0
            if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                if ext_code.hash(arg1):
                    require ext_code.size(arg1)
                    call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args msg.sender, address(ownerOf[arg2]), arg2, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'NON_COMPLIANT_ERC721_RECEIVER'
        else:
            if block.timestamp >= tokenIdFor[address(stor115[arg2])].field_256:
                tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                emit 0x59f2fe86: arg2
                if tokenIdFor[arg1].field_0:
                    if tokenIdFor[arg1].field_256 <= block.timestamp:
                        if keyManagerOf[stor114[arg1].field_0]:
                            keyManagerOf[stor114[arg1].field_0] = 0
                            if approved[stor114[arg1].field_0]:
                                approved[stor114[arg1].field_0] = 0
                            emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                else:
                    totalSupply++
                    tokenIdFor[arg1].field_0 = totalSupply + 1
                    if address(ownerOf[stor114[arg1].field_0]) != arg1:
                        owners.length++
                        stor19A0[stor116.length] = arg1
                        address(ownerOf[stor114[arg1].field_0]) = arg1
                    emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                if not address(ownerOf[stor114[arg1].field_0]):
                    revert with 0, 'NON_EXISTENT_KEY'
                if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                    if tokenIdFor[address(stor115[arg2])].field_256 < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256
                else:
                    if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp, 1, tokenIdFor[arg1].field_0
            else:
                if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp:
                    if (tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp != transferFeeBasisPoints:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                    emit 0x59f2fe86: arg2
                    if tokenIdFor[arg1].field_0:
                        if tokenIdFor[arg1].field_256 <= block.timestamp:
                            if keyManagerOf[stor114[arg1].field_0]:
                                keyManagerOf[stor114[arg1].field_0] = 0
                                if approved[stor114[arg1].field_0]:
                                    approved[stor114[arg1].field_0] = 0
                                emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                    else:
                        totalSupply++
                        tokenIdFor[arg1].field_0 = totalSupply + 1
                        if address(ownerOf[stor114[arg1].field_0]) != arg1:
                            owners.length++
                            stor19A0[stor116.length] = arg1
                            address(ownerOf[stor114[arg1].field_0]) = arg1
                        emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                    if not address(ownerOf[stor114[arg1].field_0]):
                        revert with 0, 'NON_EXISTENT_KEY'
                    if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                        if tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000)
                    else:
                        if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                    emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000), 1, tokenIdFor[arg1].field_0
                else:
                    if not tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp:
                        tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                        emit 0x59f2fe86: arg2
                        if tokenIdFor[arg1].field_0:
                            if tokenIdFor[arg1].field_256 <= block.timestamp:
                                if keyManagerOf[stor114[arg1].field_0]:
                                    keyManagerOf[stor114[arg1].field_0] = 0
                                    if approved[stor114[arg1].field_0]:
                                        approved[stor114[arg1].field_0] = 0
                                    emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                        else:
                            totalSupply++
                            tokenIdFor[arg1].field_0 = totalSupply + 1
                            if address(ownerOf[stor114[arg1].field_0]) != arg1:
                                owners.length++
                                stor19A0[stor116.length] = arg1
                                address(ownerOf[stor114[arg1].field_0]) = arg1
                            emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                        if not address(ownerOf[stor114[arg1].field_0]):
                            revert with 0, 'NON_EXISTENT_KEY'
                        if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                            if tokenIdFor[address(stor115[arg2])].field_256 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256
                        else:
                            if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                        emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp, 1, tokenIdFor[arg1].field_0
                    else:
                        if (tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp != transferFeeBasisPoints:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                        emit 0x59f2fe86: arg2
                        if tokenIdFor[arg1].field_0:
                            if tokenIdFor[arg1].field_256 <= block.timestamp:
                                if keyManagerOf[stor114[arg1].field_0]:
                                    keyManagerOf[stor114[arg1].field_0] = 0
                                    if approved[stor114[arg1].field_0]:
                                        approved[stor114[arg1].field_0] = 0
                                    emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                        else:
                            totalSupply++
                            tokenIdFor[arg1].field_0 = totalSupply + 1
                            if address(ownerOf[stor114[arg1].field_0]) != arg1:
                                owners.length++
                                stor19A0[stor116.length] = arg1
                                address(ownerOf[stor114[arg1].field_0]) = arg1
                            emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                        if not address(ownerOf[stor114[arg1].field_0]):
                            revert with 0, 'NON_EXISTENT_KEY'
                        if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                            if tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000)
                        else:
                            if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                        emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000), 1, tokenIdFor[arg1].field_0
            emit 0x64ddf252: address(ownerOf[arg2]), arg1, tokenIdFor[arg1].field_0
            if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                if ext_code.hash(arg1):
                    require ext_code.size(arg1)
                    call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                         gas gas_remaining wei
                        args 0, uint32(msg.sender), address(ownerOf[arg2]), arg2, 128, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                        revert with 0, 'NON_COMPLIANT_ERC721_RECEIVER'
    else:
        if arg3:
            if transferFeeBasisPoints * arg3 / arg3 != transferFeeBasisPoints:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (transferFeeBasisPoints * arg3 / 10000) + arg3 < arg3:
                revert with 0, 'SafeMath: addition overflow'
            if (transferFeeBasisPoints * arg3 / 10000) + arg3 < tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp:
                if not address(ownerOf[arg2]):
                    revert with 0, 'NON_EXISTENT_KEY'
                if (transferFeeBasisPoints * arg3 / 10000) + arg3 > tokenIdFor[address(stor115[arg2])].field_256:
                    revert with 0, 'SafeMath: subtraction overflow'
                tokenIdFor[address(stor115[arg2])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - (transferFeeBasisPoints * arg3 / 10000) - arg3
                emit 0xe9408df9: (transferFeeBasisPoints * arg3 / 10000) + arg3, 0, arg2
                if tokenIdFor[arg1].field_0:
                    if tokenIdFor[arg1].field_256 <= block.timestamp:
                        if keyManagerOf[stor114[arg1].field_0]:
                            keyManagerOf[stor114[arg1].field_0] = 0
                            if approved[stor114[arg1].field_0]:
                                approved[stor114[arg1].field_0] = 0
                            emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                else:
                    totalSupply++
                    tokenIdFor[arg1].field_0 = totalSupply + 1
                    if address(ownerOf[stor114[arg1].field_0]) != arg1:
                        owners.length++
                        stor19A0[stor116.length] = arg1
                        address(ownerOf[stor114[arg1].field_0]) = arg1
                    emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                if not address(ownerOf[stor114[arg1].field_0]):
                    revert with 0, 'NON_EXISTENT_KEY'
                if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                    if arg3 + block.timestamp < block.timestamp:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = arg3 + block.timestamp
                else:
                    if arg3 + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                        revert with 0, 'SafeMath: addition overflow'
                    tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 += arg3
                emit 0xe9408df9: arg3, 1, tokenIdFor[arg1].field_0
                emit 0x64ddf252: address(ownerOf[arg2]), arg1, tokenIdFor[arg1].field_0
                if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg1):
                        require ext_code.size(arg1)
                        call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args msg.sender, address(ownerOf[arg2]), arg2, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'NON_COMPLIANT_ERC721_RECEIVER'
            else:
                if block.timestamp >= tokenIdFor[address(stor115[arg2])].field_256:
                    tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                    emit 0x59f2fe86: arg2
                    if tokenIdFor[arg1].field_0:
                        if tokenIdFor[arg1].field_256 <= block.timestamp:
                            if keyManagerOf[stor114[arg1].field_0]:
                                keyManagerOf[stor114[arg1].field_0] = 0
                                if approved[stor114[arg1].field_0]:
                                    approved[stor114[arg1].field_0] = 0
                                emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                    else:
                        totalSupply++
                        tokenIdFor[arg1].field_0 = totalSupply + 1
                        if address(ownerOf[stor114[arg1].field_0]) != arg1:
                            owners.length++
                            stor19A0[stor116.length] = arg1
                            address(ownerOf[stor114[arg1].field_0]) = arg1
                        emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                    if not address(ownerOf[stor114[arg1].field_0]):
                        revert with 0, 'NON_EXISTENT_KEY'
                    if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                        if tokenIdFor[address(stor115[arg2])].field_256 < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256
                    else:
                        if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                    emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp, 1, tokenIdFor[arg1].field_0
                else:
                    if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp:
                        if (tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp != transferFeeBasisPoints:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                        emit 0x59f2fe86: arg2
                        if tokenIdFor[arg1].field_0:
                            if tokenIdFor[arg1].field_256 <= block.timestamp:
                                if keyManagerOf[stor114[arg1].field_0]:
                                    keyManagerOf[stor114[arg1].field_0] = 0
                                    if approved[stor114[arg1].field_0]:
                                        approved[stor114[arg1].field_0] = 0
                                    emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                        else:
                            totalSupply++
                            tokenIdFor[arg1].field_0 = totalSupply + 1
                            if address(ownerOf[stor114[arg1].field_0]) != arg1:
                                owners.length++
                                stor19A0[stor116.length] = arg1
                                address(ownerOf[stor114[arg1].field_0]) = arg1
                            emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                        if not address(ownerOf[stor114[arg1].field_0]):
                            revert with 0, 'NON_EXISTENT_KEY'
                        if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                            if tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000)
                        else:
                            if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                        emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000), 1, tokenIdFor[arg1].field_0
                    else:
                        if not tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp:
                            tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                            emit 0x59f2fe86: arg2
                            if tokenIdFor[arg1].field_0:
                                if tokenIdFor[arg1].field_256 <= block.timestamp:
                                    if keyManagerOf[stor114[arg1].field_0]:
                                        keyManagerOf[stor114[arg1].field_0] = 0
                                        if approved[stor114[arg1].field_0]:
                                            approved[stor114[arg1].field_0] = 0
                                        emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                            else:
                                totalSupply++
                                tokenIdFor[arg1].field_0 = totalSupply + 1
                                if address(ownerOf[stor114[arg1].field_0]) != arg1:
                                    owners.length++
                                    stor19A0[stor116.length] = arg1
                                    address(ownerOf[stor114[arg1].field_0]) = arg1
                                emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                            if not address(ownerOf[stor114[arg1].field_0]):
                                revert with 0, 'NON_EXISTENT_KEY'
                            if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                if tokenIdFor[address(stor115[arg2])].field_256 < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256
                            else:
                                if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                            emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp, 1, tokenIdFor[arg1].field_0
                        else:
                            if (tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp != transferFeeBasisPoints:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                            emit 0x59f2fe86: arg2
                            if tokenIdFor[arg1].field_0:
                                if tokenIdFor[arg1].field_256 <= block.timestamp:
                                    if keyManagerOf[stor114[arg1].field_0]:
                                        keyManagerOf[stor114[arg1].field_0] = 0
                                        if approved[stor114[arg1].field_0]:
                                            approved[stor114[arg1].field_0] = 0
                                        emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                            else:
                                totalSupply++
                                tokenIdFor[arg1].field_0 = totalSupply + 1
                                if address(ownerOf[stor114[arg1].field_0]) != arg1:
                                    owners.length++
                                    stor19A0[stor116.length] = arg1
                                    address(ownerOf[stor114[arg1].field_0]) = arg1
                                emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                            if not address(ownerOf[stor114[arg1].field_0]):
                                revert with 0, 'NON_EXISTENT_KEY'
                            if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                if tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000)
                            else:
                                if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                            emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000), 1, tokenIdFor[arg1].field_0
                emit 0x64ddf252: address(ownerOf[arg2]), arg1, tokenIdFor[arg1].field_0
                if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                    if ext_code.hash(arg1):
                        require ext_code.size(arg1)
                        call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                             gas gas_remaining wei
                            args 0, uint32(msg.sender), address(ownerOf[arg2]), arg2, 128, 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'NON_COMPLIANT_ERC721_RECEIVER'
        else:
            if not tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp:
                if arg3 < arg3:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 < tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp:
                    if not address(ownerOf[arg2]):
                        revert with 0, 'NON_EXISTENT_KEY'
                    if arg3 > tokenIdFor[address(stor115[arg2])].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    tokenIdFor[address(stor115[arg2])].field_256 -= arg3
                    emit 0xe9408df9: arg3, 0, arg2
                    if tokenIdFor[arg1].field_0:
                        if tokenIdFor[arg1].field_256 <= block.timestamp:
                            if keyManagerOf[stor114[arg1].field_0]:
                                keyManagerOf[stor114[arg1].field_0] = 0
                                if approved[stor114[arg1].field_0]:
                                    approved[stor114[arg1].field_0] = 0
                                emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                    else:
                        totalSupply++
                        tokenIdFor[arg1].field_0 = totalSupply + 1
                        if address(ownerOf[stor114[arg1].field_0]) != arg1:
                            owners.length++
                            stor19A0[stor116.length] = arg1
                            address(ownerOf[stor114[arg1].field_0]) = arg1
                        emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                    if not address(ownerOf[stor114[arg1].field_0]):
                        revert with 0, 'NON_EXISTENT_KEY'
                    if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                        if arg3 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = arg3 + block.timestamp
                    else:
                        if arg3 + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 += arg3
                    emit 0xe9408df9: arg3, 1, tokenIdFor[arg1].field_0
                    emit 0x64ddf252: address(ownerOf[arg2]), arg1, tokenIdFor[arg1].field_0
                    if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg1):
                            require ext_code.size(arg1)
                            call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg2]), arg2, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'NON_COMPLIANT_ERC721_RECEIVER'
                else:
                    if block.timestamp >= tokenIdFor[address(stor115[arg2])].field_256:
                        tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                        emit 0x59f2fe86: arg2
                        if tokenIdFor[arg1].field_0:
                            if tokenIdFor[arg1].field_256 <= block.timestamp:
                                if keyManagerOf[stor114[arg1].field_0]:
                                    keyManagerOf[stor114[arg1].field_0] = 0
                                    if approved[stor114[arg1].field_0]:
                                        approved[stor114[arg1].field_0] = 0
                                    emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                        else:
                            totalSupply++
                            tokenIdFor[arg1].field_0 = totalSupply + 1
                            if address(ownerOf[stor114[arg1].field_0]) != arg1:
                                owners.length++
                                stor19A0[stor116.length] = arg1
                                address(ownerOf[stor114[arg1].field_0]) = arg1
                            emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                        if not address(ownerOf[stor114[arg1].field_0]):
                            revert with 0, 'NON_EXISTENT_KEY'
                        if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                            if tokenIdFor[address(stor115[arg2])].field_256 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256
                        else:
                            if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                        emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp, 1, tokenIdFor[arg1].field_0
                    else:
                        if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp:
                            if (tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp != transferFeeBasisPoints:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                            emit 0x59f2fe86: arg2
                            if tokenIdFor[arg1].field_0:
                                if tokenIdFor[arg1].field_256 <= block.timestamp:
                                    if keyManagerOf[stor114[arg1].field_0]:
                                        keyManagerOf[stor114[arg1].field_0] = 0
                                        if approved[stor114[arg1].field_0]:
                                            approved[stor114[arg1].field_0] = 0
                                        emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                            else:
                                totalSupply++
                                tokenIdFor[arg1].field_0 = totalSupply + 1
                                if address(ownerOf[stor114[arg1].field_0]) != arg1:
                                    owners.length++
                                    stor19A0[stor116.length] = arg1
                                    address(ownerOf[stor114[arg1].field_0]) = arg1
                                emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                            if not address(ownerOf[stor114[arg1].field_0]):
                                revert with 0, 'NON_EXISTENT_KEY'
                            if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                if tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000)
                            else:
                                if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                            emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000), 1, tokenIdFor[arg1].field_0
                        else:
                            if not tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp:
                                tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                                emit 0x59f2fe86: arg2
                                if tokenIdFor[arg1].field_0:
                                    if tokenIdFor[arg1].field_256 <= block.timestamp:
                                        if keyManagerOf[stor114[arg1].field_0]:
                                            keyManagerOf[stor114[arg1].field_0] = 0
                                            if approved[stor114[arg1].field_0]:
                                                approved[stor114[arg1].field_0] = 0
                                            emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                                else:
                                    totalSupply++
                                    tokenIdFor[arg1].field_0 = totalSupply + 1
                                    if address(ownerOf[stor114[arg1].field_0]) != arg1:
                                        owners.length++
                                        stor19A0[stor116.length] = arg1
                                        address(ownerOf[stor114[arg1].field_0]) = arg1
                                    emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                                if not address(ownerOf[stor114[arg1].field_0]):
                                    revert with 0, 'NON_EXISTENT_KEY'
                                if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                    if tokenIdFor[address(stor115[arg2])].field_256 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256
                                else:
                                    if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                                emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp, 1, tokenIdFor[arg1].field_0
                            else:
                                if (tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp != transferFeeBasisPoints:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                                emit 0x59f2fe86: arg2
                                if tokenIdFor[arg1].field_0:
                                    if tokenIdFor[arg1].field_256 <= block.timestamp:
                                        if keyManagerOf[stor114[arg1].field_0]:
                                            keyManagerOf[stor114[arg1].field_0] = 0
                                            if approved[stor114[arg1].field_0]:
                                                approved[stor114[arg1].field_0] = 0
                                            emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                                else:
                                    totalSupply++
                                    tokenIdFor[arg1].field_0 = totalSupply + 1
                                    if address(ownerOf[stor114[arg1].field_0]) != arg1:
                                        owners.length++
                                        stor19A0[stor116.length] = arg1
                                        address(ownerOf[stor114[arg1].field_0]) = arg1
                                    emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                                if not address(ownerOf[stor114[arg1].field_0]):
                                    revert with 0, 'NON_EXISTENT_KEY'
                                if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                    if tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000)
                                else:
                                    if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                                emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000), 1, tokenIdFor[arg1].field_0
                    emit 0x64ddf252: address(ownerOf[arg2]), arg1, tokenIdFor[arg1].field_0
                    if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg1):
                            require ext_code.size(arg1)
                            call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(ownerOf[arg2]), arg2, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'NON_COMPLIANT_ERC721_RECEIVER'
            else:
                if (tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp != transferFeeBasisPoints:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + arg3 < arg3:
                    revert with 0, 'SafeMath: addition overflow'
                if ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + arg3 < tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp:
                    if not address(ownerOf[arg2]):
                        revert with 0, 'NON_EXISTENT_KEY'
                    if ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + arg3 > tokenIdFor[address(stor115[arg2])].field_256:
                        revert with 0, 'SafeMath: subtraction overflow'
                    tokenIdFor[address(stor115[arg2])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) - arg3
                    emit 0xe9408df9: ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + arg3, 0, arg2
                    if tokenIdFor[arg1].field_0:
                        if tokenIdFor[arg1].field_256 <= block.timestamp:
                            if keyManagerOf[stor114[arg1].field_0]:
                                keyManagerOf[stor114[arg1].field_0] = 0
                                if approved[stor114[arg1].field_0]:
                                    approved[stor114[arg1].field_0] = 0
                                emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                    else:
                        totalSupply++
                        tokenIdFor[arg1].field_0 = totalSupply + 1
                        if address(ownerOf[stor114[arg1].field_0]) != arg1:
                            owners.length++
                            stor19A0[stor116.length] = arg1
                            address(ownerOf[stor114[arg1].field_0]) = arg1
                        emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                    if not address(ownerOf[stor114[arg1].field_0]):
                        revert with 0, 'NON_EXISTENT_KEY'
                    if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                        if arg3 + block.timestamp < block.timestamp:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = arg3 + block.timestamp
                    else:
                        if arg3 + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                            revert with 0, 'SafeMath: addition overflow'
                        tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 += arg3
                    emit 0xe9408df9: arg3, 1, tokenIdFor[arg1].field_0
                    emit 0x64ddf252: address(ownerOf[arg2]), arg1, tokenIdFor[arg1].field_0
                    if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg1):
                            require ext_code.size(arg1)
                            call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg2]), arg2, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'NON_COMPLIANT_ERC721_RECEIVER'
                else:
                    if block.timestamp >= tokenIdFor[address(stor115[arg2])].field_256:
                        tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                        emit 0x59f2fe86: arg2
                        if tokenIdFor[arg1].field_0:
                            if tokenIdFor[arg1].field_256 <= block.timestamp:
                                if keyManagerOf[stor114[arg1].field_0]:
                                    keyManagerOf[stor114[arg1].field_0] = 0
                                    if approved[stor114[arg1].field_0]:
                                        approved[stor114[arg1].field_0] = 0
                                    emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                        else:
                            totalSupply++
                            tokenIdFor[arg1].field_0 = totalSupply + 1
                            if address(ownerOf[stor114[arg1].field_0]) != arg1:
                                owners.length++
                                stor19A0[stor116.length] = arg1
                                address(ownerOf[stor114[arg1].field_0]) = arg1
                            emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                        if not address(ownerOf[stor114[arg1].field_0]):
                            revert with 0, 'NON_EXISTENT_KEY'
                        if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                            if tokenIdFor[address(stor115[arg2])].field_256 < block.timestamp:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256
                        else:
                            if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                revert with 0, 'SafeMath: addition overflow'
                            tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                        emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp, 1, tokenIdFor[arg1].field_0
                    else:
                        if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp:
                            if (tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp != transferFeeBasisPoints:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                            emit 0x59f2fe86: arg2
                            if tokenIdFor[arg1].field_0:
                                if tokenIdFor[arg1].field_256 <= block.timestamp:
                                    if keyManagerOf[stor114[arg1].field_0]:
                                        keyManagerOf[stor114[arg1].field_0] = 0
                                        if approved[stor114[arg1].field_0]:
                                            approved[stor114[arg1].field_0] = 0
                                        emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                            else:
                                totalSupply++
                                tokenIdFor[arg1].field_0 = totalSupply + 1
                                if address(ownerOf[stor114[arg1].field_0]) != arg1:
                                    owners.length++
                                    stor19A0[stor116.length] = arg1
                                    address(ownerOf[stor114[arg1].field_0]) = arg1
                                emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                            if not address(ownerOf[stor114[arg1].field_0]):
                                revert with 0, 'NON_EXISTENT_KEY'
                            if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                if tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) < block.timestamp:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000)
                            else:
                                if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                    revert with 0, 'SafeMath: addition overflow'
                                tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                            emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000), 1, tokenIdFor[arg1].field_0
                        else:
                            if not tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp:
                                tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                                emit 0x59f2fe86: arg2
                                if tokenIdFor[arg1].field_0:
                                    if tokenIdFor[arg1].field_256 <= block.timestamp:
                                        if keyManagerOf[stor114[arg1].field_0]:
                                            keyManagerOf[stor114[arg1].field_0] = 0
                                            if approved[stor114[arg1].field_0]:
                                                approved[stor114[arg1].field_0] = 0
                                            emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                                else:
                                    totalSupply++
                                    tokenIdFor[arg1].field_0 = totalSupply + 1
                                    if address(ownerOf[stor114[arg1].field_0]) != arg1:
                                        owners.length++
                                        stor19A0[stor116.length] = arg1
                                        address(ownerOf[stor114[arg1].field_0]) = arg1
                                    emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                                if not address(ownerOf[stor114[arg1].field_0]):
                                    revert with 0, 'NON_EXISTENT_KEY'
                                if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                    if tokenIdFor[address(stor115[arg2])].field_256 < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256
                                else:
                                    if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                                emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp, 1, tokenIdFor[arg1].field_0
                            else:
                                if (tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp != transferFeeBasisPoints:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                tokenIdFor[address(stor115[arg2])].field_256 = block.timestamp
                                emit 0x59f2fe86: arg2
                                if tokenIdFor[arg1].field_0:
                                    if tokenIdFor[arg1].field_256 <= block.timestamp:
                                        if keyManagerOf[stor114[arg1].field_0]:
                                            keyManagerOf[stor114[arg1].field_0] = 0
                                            if approved[stor114[arg1].field_0]:
                                                approved[stor114[arg1].field_0] = 0
                                            emit 0x9d2895c4: tokenIdFor[arg1].field_0, 0
                                else:
                                    totalSupply++
                                    tokenIdFor[arg1].field_0 = totalSupply + 1
                                    if address(ownerOf[stor114[arg1].field_0]) != arg1:
                                        owners.length++
                                        stor19A0[stor116.length] = arg1
                                        address(ownerOf[stor114[arg1].field_0]) = arg1
                                    emit 0x64ddf252: 0, arg1, tokenIdFor[arg1].field_0
                                if not address(ownerOf[stor114[arg1].field_0]):
                                    revert with 0, 'NON_EXISTENT_KEY'
                                if block.timestamp >= tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                    if tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) < block.timestamp:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000)
                                else:
                                    if tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 < tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256:
                                        revert with 0, 'SafeMath: addition overflow'
                                    tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256 = tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000) + tokenIdFor[address(stor115[tokenIdFor[arg1].field_0])].field_256
                                emit 0xe9408df9: tokenIdFor[address(stor115[arg2])].field_256 - block.timestamp - ((tokenIdFor[address(stor115[arg2])].field_256 * transferFeeBasisPoints) - (block.timestamp * transferFeeBasisPoints) / 10000), 1, tokenIdFor[arg1].field_0
                    emit 0x64ddf252: address(ownerOf[arg2]), arg1, tokenIdFor[arg1].field_0
                    if ext_code.hash(arg1) != 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470:
                        if ext_code.hash(arg1):
                            require ext_code.size(arg1)
                            call arg1.onERC721Received(address rg1, address rg2, uint256 rg3, bytes rg4) with:
                                 gas gas_remaining wei
                                args 0, uint32(msg.sender), address(ownerOf[arg2]), arg2, 128, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if Mask(32, 224, ext_call.return_data[0]) != 0x150b7a0200000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'NON_COMPLIANT_ERC721_RECEIVER'
}

function cancelAndRefundFor(address arg1, uint8 arg2, bytes32 arg3, bytes32 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    mem[452] = arg4
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(this.address, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572), keyManagerToNonce[address(arg1)], msg.sender)), arg2 << 248, arg3, arg4) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    if address(signer) != arg1:
        revert with 0, 'INVALID_SIGNATURE'
    keyManagerToNonce[address(arg1)]++
    emit 0xf5d035b7: (keyManagerToNonce[address(arg1)] + 1), arg1
    if block.timestamp >= tokenIdFor[address(stor115[arg5])].field_256:
        revert with 0, 'KEY_NOT_VALID'
    if tokenIdFor[address(stor115[arg5])].field_256 - block.timestamp + freeTrialLength >= expirationDuration:
        if not freeTrialLength:
            if not keyPrice:
                if keyPrice <= 0:
                    emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                    tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                    if onKeyCancelHookAddress:
                        require ext_code.size(onKeyCancelHookAddress)
                        call onKeyCancelHookAddress.0xb499b6c5 with:
                             gas gas_remaining wei
                            args msg.sender, address(ownerOf[arg5]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit 0xa7068a99: keyPrice, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                    tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                    if keyPrice:
                        if not tokenAddress:
                            if eth.balance(this.address) < keyPrice:
                                revert with 0, 'Address: insufficient balance'
                            call address(ownerOf[arg5]) with:
                               value keyPrice wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                uint16(arg4),
                                                mem[484 len 4]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                mem[ceil32(return_data.size) + 483 len 6]
                            ('bool', 'ext_call.success')
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 0, stor108.field_32)
                            call tokenAddress with:
                               funct uint32(ownerOf[arg5])
                                 gas gas_remaining wei
                                args Mask(480, 0, stor108.field_0), mem[520 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                    revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                            else:
                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[488]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                    if onKeyCancelHookAddress:
                        require ext_code.size(onKeyCancelHookAddress)
                        call onKeyCancelHookAddress.0xb499b6c5 with:
                             gas gas_remaining wei
                            args msg.sender, address(ownerOf[arg5]), keyPrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
                    revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(216, 0, arg4), mem[484 len 4]
                if keyPrice <= refundPenaltyBasisPoints * keyPrice / 10000:
                    emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                    tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                    if onKeyCancelHookAddress:
                        require ext_code.size(onKeyCancelHookAddress)
                        call onKeyCancelHookAddress.0xb499b6c5 with:
                             gas gas_remaining wei
                            args msg.sender, address(ownerOf[arg5]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit 0xa7068a99: (keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)), tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                    tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                    if keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000):
                        if not tokenAddress:
                            if eth.balance(this.address) < keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000):
                                revert with 0, 'Address: insufficient balance'
                            call address(ownerOf[arg5]) with:
                               value keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000) wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                uint16(arg4),
                                                mem[484 len 4]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                mem[ceil32(return_data.size) + 483 len 6]
                            ('bool', 'ext_call.success')
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 32, keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)) >> 32
                            call tokenAddress with:
                               funct uint32(ownerOf[arg5])
                                 gas gas_remaining wei
                                args Mask(224, 32, keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)) << 224, mem[520 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                    revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                            else:
                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[488]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                    if onKeyCancelHookAddress:
                        require ext_code.size(onKeyCancelHookAddress)
                        call onKeyCancelHookAddress.0xb499b6c5 with:
                             gas gas_remaining wei
                            args msg.sender, address(ownerOf[arg5]), keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if tokenIdFor[address(stor115[arg5])].field_256 - block.timestamp + freeTrialLength >= expirationDuration:
                emit 0xa7068a99: keyPrice, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                if keyPrice:
                    if not tokenAddress:
                        if eth.balance(this.address) < keyPrice:
                            revert with 0, 'Address: insufficient balance'
                        call address(ownerOf[arg5]) with:
                           value keyPrice wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                            uint16(arg4),
                                            mem[484 len 4]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                            mem[ceil32(return_data.size) + 483 len 6]
                        ('bool', 'ext_call.success')
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 0, stor108.field_32)
                        call tokenAddress with:
                           funct uint32(ownerOf[arg5])
                             gas gas_remaining wei
                            args Mask(480, 0, stor108.field_0), mem[520 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                        else:
                            mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[488]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 567 len 22]
                if onKeyCancelHookAddress:
                    require ext_code.size(onKeyCancelHookAddress)
                    call onKeyCancelHookAddress.0xb499b6c5 with:
                         gas gas_remaining wei
                        args msg.sender, address(ownerOf[arg5]), keyPrice
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not keyPrice:
                    if keyPrice <= 0:
                        emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                        tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg5]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        emit 0xa7068a99: keyPrice, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                        tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                        if keyPrice:
                            if not tokenAddress:
                                if eth.balance(this.address) < keyPrice:
                                    revert with 0, 'Address: insufficient balance'
                                call address(ownerOf[arg5]) with:
                                   value keyPrice wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    uint16(arg4),
                                                    mem[484 len 4]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[ceil32(return_data.size) + 483 len 6]
                                ('bool', 'ext_call.success')
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 0, stor108.field_32)
                                call tokenAddress with:
                                   funct uint32(ownerOf[arg5])
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor108.field_0), mem[520 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                        revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg5]), keyPrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(216, 0, arg4), mem[484 len 4]
                    if keyPrice <= refundPenaltyBasisPoints * keyPrice / 10000:
                        emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                        tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg5]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        emit 0xa7068a99: (keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)), tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                        tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                        if keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000):
                            if not tokenAddress:
                                if eth.balance(this.address) < keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000):
                                    revert with 0, 'Address: insufficient balance'
                                call address(ownerOf[arg5]) with:
                                   value keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    uint16(arg4),
                                                    mem[484 len 4]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[ceil32(return_data.size) + 483 len 6]
                                ('bool', 'ext_call.success')
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 32, keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)) >> 32
                                call tokenAddress with:
                                   funct uint32(ownerOf[arg5])
                                     gas gas_remaining wei
                                    args Mask(224, 32, keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)) << 224, mem[520 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                        revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg5]), keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    else:
        if not keyPrice:
            require expirationDuration
            if not freeTrialLength:
                if not keyPrice:
                    if 0 / expirationDuration <= 0:
                        emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                        tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg5]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        emit 0xa7068a99: (0 / expirationDuration), tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                        tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                        if 0 / expirationDuration:
                            if not tokenAddress:
                                if eth.balance(this.address) < 0 / expirationDuration:
                                    revert with 0, 'Address: insufficient balance'
                                call address(ownerOf[arg5]) with:
                                   value 0 / expirationDuration wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    uint16(arg4),
                                                    mem[484 len 4]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[ceil32(return_data.size) + 483 len 6]
                                ('bool', 'ext_call.success')
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 32, 0 / expirationDuration) >> 32
                                call tokenAddress with:
                                   funct uint32(arg4)
                                     gas gas_remaining wei
                                    args Mask(224, 32, 0 / expirationDuration) << 224, mem[520 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                        revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg5]), 0 / expirationDuration
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(216, 0, arg4), mem[484 len 4]
                    if 0 / expirationDuration <= refundPenaltyBasisPoints * keyPrice / 10000:
                        emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                        tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg5]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        emit 0xa7068a99: ((0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)), tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                        tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                        if (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                            if not tokenAddress:
                                if eth.balance(this.address) < (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                                    revert with 0, 'Address: insufficient balance'
                                call address(ownerOf[arg5]) with:
                                   value (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    uint16(arg4),
                                                    mem[484 len 4]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[ceil32(return_data.size) + 483 len 6]
                                ('bool', 'ext_call.success')
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 32, (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) >> 32
                                call tokenAddress with:
                                   funct uint32(ownerOf[arg5])
                                     gas gas_remaining wei
                                    args Mask(224, 32, (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) << 224, mem[520 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                        revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg5]), (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if tokenIdFor[address(stor115[arg5])].field_256 - block.timestamp + freeTrialLength >= expirationDuration:
                    emit 0xa7068a99: (0 / expirationDuration), tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                    tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                    if 0 / expirationDuration:
                        if not tokenAddress:
                            if eth.balance(this.address) < 0 / expirationDuration:
                                revert with 0, 'Address: insufficient balance'
                            call address(ownerOf[arg5]) with:
                               value 0 / expirationDuration wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                uint16(arg4),
                                                mem[484 len 4]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                mem[ceil32(return_data.size) + 483 len 6]
                            ('bool', 'ext_call.success')
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 32, 0 / expirationDuration) >> 32
                            call tokenAddress with:
                               funct uint32(ownerOf[arg5])
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / expirationDuration) << 224, mem[520 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                    revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                            else:
                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[488]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                    if onKeyCancelHookAddress:
                        require ext_code.size(onKeyCancelHookAddress)
                        call onKeyCancelHookAddress.0xb499b6c5 with:
                             gas gas_remaining wei
                            args msg.sender, address(ownerOf[arg5]), 0 / expirationDuration
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not keyPrice:
                        if 0 / expirationDuration <= 0:
                            emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                            tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg5]), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit 0xa7068a99: (0 / expirationDuration), tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                            tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                            if 0 / expirationDuration:
                                if not tokenAddress:
                                    if eth.balance(this.address) < 0 / expirationDuration:
                                        revert with 0, 'Address: insufficient balance'
                                    call address(ownerOf[arg5]) with:
                                       value 0 / expirationDuration wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        uint16(arg4),
                                                        mem[484 len 4]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        mem[ceil32(return_data.size) + 483 len 6]
                                    ('bool', 'ext_call.success')
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 32, 0 / expirationDuration) >> 32
                                    call tokenAddress with:
                                       funct uint32(ownerOf[arg5])
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / expirationDuration) << 224, mem[520 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                            revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                    else:
                                        mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[488]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg5]), 0 / expirationDuration
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(216, 0, arg4), mem[484 len 4]
                        if 0 / expirationDuration <= refundPenaltyBasisPoints * keyPrice / 10000:
                            emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                            tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg5]), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit 0xa7068a99: ((0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)), tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                            tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                            if (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                                if not tokenAddress:
                                    if eth.balance(this.address) < (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                                        revert with 0, 'Address: insufficient balance'
                                    call address(ownerOf[arg5]) with:
                                       value (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000) wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        uint16(arg4),
                                                        mem[484 len 4]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        mem[ceil32(return_data.size) + 483 len 6]
                                    ('bool', 'ext_call.success')
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 32, (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) >> 32
                                    call tokenAddress with:
                                       funct uint32(ownerOf[arg5])
                                         gas gas_remaining wei
                                        args Mask(224, 32, (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) << 224, mem[520 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                            revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                    else:
                                        mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[488]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg5]), (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / keyPrice != tokenIdFor[address(stor115[arg5])].field_256 - block.timestamp:
                revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(216, 0, arg4), mem[484 len 4]
            require expirationDuration
            if not freeTrialLength:
                if not keyPrice:
                    if (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration <= 0:
                        emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                        tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg5]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        emit 0xa7068a99: ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration), tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                        tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                        if (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration:
                            if not tokenAddress:
                                if eth.balance(this.address) < (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration:
                                    revert with 0, 'Address: insufficient balance'
                                call address(ownerOf[arg5]) with:
                                   value (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    uint16(arg4),
                                                    mem[484 len 4]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[ceil32(return_data.size) + 483 len 6]
                                ('bool', 'ext_call.success')
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 32, (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) >> 32
                                call tokenAddress with:
                                   funct uint32(arg4)
                                     gas gas_remaining wei
                                    args Mask(224, 32, (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) << 224, mem[520 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                        revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg5]), (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
                        revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(216, 0, arg4), mem[484 len 4]
                    if (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration <= refundPenaltyBasisPoints * keyPrice / 10000:
                        emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                        tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg5]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        emit 0xa7068a99: (((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)), tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                        tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                        if ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                            if not tokenAddress:
                                if eth.balance(this.address) < ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                                    revert with 0, 'Address: insufficient balance'
                                call address(ownerOf[arg5]) with:
                                   value ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    uint16(arg4),
                                                    mem[484 len 4]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[ceil32(return_data.size) + 483 len 6]
                                ('bool', 'ext_call.success')
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 32, ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) >> 32
                                call tokenAddress with:
                                   funct uint32(ownerOf[arg5])
                                     gas gas_remaining wei
                                    args Mask(224, 32, ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) << 224, mem[520 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                        revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                else:
                                    mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[488]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 567 len 22]
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg5]), ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if tokenIdFor[address(stor115[arg5])].field_256 - block.timestamp + freeTrialLength >= expirationDuration:
                    emit 0xa7068a99: ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration), tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                    tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                    if (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration:
                        if not tokenAddress:
                            if eth.balance(this.address) < (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration:
                                revert with 0, 'Address: insufficient balance'
                            call address(ownerOf[arg5]) with:
                               value (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                uint16(arg4),
                                                mem[484 len 4]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                mem[ceil32(return_data.size) + 483 len 6]
                            ('bool', 'ext_call.success')
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 32, (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) >> 32
                            call tokenAddress with:
                               funct uint32(ownerOf[arg5])
                                 gas gas_remaining wei
                                args Mask(224, 32, (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) << 224, mem[520 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                    revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                            else:
                                mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[488]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 567 len 22]
                    if onKeyCancelHookAddress:
                        require ext_code.size(onKeyCancelHookAddress)
                        call onKeyCancelHookAddress.0xb499b6c5 with:
                             gas gas_remaining wei
                            args msg.sender, address(ownerOf[arg5]), (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not keyPrice:
                        if (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration <= 0:
                            emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                            tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg5]), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit 0xa7068a99: ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration), tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                            tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                            if (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration:
                                if not tokenAddress:
                                    if eth.balance(this.address) < (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration:
                                        revert with 0, 'Address: insufficient balance'
                                    call address(ownerOf[arg5]) with:
                                       value (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        uint16(arg4),
                                                        mem[484 len 4]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        mem[ceil32(return_data.size) + 483 len 6]
                                    ('bool', 'ext_call.success')
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 32, (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) >> 32
                                    call tokenAddress with:
                                       funct uint32(ownerOf[arg5])
                                         gas gas_remaining wei
                                        args Mask(224, 32, (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) << 224, mem[520 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                            revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                    else:
                                        mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[488]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg5]), (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
                            revert with 0, 32, 33, 0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, Mask(216, 0, arg4), mem[484 len 4]
                        if (tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration <= refundPenaltyBasisPoints * keyPrice / 10000:
                            emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                            tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg5]), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit 0xa7068a99: (((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)), tokenIdFor[address(stor115[arg5])].field_0, address(ownerOf[arg5]), msg.sender
                            tokenIdFor[address(stor115[arg5])].field_256 = block.timestamp
                            if ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                                if not tokenAddress:
                                    if eth.balance(this.address) < ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                                        revert with 0, 'Address: insufficient balance'
                                    call address(ownerOf[arg5]) with:
                                       value ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000) wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        uint16(arg4),
                                                        mem[484 len 4]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        mem[ceil32(return_data.size) + 483 len 6]
                                    ('bool', 'ext_call.success')
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[456 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg5]), uint32(ownerOf[arg5]), Mask(224, 32, ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) >> 32
                                    call tokenAddress with:
                                       funct uint32(ownerOf[arg5])
                                         gas gas_remaining wei
                                        args Mask(224, 32, ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) << 224, mem[520 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not this.address, Mask(96, 160, sha3(0xfe63616e63656c416e64526566756e64466f722861646472657373205f6b65794f776e6572)) >> 160:
                                            revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[566 len 22]
                                    else:
                                        mem[488 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[488]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 567 len 22]
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg5]), ((tokenIdFor[address(stor115[arg5])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
}

function cancelAndRefund(uint256 arg1) {
    require calldata.size - 4 >= 32
    if keyManagerOf[arg1] != msg.sender:
        if keyManagerOf[arg1]:
            if approved[arg1] != msg.sender:
                if keyManagerOf[stor114[address(stor115[arg1])].field_0]:
                    if not stor119[stor117[stor114[address(stor115[arg1])].field_0]][address(msg.sender)]:
                        revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
                else:
                    if not stor119[address(stor115[arg1])][address(msg.sender)]:
                        revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
        else:
            if address(ownerOf[arg1]) != msg.sender:
                if approved[arg1] != msg.sender:
                    if keyManagerOf[stor114[address(stor115[arg1])].field_0]:
                        if not stor119[stor117[stor114[address(stor115[arg1])].field_0]][address(msg.sender)]:
                            revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
                    else:
                        if not stor119[address(stor115[arg1])][address(msg.sender)]:
                            revert with 0, 'dONLY_KEY_MANAGER_OR_APPROVED'
    if block.timestamp >= tokenIdFor[address(stor115[arg1])].field_256:
        revert with 0, 'KEY_NOT_VALID'
    if tokenIdFor[address(stor115[arg1])].field_256 - block.timestamp + freeTrialLength >= expirationDuration:
        if not freeTrialLength:
            if not keyPrice:
                if keyPrice <= 0:
                    emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                    tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                    if onKeyCancelHookAddress:
                        require ext_code.size(onKeyCancelHookAddress)
                        call onKeyCancelHookAddress.0xb499b6c5 with:
                             gas gas_remaining wei
                            args msg.sender, address(ownerOf[arg1]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit 0xa7068a99: keyPrice, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                    tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                    if keyPrice:
                        if not tokenAddress:
                            if eth.balance(this.address) < keyPrice:
                                revert with 0, 'Address: insufficient balance'
                            call address(ownerOf[arg1]) with:
                               value keyPrice wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                mem[222 len 6]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                mem[ceil32(return_data.size) + 223 len 6]
                            ('bool', 'ext_call.success')
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 0, stor108.field_32)
                            call tokenAddress with:
                               funct uint32(ownerOf[arg1])
                                 gas gas_remaining wei
                                args Mask(480, 0, stor108.field_0), mem[260 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                    revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                            else:
                                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[228]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 307 len 22]
                    if onKeyCancelHookAddress:
                        require ext_code.size(onKeyCancelHookAddress)
                        call onKeyCancelHookAddress.0xb499b6c5 with:
                             gas gas_remaining wei
                            args msg.sender, address(ownerOf[arg1]), keyPrice
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
            else:
                if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if keyPrice <= refundPenaltyBasisPoints * keyPrice / 10000:
                    emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                    tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                    if onKeyCancelHookAddress:
                        require ext_code.size(onKeyCancelHookAddress)
                        call onKeyCancelHookAddress.0xb499b6c5 with:
                             gas gas_remaining wei
                            args msg.sender, address(ownerOf[arg1]), 0
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    emit 0xa7068a99: (keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)), tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                    tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                    if keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000):
                        if not tokenAddress:
                            if eth.balance(this.address) < keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000):
                                revert with 0, 'Address: insufficient balance'
                            call address(ownerOf[arg1]) with:
                               value keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000) wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                mem[222 len 6]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                mem[ceil32(return_data.size) + 223 len 6]
                            ('bool', 'ext_call.success')
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 32, keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)) >> 32
                            call tokenAddress with:
                               funct uint32(ownerOf[arg1])
                                 gas gas_remaining wei
                                args Mask(224, 32, keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)) << 224, mem[260 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                    revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                            else:
                                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[228]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 307 len 22]
                    if onKeyCancelHookAddress:
                        require ext_code.size(onKeyCancelHookAddress)
                        call onKeyCancelHookAddress.0xb499b6c5 with:
                             gas gas_remaining wei
                            args msg.sender, address(ownerOf[arg1]), keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
        else:
            if tokenIdFor[address(stor115[arg1])].field_256 - block.timestamp + freeTrialLength >= expirationDuration:
                emit 0xa7068a99: keyPrice, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                if keyPrice:
                    if not tokenAddress:
                        if eth.balance(this.address) < keyPrice:
                            revert with 0, 'Address: insufficient balance'
                        call address(ownerOf[arg1]) with:
                           value keyPrice wei
                             gas gas_remaining wei
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            58,
                                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                            mem[222 len 6]
                        else:
                            if not ext_call.success:
                                revert with 0, 
                                            32,
                                            58,
                                            0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                            mem[ceil32(return_data.size) + 223 len 6]
                        ('bool', 'ext_call.success')
                    else:
                        if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        if not ext_code.hash(tokenAddress):
                            revert with 0, 'SafeERC20: call to non-contract'
                        mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 0, stor108.field_32)
                        call tokenAddress with:
                           funct uint32(ownerOf[arg1])
                             gas gas_remaining wei
                            args Mask(480, 0, stor108.field_0), mem[260 len 4]
                        if not return_data.size:
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                        else:
                            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            if not ext_call.success:
                                revert with 0, 'SafeERC20: low-level call failed'
                            if return_data.size:
                                require return_data.size >= 32
                                if not mem[228]:
                                    revert with 0, 
                                                32,
                                                42,
                                                0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                mem[ceil32(return_data.size) + 307 len 22]
                if onKeyCancelHookAddress:
                    require ext_code.size(onKeyCancelHookAddress)
                    call onKeyCancelHookAddress.0xb499b6c5 with:
                         gas gas_remaining wei
                        args msg.sender, address(ownerOf[arg1]), keyPrice
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            else:
                if not keyPrice:
                    if keyPrice <= 0:
                        emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                        tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg1]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        emit 0xa7068a99: keyPrice, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                        tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                        if keyPrice:
                            if not tokenAddress:
                                if eth.balance(this.address) < keyPrice:
                                    revert with 0, 'Address: insufficient balance'
                                call address(ownerOf[arg1]) with:
                                   value keyPrice wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[222 len 6]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[ceil32(return_data.size) + 223 len 6]
                                ('bool', 'ext_call.success')
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 0, stor108.field_32)
                                call tokenAddress with:
                                   funct uint32(ownerOf[arg1])
                                     gas gas_remaining wei
                                    args Mask(480, 0, stor108.field_0), mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                        revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 307 len 22]
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg1]), keyPrice
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if keyPrice <= refundPenaltyBasisPoints * keyPrice / 10000:
                        emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                        tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg1]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        emit 0xa7068a99: (keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)), tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                        tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                        if keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000):
                            if not tokenAddress:
                                if eth.balance(this.address) < keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000):
                                    revert with 0, 'Address: insufficient balance'
                                call address(ownerOf[arg1]) with:
                                   value keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[222 len 6]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[ceil32(return_data.size) + 223 len 6]
                                ('bool', 'ext_call.success')
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 32, keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)) >> 32
                                call tokenAddress with:
                                   funct uint32(ownerOf[arg1])
                                     gas gas_remaining wei
                                    args Mask(224, 32, keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)) << 224, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                        revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 307 len 22]
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg1]), keyPrice - (refundPenaltyBasisPoints * keyPrice / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
    else:
        if not keyPrice:
            require expirationDuration
            if not freeTrialLength:
                if not keyPrice:
                    if 0 / expirationDuration <= 0:
                        emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                        tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg1]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        emit 0xa7068a99: (0 / expirationDuration), tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                        tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                        if 0 / expirationDuration:
                            if not tokenAddress:
                                if eth.balance(this.address) < 0 / expirationDuration:
                                    revert with 0, 'Address: insufficient balance'
                                call address(ownerOf[arg1]) with:
                                   value 0 / expirationDuration wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[222 len 6]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[ceil32(return_data.size) + 223 len 6]
                                ('bool', 'ext_call.success')
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 32, 0 / expirationDuration) >> 32
                                call tokenAddress with:
                                   funct uint32(ownerOf[arg1])
                                     gas gas_remaining wei
                                    args Mask(224, 32, 0 / expirationDuration) << 224, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                        revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 307 len 22]
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg1]), 0 / expirationDuration
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if 0 / expirationDuration <= refundPenaltyBasisPoints * keyPrice / 10000:
                        emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                        tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg1]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        emit 0xa7068a99: ((0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)), tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                        tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                        if (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                            if not tokenAddress:
                                if eth.balance(this.address) < (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                                    revert with 0, 'Address: insufficient balance'
                                call address(ownerOf[arg1]) with:
                                   value (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[222 len 6]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[ceil32(return_data.size) + 223 len 6]
                                ('bool', 'ext_call.success')
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 32, (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) >> 32
                                call tokenAddress with:
                                   funct uint32(ownerOf[arg1])
                                     gas gas_remaining wei
                                    args Mask(224, 32, (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) << 224, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                        revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 307 len 22]
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg1]), (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if tokenIdFor[address(stor115[arg1])].field_256 - block.timestamp + freeTrialLength >= expirationDuration:
                    emit 0xa7068a99: (0 / expirationDuration), tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                    tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                    if 0 / expirationDuration:
                        if not tokenAddress:
                            if eth.balance(this.address) < 0 / expirationDuration:
                                revert with 0, 'Address: insufficient balance'
                            call address(ownerOf[arg1]) with:
                               value 0 / expirationDuration wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                mem[222 len 6]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                mem[ceil32(return_data.size) + 223 len 6]
                            ('bool', 'ext_call.success')
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 32, 0 / expirationDuration) >> 32
                            call tokenAddress with:
                               funct uint32(ownerOf[arg1])
                                 gas gas_remaining wei
                                args Mask(224, 32, 0 / expirationDuration) << 224, mem[260 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                    revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                            else:
                                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[228]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 307 len 22]
                    if onKeyCancelHookAddress:
                        require ext_code.size(onKeyCancelHookAddress)
                        call onKeyCancelHookAddress.0xb499b6c5 with:
                             gas gas_remaining wei
                            args msg.sender, address(ownerOf[arg1]), 0 / expirationDuration
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not keyPrice:
                        if 0 / expirationDuration <= 0:
                            emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                            tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg1]), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit 0xa7068a99: (0 / expirationDuration), tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                            tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                            if 0 / expirationDuration:
                                if not tokenAddress:
                                    if eth.balance(this.address) < 0 / expirationDuration:
                                        revert with 0, 'Address: insufficient balance'
                                    call address(ownerOf[arg1]) with:
                                       value 0 / expirationDuration wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        mem[222 len 6]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        mem[ceil32(return_data.size) + 223 len 6]
                                    ('bool', 'ext_call.success')
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 32, 0 / expirationDuration) >> 32
                                    call tokenAddress with:
                                       funct uint32(ownerOf[arg1])
                                         gas gas_remaining wei
                                        args Mask(224, 32, 0 / expirationDuration) << 224, mem[260 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                            revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                                    else:
                                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[228]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 307 len 22]
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg1]), 0 / expirationDuration
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if 0 / expirationDuration <= refundPenaltyBasisPoints * keyPrice / 10000:
                            emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                            tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg1]), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit 0xa7068a99: ((0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)), tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                            tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                            if (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                                if not tokenAddress:
                                    if eth.balance(this.address) < (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                                        revert with 0, 'Address: insufficient balance'
                                    call address(ownerOf[arg1]) with:
                                       value (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000) wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        mem[222 len 6]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        mem[ceil32(return_data.size) + 223 len 6]
                                    ('bool', 'ext_call.success')
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 32, (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) >> 32
                                    call tokenAddress with:
                                       funct uint32(ownerOf[arg1])
                                         gas gas_remaining wei
                                        args Mask(224, 32, (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) << 224, mem[260 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                            revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                                    else:
                                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[228]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 307 len 22]
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg1]), (0 / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
        else:
            if (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / keyPrice != tokenIdFor[address(stor115[arg1])].field_256 - block.timestamp:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            require expirationDuration
            if not freeTrialLength:
                if not keyPrice:
                    if (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration <= 0:
                        emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                        tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg1]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        emit 0xa7068a99: ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration), tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                        tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                        if (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration:
                            if not tokenAddress:
                                if eth.balance(this.address) < (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration:
                                    revert with 0, 'Address: insufficient balance'
                                call address(ownerOf[arg1]) with:
                                   value (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[222 len 6]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[ceil32(return_data.size) + 223 len 6]
                                ('bool', 'ext_call.success')
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 32, (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) >> 32
                                call tokenAddress with:
                                   funct uint32(ownerOf[arg1])
                                     gas gas_remaining wei
                                    args Mask(224, 32, (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) << 224, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                        revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 307 len 22]
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg1]), (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                else:
                    if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration <= refundPenaltyBasisPoints * keyPrice / 10000:
                        emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                        tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg1]), 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                    else:
                        emit 0xa7068a99: (((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)), tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                        tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                        if ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                            if not tokenAddress:
                                if eth.balance(this.address) < ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                                    revert with 0, 'Address: insufficient balance'
                                call address(ownerOf[arg1]) with:
                                   value ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000) wei
                                     gas gas_remaining wei
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[222 len 6]
                                else:
                                    if not ext_call.success:
                                        revert with 0, 
                                                    32,
                                                    58,
                                                    0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                    mem[ceil32(return_data.size) + 223 len 6]
                                ('bool', 'ext_call.success')
                            else:
                                if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                if not ext_code.hash(tokenAddress):
                                    revert with 0, 'SafeERC20: call to non-contract'
                                mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 32, ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) >> 32
                                call tokenAddress with:
                                   funct uint32(ownerOf[arg1])
                                     gas gas_remaining wei
                                    args Mask(224, 32, ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) << 224, mem[260 len 4]
                                if not return_data.size:
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                        revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                                else:
                                    mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    if not ext_call.success:
                                        revert with 0, 'SafeERC20: low-level call failed'
                                    if return_data.size:
                                        require return_data.size >= 32
                                        if not mem[228]:
                                            revert with 0, 
                                                        32,
                                                        42,
                                                        0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                        mem[ceil32(return_data.size) + 307 len 22]
                        if onKeyCancelHookAddress:
                            require ext_code.size(onKeyCancelHookAddress)
                            call onKeyCancelHookAddress.0xb499b6c5 with:
                                 gas gas_remaining wei
                                args msg.sender, address(ownerOf[arg1]), ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if tokenIdFor[address(stor115[arg1])].field_256 - block.timestamp + freeTrialLength >= expirationDuration:
                    emit 0xa7068a99: ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration), tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                    tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                    if (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration:
                        if not tokenAddress:
                            if eth.balance(this.address) < (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration:
                                revert with 0, 'Address: insufficient balance'
                            call address(ownerOf[arg1]) with:
                               value (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration wei
                                 gas gas_remaining wei
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                mem[222 len 6]
                            else:
                                if not ext_call.success:
                                    revert with 0, 
                                                32,
                                                58,
                                                0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                mem[ceil32(return_data.size) + 223 len 6]
                            ('bool', 'ext_call.success')
                        else:
                            if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            if not ext_code.hash(tokenAddress):
                                revert with 0, 'SafeERC20: call to non-contract'
                            mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 32, (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) >> 32
                            call tokenAddress with:
                               funct uint32(ownerOf[arg1])
                                 gas gas_remaining wei
                                args Mask(224, 32, (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) << 224, mem[260 len 4]
                            if not return_data.size:
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                    revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                            else:
                                mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                if not ext_call.success:
                                    revert with 0, 'SafeERC20: low-level call failed'
                                if return_data.size:
                                    require return_data.size >= 32
                                    if not mem[228]:
                                        revert with 0, 
                                                    32,
                                                    42,
                                                    0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                    mem[ceil32(return_data.size) + 307 len 22]
                    if onKeyCancelHookAddress:
                        require ext_code.size(onKeyCancelHookAddress)
                        call onKeyCancelHookAddress.0xb499b6c5 with:
                             gas gas_remaining wei
                            args msg.sender, address(ownerOf[arg1]), (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                else:
                    if not keyPrice:
                        if (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration <= 0:
                            emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                            tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg1]), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit 0xa7068a99: ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration), tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                            tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                            if (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration:
                                if not tokenAddress:
                                    if eth.balance(this.address) < (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration:
                                        revert with 0, 'Address: insufficient balance'
                                    call address(ownerOf[arg1]) with:
                                       value (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        mem[222 len 6]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        mem[ceil32(return_data.size) + 223 len 6]
                                    ('bool', 'ext_call.success')
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 32, (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) >> 32
                                    call tokenAddress with:
                                       funct uint32(ownerOf[arg1])
                                         gas gas_remaining wei
                                        args Mask(224, 32, (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) << 224, mem[260 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                            revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                                    else:
                                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[228]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 307 len 22]
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg1]), (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                    else:
                        if refundPenaltyBasisPoints * keyPrice / keyPrice != refundPenaltyBasisPoints:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x65536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration <= refundPenaltyBasisPoints * keyPrice / 10000:
                            emit 0xa7068a99: 0, tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                            tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg1]), 0
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                        else:
                            emit 0xa7068a99: (((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)), tokenIdFor[address(stor115[arg1])].field_0, address(ownerOf[arg1]), msg.sender
                            tokenIdFor[address(stor115[arg1])].field_256 = block.timestamp
                            if ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                                if not tokenAddress:
                                    if eth.balance(this.address) < ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000):
                                        revert with 0, 'Address: insufficient balance'
                                    call address(ownerOf[arg1]) with:
                                       value ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000) wei
                                         gas gas_remaining wei
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        mem[222 len 6]
                                    else:
                                        if not ext_call.success:
                                            revert with 0, 
                                                        32,
                                                        58,
                                                        0x65416464726573733a20756e61626c6520746f2073656e642076616c75652c20726563697069656e74206d617920686176652072657665727465,
                                                        mem[ceil32(return_data.size) + 223 len 6]
                                    ('bool', 'ext_call.success')
                                else:
                                    if 0xc5d2460186f7233c927e7db2dcc703c0e500b653ca82273b7bfad8045d85a470 == ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    if not ext_code.hash(tokenAddress):
                                        revert with 0, 'SafeERC20: call to non-contract'
                                    mem[196 len 64] = unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]), uint32(ownerOf[arg1]), Mask(224, 32, ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) >> 32
                                    call tokenAddress with:
                                       funct uint32(ownerOf[arg1])
                                         gas gas_remaining wei
                                        args Mask(224, 32, ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)) << 224, mem[260 len 4]
                                    if not return_data.size:
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if not unknown_0xa9059cbb(?????), Mask(224, 0, ownerOf[arg1]):
                                            revert with 0, 32, 42, 0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[306 len 22]
                                    else:
                                        mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        if not ext_call.success:
                                            revert with 0, 'SafeERC20: low-level call failed'
                                        if return_data.size:
                                            require return_data.size >= 32
                                            if not mem[228]:
                                                revert with 0, 
                                                            32,
                                                            42,
                                                            0xef5361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                                            mem[ceil32(return_data.size) + 307 len 22]
                            if onKeyCancelHookAddress:
                                require ext_code.size(onKeyCancelHookAddress)
                                call onKeyCancelHookAddress.0xb499b6c5 with:
                                     gas gas_remaining wei
                                    args msg.sender, address(ownerOf[arg1]), ((tokenIdFor[address(stor115[arg1])].field_256 * keyPrice) - (block.timestamp * keyPrice) / expirationDuration) - (refundPenaltyBasisPoints * keyPrice / 10000)
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
}



}
