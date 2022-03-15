contract main {




// =====================  Runtime code  =====================


#
#  - claimWpc(address arg1, address[] arg2)
#  - distributeMintWpc(address arg1, address arg2, bool arg3)
#  - distributeTransferWpc(address arg1, address arg2, address arg3, bool arg4)
#  - claimWpc(address[] arg1, address[] arg2, bool arg3, bool arg4)
#  - distributeSeizeWpc(address arg1, address arg2, address arg3, bool arg4)
#  - pendingWpcAccrued(address arg1, bool arg2, bool arg3)
#  - claimWpc(address arg1)
#
const wpcInitialIndex = 1000000000000000000 * 10^18

const wpcClaimThreshold = 10^15

const sub_a220db71(?) = ext_call.return_data[0]


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address piggyAddress;
address piggyBreederAddress;
address comptrollerAddress;
mapping of uint256 wpcSpeeds;
mapping of struct wpcSupplyState;
mapping of struct wpcBorrowState;
mapping of uint256 wpcSupplierIndex;
mapping of uint256 wpcBorrowerIndex;
mapping of uint256 wpcAccrued;
uint8 enableWpcClaim;
uint8 enableDistributeMintWpc; offset 8
uint8 enableDistributeRedeemWpc; offset 16
uint8 enableDistributeBorrowWpc; offset 24
uint8 enableDistributeRepayBorrowWpc; offset 32
uint8 enableDistributeSeizeWpc; offset 40
uint8 enableDistributeTransferWpc; offset 48
uint64 stor160;
uint256 stor160; offset 48
uint256 stor160; offset 40
uint256 stor160; offset 32
uint256 stor160; offset 24
uint256 stor160; offset 16
uint256 stor160; offset 8

function wpcSupplierIndex(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return wpcSupplierIndex[arg1][arg2]
}

function enableDistributeRepayBorrowWpc() payable {
    return bool(enableDistributeRepayBorrowWpc)
}

function enableDistributeMintWpc() payable {
    return bool(enableDistributeMintWpc)
}

function enableWpcClaim() payable {
    return bool(enableWpcClaim)
}

function wpcAccrued(address arg1) payable {
    require calldata.size - 4 >= 32
    return wpcAccrued[arg1]
}

function comptroller() payable {
    return comptrollerAddress
}

function enableDistributeSeizeWpc() payable {
    return bool(enableDistributeSeizeWpc)
}

function wpcBorrowState(address arg1) payable {
    require calldata.size - 4 >= 32
    return wpcBorrowState[arg1].field_0, wpcBorrowState[arg1].field_224
}

function owner() payable {
    return owner
}

function wpcSpeeds(address arg1) payable {
    require calldata.size - 4 >= 32
    return wpcSpeeds[arg1]
}

function enableDistributeRedeemWpc() payable {
    return bool(enableDistributeRedeemWpc)
}

function wpcBorrowerIndex(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return wpcBorrowerIndex[arg1][arg2]
}

function piggy() payable {
    return piggyAddress
}

function piggyBreeder() payable {
    return piggyBreederAddress
}

function enableDistributeTransferWpc() payable {
    return bool(enableDistributeTransferWpc)
}

function enableDistributeBorrowWpc() payable {
    return bool(enableDistributeBorrowWpc)
}

function wpcSupplyState(address arg1) payable {
    require calldata.size - 4 >= 32
    return wpcSupplyState[arg1].field_0, wpcSupplyState[arg1].field_224
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function _setEnableWpcClaim(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    enableWpcClaim = uint8(arg1)
    emit 0x6412ad31: 'enableWpcClaim', arg1
}

function _setEnableDistributeMintWpc(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    Mask(248, 0, stor160.field_8) = Mask(248, 0, arg1)
    emit 0x6412ad31: Array(len=23, data='enableDistributeMintWpc'), arg1
}

function _setEnableDistributeSeizeWpc(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    Mask(216, 0, stor160.field_40) = Mask(216, 0, arg1)
    emit 0x6412ad31: Array(len=24, data='enableDistributeSeizeWpc'), arg1
}

function _setEnableDistributeBorrowWpc(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    Mask(232, 0, stor160.field_24) = Mask(232, 0, arg1)
    emit 0x6412ad31: Array(len=25, data='enableDistributeBorrowWpc'), arg1
}

function _setEnableDistributeRedeemWpc(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    Mask(240, 0, stor160.field_16) = Mask(240, 0, arg1)
    emit 0x6412ad31: Array(len=25, data='enableDistributeRedeemWpc'), arg1
}

function _setEnableDistributeTransferWpc(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    Mask(208, 0, stor160.field_48) = Mask(208, 0, arg1)
    emit 0x6412ad31: Array(len=27, data='enableDistributeTransferWpc'), arg1
}

function _setEnableDistributeRepayBorrowWpc(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    Mask(224, 0, stor160.field_32) = Mask(224, 0, arg1)
    emit 0x6412ad31: Array(len=30, data='enableDistributeRepayBorrowWpc'), arg1
}

function _claimWpcFromPiggyBreeder(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(piggyBreederAddress)
    call piggyBreederAddress.claim(uint256 rg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit ClaimWpcFromPiggyBreeder(arg1);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _transferToken(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    if ext_call.return_data[0] >= arg3:
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), arg3
    else:
        call arg1.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _transferWpc(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(piggyAddress)
    staticcall piggyAddress.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(piggyAddress)
    if ext_call.return_data[0] >= arg2:
        call piggyAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
    else:
        call piggyAddress.transfer(address rg1, uint256 rg2) with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function _setEnableAll(bool arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    Mask(248, 0, stor160.field_8) = Mask(248, 0, arg1)
    emit 0x6412ad31: Array(len=23, data='enableDistributeMintWpc'), arg1
    Mask(240, 0, stor160.field_16) = Mask(240, 0, arg1)
    emit 0x6412ad31: Array(len=25, data='enableDistributeRedeemWpc'), arg1
    Mask(232, 0, stor160.field_24) = Mask(232, 0, arg1)
    emit 0x6412ad31: Array(len=25, data='enableDistributeBorrowWpc'), arg1
    Mask(224, 0, stor160.field_32) = Mask(224, 0, arg1)
    emit 0x6412ad31: Array(len=30, data='enableDistributeRepayBorrowWpc'), arg1
    Mask(216, 0, stor160.field_40) = Mask(216, 0, arg1)
    emit 0x6412ad31: Array(len=24, data='enableDistributeSeizeWpc'), arg1
    Mask(208, 0, stor160.field_48) = Mask(208, 0, arg1)
    emit 0x6412ad31: Array(len=27, data='enableDistributeTransferWpc'), arg1
    enableWpcClaim = uint8(arg1)
    emit 0x6412ad31: 'enableWpcClaim', arg1
}

function _stakeTokenToPiggyBreeder(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args piggyBreederAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(piggyBreederAddress)
    call piggyBreederAddress.stake(uint256 rg1, uint256 rg2) with:
         gas gas_remaining wei
        args arg2, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x9e607a73: address(arg1), arg2, ext_call.return_data[0]
}

function initialize(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if uint8(stor0.field_8):
        piggyAddress = arg1
        piggyBreederAddress = arg2
        comptrollerAddress = arg3
        stor160.field_0 % 72057594037927936 = 0
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[210 len 18]
        if uint8(stor0.field_8):
            piggyAddress = arg1
            piggyBreederAddress = arg2
            comptrollerAddress = arg3
            stor160.field_0 % 72057594037927936 = 0
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            piggyAddress = arg1
            piggyBreederAddress = arg2
            comptrollerAddress = arg3
            stor160.field_0 % 72057594037927936 = 0
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                46,
                                0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[210 len 18]
            if uint8(stor0.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor0.field_0) = 1
                uint8(stor0.field_8) = 1
                Mask(248, 0, stor0.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    46,
                                    0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[210 len 18]
                if uint8(stor0.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor0.field_0) = 1
                    uint8(stor0.field_8) = 1
                    Mask(248, 0, stor0.field_8) = 0
                    uint8(stor0.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor0.field_0):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        46,
                                        0x72436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[210 len 18]
                    if uint8(stor0.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor0.field_0) = 1
                        uint8(stor0.field_8) = 1
                        Mask(248, 0, stor0.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
                        uint8(stor0.field_8) = 0
}

function _setWpcSpeed(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'sOwnable: caller is not the owne'
    if not wpcSpeeds[address(arg1)]:
        if arg2:
            require ext_code.size(comptrollerAddress)
            staticcall comptrollerAddress.0x3d98a1e5 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'wpc market is not listed'
            require ext_code.size(comptrollerAddress)
            staticcall comptrollerAddress.0x90ba8307 with:
                    gas gas_remaining wei
                   args arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                require ext_code.size(comptrollerAddress)
                call comptrollerAddress.0x478e3568 with:
                     gas gas_remaining wei
                    args address(arg1), 1
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if not wpcSupplyState[address(arg1)].field_0:
                if not wpcSupplyState[address(arg1)].field_224:
                    require ext_code.size(0x4200000000000000000000000000000000000013)
                    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 4294967296:
                        revert with 0, 'ck number exceeds 32 bits'
                    wpcSupplyState[address(arg1)].field_0 = 0
                    wpcSupplyState[address(arg1)].field_32 = 232830643653869628906250000
                    wpcSupplyState[address(arg1)].field_120 = 0
                    wpcSupplyState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
            if not wpcBorrowState[address(arg1)].field_0:
                if not wpcBorrowState[address(arg1)].field_224:
                    require ext_code.size(0x4200000000000000000000000000000000000013)
                    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] >= 4294967296:
                        revert with 0, 'ck number exceeds 32 bits'
                    wpcBorrowState[address(arg1)].field_0 = 0
                    wpcBorrowState[address(arg1)].field_32 = 232830643653869628906250000
                    wpcBorrowState[address(arg1)].field_120 = 0
                    wpcBorrowState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
    else:
        require ext_code.size(arg1)
        staticcall arg1.borrowIndex() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x4200000000000000000000000000000000000013)
        staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if wpcSupplyState[address(arg1)].field_224 > ext_call.return_data[0]:
            revert with 0, 'subtraction underflow'
        if ext_call.return_data[0] - wpcSupplyState[address(arg1)].field_224 <= 0:
            if ext_call.return_data[0] - wpcSupplyState[address(arg1)].field_224:
                if ext_call.return_data[0] >= 4294967296:
                    revert with 0, 'ck number exceeds 32 bits'
                wpcSupplyState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
        else:
            if wpcSpeeds[address(arg1)] <= 0:
                if ext_call.return_data[0] - wpcSupplyState[address(arg1)].field_224:
                    if ext_call.return_data[0] >= 4294967296:
                        revert with 0, 'ck number exceeds 32 bits'
                    wpcSupplyState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
            else:
                require ext_code.size(arg1)
                staticcall arg1.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0] - wpcSupplyState[address(arg1)].field_224:
                    if ext_call.return_data[0] <= 0:
                        if wpcSupplyState[address(arg1)].field_0 < wpcSupplyState[address(arg1)].field_0:
                            revert with 0, 'addition overflow'
                        if wpcSupplyState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'new index exceeds 224 bits'
                        if ext_call.return_data[0] >= 4294967296:
                            revert with 0, 'ck number exceeds 32 bits'
                        wpcSupplyState[address(arg1)].field_0 = wpcSupplyState[address(arg1)].field_0
                    else:
                        if not ext_call.return_data[0]:
                            revert with 0, 'divide by zero'
                        if (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 < wpcSupplyState[address(arg1)].field_0:
                            revert with 0, 'addition overflow'
                        if (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'new index exceeds 224 bits'
                        if ext_call.return_data[0] >= 4294967296:
                            revert with 0, 'ck number exceeds 32 bits'
                        wpcSupplyState[address(arg1)].field_0 = Mask(224, 0, (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0)
                else:
                    if not wpcSpeeds[address(arg1)]:
                        if ext_call.return_data[0] <= 0:
                            if wpcSupplyState[address(arg1)].field_0 < wpcSupplyState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if wpcSupplyState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcSupplyState[address(arg1)].field_0 = wpcSupplyState[address(arg1)].field_0
                        else:
                            if not ext_call.return_data[0]:
                                revert with 0, 'divide by zero'
                            if (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 < wpcSupplyState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcSupplyState[address(arg1)].field_0 = Mask(224, 0, (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0)
                    else:
                        require ext_call.return_data[0] - wpcSupplyState[address(arg1)].field_224
                        if (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / ext_call.return_data[0] - wpcSupplyState[address(arg1)].field_224 != wpcSpeeds[address(arg1)]:
                            revert with 0, 'multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            if wpcSupplyState[address(arg1)].field_0 < wpcSupplyState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if wpcSupplyState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcSupplyState[address(arg1)].field_0 = wpcSupplyState[address(arg1)].field_0
                        else:
                            if not (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'divide by zero'
                                if (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 < wpcSupplyState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcSupplyState[address(arg1)].field_0 = Mask(224, 0, (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0)
                            else:
                                require (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)])
                                if (1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) != 1000000000000000000 * 10^18:
                                    revert with 0, 'multiplication overflow'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'divide by zero'
                                if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 < wpcSupplyState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcSupplyState[address(arg1)].field_0 = Mask(224, 0, ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0)
                wpcSupplyState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
        require ext_code.size(0x4200000000000000000000000000000000000013)
        staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if wpcBorrowState[address(arg1)].field_224 > ext_call.return_data[0]:
            revert with 0, 'subtraction underflow'
        if ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224 <= 0:
            if ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224:
                if ext_call.return_data[0] >= 4294967296:
                    revert with 0, 'ck number exceeds 32 bits'
                wpcBorrowState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
        else:
            if wpcSpeeds[address(arg1)] <= 0:
                if ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224:
                    if ext_call.return_data[0] >= 4294967296:
                        revert with 0, 'ck number exceeds 32 bits'
                    wpcBorrowState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
            else:
                require ext_code.size(arg1)
                staticcall arg1.totalBorrows() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'divide by zero'
                    if not ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224:
                        if 0 / ext_call.return_data[0] <= 0:
                            if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                        else:
                            if not 0 / ext_call.return_data[0]:
                                revert with 0, 'divide by zero'
                            if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                    else:
                        if not wpcSpeeds[address(arg1)]:
                            if 0 / ext_call.return_data[0] <= 0:
                                if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                            else:
                                if not 0 / ext_call.return_data[0]:
                                    revert with 0, 'divide by zero'
                                if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                        else:
                            require ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224
                            if (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224 != wpcSpeeds[address(arg1)]:
                                revert with 0, 'multiplication overflow'
                            if 0 / ext_call.return_data[0] <= 0:
                                if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                            else:
                                if not (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]):
                                    if not 0 / ext_call.return_data[0]:
                                        revert with 0, 'divide by zero'
                                    if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                        revert with 0, 'addition overflow'
                                    if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'new index exceeds 224 bits'
                                    if ext_call.return_data[0] >= 4294967296:
                                        revert with 0, 'ck number exceeds 32 bits'
                                    wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                                else:
                                    require (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)])
                                    if (1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) != 1000000000000000000 * 10^18:
                                        revert with 0, 'multiplication overflow'
                                    if not 0 / ext_call.return_data[0]:
                                        revert with 0, 'divide by zero'
                                    if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                        revert with 0, 'addition overflow'
                                    if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'new index exceeds 224 bits'
                                    if ext_call.return_data[0] >= 4294967296:
                                        revert with 0, 'ck number exceeds 32 bits'
                                    wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 'multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'divide by zero'
                    if not ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                            if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                        else:
                            if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 0, 'divide by zero'
                            if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                    else:
                        if not wpcSpeeds[address(arg1)]:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                            else:
                                if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    revert with 0, 'divide by zero'
                                if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                        else:
                            require ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224
                            if (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224 != wpcSpeeds[address(arg1)]:
                                revert with 0, 'multiplication overflow'
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                            else:
                                if not (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]):
                                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                        revert with 0, 'divide by zero'
                                    if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                        revert with 0, 'addition overflow'
                                    if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'new index exceeds 224 bits'
                                    if ext_call.return_data[0] >= 4294967296:
                                        revert with 0, 'ck number exceeds 32 bits'
                                    wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                                else:
                                    require (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)])
                                    if (1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) != 1000000000000000000 * 10^18:
                                        revert with 0, 'multiplication overflow'
                                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                        revert with 0, 'divide by zero'
                                    if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                        revert with 0, 'addition overflow'
                                    if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'new index exceeds 224 bits'
                                    if ext_call.return_data[0] >= 4294967296:
                                        revert with 0, 'ck number exceeds 32 bits'
                                    wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                wpcBorrowState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
    if wpcSpeeds[address(arg1)] != arg2:
        wpcSpeeds[address(arg1)] = arg2
        emit 0xff762c44: arg2, arg1
}

function distributeBorrowWpc(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if comptrollerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'only comptroller or owner'
    if enableDistributeBorrowWpc:
        require ext_code.size(arg1)
        staticcall arg1.borrowIndex() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x4200000000000000000000000000000000000013)
        staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if wpcBorrowState[address(arg1)].field_224 > ext_call.return_data[0]:
            revert with 0, 'subtraction underflow'
        if ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224 <= 0:
            if ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224:
                if ext_call.return_data[0] >= 4294967296:
                    revert with 0, 'ck number exceeds 32 bits'
                wpcBorrowState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
        else:
            if wpcSpeeds[address(arg1)] <= 0:
                if ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224:
                    if ext_call.return_data[0] >= 4294967296:
                        revert with 0, 'ck number exceeds 32 bits'
                    wpcBorrowState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
            else:
                require ext_code.size(arg1)
                staticcall arg1.totalBorrows() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'divide by zero'
                    if not ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224:
                        if 0 / ext_call.return_data[0] <= 0:
                            if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                        else:
                            if not 0 / ext_call.return_data[0]:
                                revert with 0, 'divide by zero'
                            if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                    else:
                        if not wpcSpeeds[address(arg1)]:
                            if 0 / ext_call.return_data[0] <= 0:
                                if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                            else:
                                if not 0 / ext_call.return_data[0]:
                                    revert with 0, 'divide by zero'
                                if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                        else:
                            require ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224
                            if (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224 != wpcSpeeds[address(arg1)]:
                                revert with 0, 'multiplication overflow'
                            if 0 / ext_call.return_data[0] <= 0:
                                if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                            else:
                                if not (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]):
                                    if not 0 / ext_call.return_data[0]:
                                        revert with 0, 'divide by zero'
                                    if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                        revert with 0, 'addition overflow'
                                    if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'new index exceeds 224 bits'
                                    if ext_call.return_data[0] >= 4294967296:
                                        revert with 0, 'ck number exceeds 32 bits'
                                    wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                                else:
                                    require (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)])
                                    if (1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) != 1000000000000000000 * 10^18:
                                        revert with 0, 'multiplication overflow'
                                    if not 0 / ext_call.return_data[0]:
                                        revert with 0, 'divide by zero'
                                    if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                        revert with 0, 'addition overflow'
                                    if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'new index exceeds 224 bits'
                                    if ext_call.return_data[0] >= 4294967296:
                                        revert with 0, 'ck number exceeds 32 bits'
                                    wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 'multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'divide by zero'
                    if not ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                            if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                        else:
                            if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 0, 'divide by zero'
                            if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                    else:
                        if not wpcSpeeds[address(arg1)]:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                            else:
                                if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    revert with 0, 'divide by zero'
                                if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                        else:
                            require ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224
                            if (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224 != wpcSpeeds[address(arg1)]:
                                revert with 0, 'multiplication overflow'
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                            else:
                                if not (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]):
                                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                        revert with 0, 'divide by zero'
                                    if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                        revert with 0, 'addition overflow'
                                    if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'new index exceeds 224 bits'
                                    if ext_call.return_data[0] >= 4294967296:
                                        revert with 0, 'ck number exceeds 32 bits'
                                    wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                                else:
                                    require (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)])
                                    if (1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) != 1000000000000000000 * 10^18:
                                        revert with 0, 'multiplication overflow'
                                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                        revert with 0, 'divide by zero'
                                    if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                        revert with 0, 'addition overflow'
                                    if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'new index exceeds 224 bits'
                                    if ext_call.return_data[0] >= 4294967296:
                                        revert with 0, 'ck number exceeds 32 bits'
                                    wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                wpcBorrowState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
        wpcBorrowerIndex[address(arg1)][address(arg2)] = wpcBorrowState[address(arg1)].field_0
        if wpcBorrowerIndex[address(arg1)][address(arg2)]:
            if wpcBorrowerIndex[address(arg1)][address(arg2)] > wpcBorrowState[address(arg1)].field_0:
                revert with 0, 'subtraction underflow'
            require ext_code.size(arg1)
            staticcall arg1.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'divide by zero'
                if not 0 / ext_call.return_data[0]:
                    if wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                        revert with 0, 'addition overflow'
                    if arg3:
                        if wpcAccrued[address(arg2)] >= 0:
                            if wpcAccrued[address(arg2)] > 0:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    else:
                        if wpcAccrued[address(arg2)] >= 10^15:
                            if wpcAccrued[address(arg2)] > 0:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    emit 0x51c85dc0: 0, wpcBorrowState[address(arg1)].field_0, arg1, arg2
                else:
                    if not wpcBorrowState[address(arg1)].field_0 - wpcBorrowerIndex[address(arg1)][address(arg2)]:
                        if wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                            revert with 0, 'addition overflow'
                        if arg3:
                            if wpcAccrued[address(arg2)] >= 0:
                                if wpcAccrued[address(arg2)] > 0:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        else:
                            if wpcAccrued[address(arg2)] >= 10^15:
                                if wpcAccrued[address(arg2)] > 0:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        emit 0x51c85dc0: 0, wpcBorrowState[address(arg1)].field_0, arg1, arg2
                    else:
                        require 0 / ext_call.return_data[0]
                        if (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != wpcBorrowState[address(arg1)].field_0 - wpcBorrowerIndex[address(arg1)][address(arg2)]:
                            revert with 0, 'multiplication overflow'
                        if ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                            revert with 0, 'addition overflow'
                        if arg3:
                            if ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < 0:
                                wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                            else:
                                if ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] <= 0:
                                    wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                else:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] > ext_call.return_data[0]:
                                        wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                    else:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        else:
                            if ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < 10^15:
                                wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                            else:
                                if ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] <= 0:
                                    wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                else:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] > ext_call.return_data[0]:
                                        wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                    else:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        emit 0x51c85dc0: (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18, wpcBorrowState[address(arg1)].field_0, arg1, arg2
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 'multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'divide by zero'
                if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    if wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                        revert with 0, 'addition overflow'
                    if arg3:
                        if wpcAccrued[address(arg2)] >= 0:
                            if wpcAccrued[address(arg2)] > 0:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    else:
                        if wpcAccrued[address(arg2)] >= 10^15:
                            if wpcAccrued[address(arg2)] > 0:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    emit 0x51c85dc0: 0, wpcBorrowState[address(arg1)].field_0, arg1, arg2
                else:
                    if not wpcBorrowState[address(arg1)].field_0 - wpcBorrowerIndex[address(arg1)][address(arg2)]:
                        if wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                            revert with 0, 'addition overflow'
                        if arg3:
                            if wpcAccrued[address(arg2)] >= 0:
                                if wpcAccrued[address(arg2)] > 0:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        else:
                            if wpcAccrued[address(arg2)] >= 10^15:
                                if wpcAccrued[address(arg2)] > 0:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        emit 0x51c85dc0: 0, wpcBorrowState[address(arg1)].field_0, arg1, arg2
                    else:
                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        if (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != wpcBorrowState[address(arg1)].field_0 - wpcBorrowerIndex[address(arg1)][address(arg2)]:
                            revert with 0, 'multiplication overflow'
                        if ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                            revert with 0, 'addition overflow'
                        if arg3:
                            if ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < 0:
                                wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                            else:
                                if ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] <= 0:
                                    wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                else:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] > ext_call.return_data[0]:
                                        wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                    else:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        else:
                            if ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < 10^15:
                                wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                            else:
                                if ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] <= 0:
                                    wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                else:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] > ext_call.return_data[0]:
                                        wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                    else:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        emit 0x51c85dc0: (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18, wpcBorrowState[address(arg1)].field_0, arg1, arg2
}

function distributeRepayBorrowWpc(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if comptrollerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'only comptroller or owner'
    if enableDistributeRepayBorrowWpc:
        require ext_code.size(arg1)
        staticcall arg1.borrowIndex() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(0x4200000000000000000000000000000000000013)
        staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if wpcBorrowState[address(arg1)].field_224 > ext_call.return_data[0]:
            revert with 0, 'subtraction underflow'
        if ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224 <= 0:
            if ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224:
                if ext_call.return_data[0] >= 4294967296:
                    revert with 0, 'ck number exceeds 32 bits'
                wpcBorrowState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
        else:
            if wpcSpeeds[address(arg1)] <= 0:
                if ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224:
                    if ext_call.return_data[0] >= 4294967296:
                        revert with 0, 'ck number exceeds 32 bits'
                    wpcBorrowState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
            else:
                require ext_code.size(arg1)
                staticcall arg1.totalBorrows() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if not ext_call.return_data[0]:
                        revert with 0, 'divide by zero'
                    if not ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224:
                        if 0 / ext_call.return_data[0] <= 0:
                            if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                        else:
                            if not 0 / ext_call.return_data[0]:
                                revert with 0, 'divide by zero'
                            if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                    else:
                        if not wpcSpeeds[address(arg1)]:
                            if 0 / ext_call.return_data[0] <= 0:
                                if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                            else:
                                if not 0 / ext_call.return_data[0]:
                                    revert with 0, 'divide by zero'
                                if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                        else:
                            require ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224
                            if (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224 != wpcSpeeds[address(arg1)]:
                                revert with 0, 'multiplication overflow'
                            if 0 / ext_call.return_data[0] <= 0:
                                if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                            else:
                                if not (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]):
                                    if not 0 / ext_call.return_data[0]:
                                        revert with 0, 'divide by zero'
                                    if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                        revert with 0, 'addition overflow'
                                    if (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'new index exceeds 224 bits'
                                    if ext_call.return_data[0] >= 4294967296:
                                        revert with 0, 'ck number exceeds 32 bits'
                                    wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                                else:
                                    require (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)])
                                    if (1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) != 1000000000000000000 * 10^18:
                                        revert with 0, 'multiplication overflow'
                                    if not 0 / ext_call.return_data[0]:
                                        revert with 0, 'divide by zero'
                                    if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                        revert with 0, 'addition overflow'
                                    if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'new index exceeds 224 bits'
                                    if ext_call.return_data[0] >= 4294967296:
                                        revert with 0, 'ck number exceeds 32 bits'
                                    wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 0 / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                else:
                    require ext_call.return_data[0]
                    if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                        revert with 0, 'multiplication overflow'
                    if not ext_call.return_data[0]:
                        revert with 0, 'divide by zero'
                    if not ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224:
                        if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                            if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                        else:
                            if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                revert with 0, 'divide by zero'
                            if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                    else:
                        if not wpcSpeeds[address(arg1)]:
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                            else:
                                if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                    revert with 0, 'divide by zero'
                                if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                        else:
                            require ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224
                            if (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / ext_call.return_data[0] - wpcBorrowState[address(arg1)].field_224 != wpcSpeeds[address(arg1)]:
                                revert with 0, 'multiplication overflow'
                            if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                                if wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcBorrowState[address(arg1)].field_0 = wpcBorrowState[address(arg1)].field_0
                            else:
                                if not (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]):
                                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                        revert with 0, 'divide by zero'
                                    if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                        revert with 0, 'addition overflow'
                                    if (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'new index exceeds 224 bits'
                                    if ext_call.return_data[0] >= 4294967296:
                                        revert with 0, 'ck number exceeds 32 bits'
                                    wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, (0 / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                                else:
                                    require (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)])
                                    if (1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) != 1000000000000000000 * 10^18:
                                        revert with 0, 'multiplication overflow'
                                    if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                                        revert with 0, 'divide by zero'
                                    if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 < wpcBorrowState[address(arg1)].field_0:
                                        revert with 0, 'addition overflow'
                                    if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                        revert with 0, 'new index exceeds 224 bits'
                                    if ext_call.return_data[0] >= 4294967296:
                                        revert with 0, 'ck number exceeds 32 bits'
                                    wpcBorrowState[address(arg1)].field_0 = Mask(224, 0, ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcBorrowState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) + wpcBorrowState[address(arg1)].field_0)
                wpcBorrowState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
        wpcBorrowerIndex[address(arg1)][address(arg2)] = wpcBorrowState[address(arg1)].field_0
        if wpcBorrowerIndex[address(arg1)][address(arg2)]:
            if wpcBorrowerIndex[address(arg1)][address(arg2)] > wpcBorrowState[address(arg1)].field_0:
                revert with 0, 'subtraction underflow'
            require ext_code.size(arg1)
            staticcall arg1.borrowBalanceStored(address rg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if not ext_call.return_data[0]:
                    revert with 0, 'divide by zero'
                if not 0 / ext_call.return_data[0]:
                    if wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                        revert with 0, 'addition overflow'
                    if arg3:
                        if wpcAccrued[address(arg2)] >= 0:
                            if wpcAccrued[address(arg2)] > 0:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    else:
                        if wpcAccrued[address(arg2)] >= 10^15:
                            if wpcAccrued[address(arg2)] > 0:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    emit 0x51c85dc0: 0, wpcBorrowState[address(arg1)].field_0, arg1, arg2
                else:
                    if not wpcBorrowState[address(arg1)].field_0 - wpcBorrowerIndex[address(arg1)][address(arg2)]:
                        if wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                            revert with 0, 'addition overflow'
                        if arg3:
                            if wpcAccrued[address(arg2)] >= 0:
                                if wpcAccrued[address(arg2)] > 0:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        else:
                            if wpcAccrued[address(arg2)] >= 10^15:
                                if wpcAccrued[address(arg2)] > 0:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        emit 0x51c85dc0: 0, wpcBorrowState[address(arg1)].field_0, arg1, arg2
                    else:
                        require 0 / ext_call.return_data[0]
                        if (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 0 / ext_call.return_data[0] != wpcBorrowState[address(arg1)].field_0 - wpcBorrowerIndex[address(arg1)][address(arg2)]:
                            revert with 0, 'multiplication overflow'
                        if ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                            revert with 0, 'addition overflow'
                        if arg3:
                            if ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < 0:
                                wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                            else:
                                if ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] <= 0:
                                    wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                else:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] > ext_call.return_data[0]:
                                        wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                    else:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        else:
                            if ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < 10^15:
                                wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                            else:
                                if ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] <= 0:
                                    wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                else:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] > ext_call.return_data[0]:
                                        wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                    else:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), ((wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        emit 0x51c85dc0: (wpcBorrowState[address(arg1)].field_0 * 0 / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 0 / ext_call.return_data[0]) / 1000000000000000000 * 10^18, wpcBorrowState[address(arg1)].field_0, arg1, arg2
            else:
                require ext_call.return_data[0]
                if 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != 10^18:
                    revert with 0, 'multiplication overflow'
                if not ext_call.return_data[0]:
                    revert with 0, 'divide by zero'
                if not 10^18 * ext_call.return_data[0] / ext_call.return_data[0]:
                    if wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                        revert with 0, 'addition overflow'
                    if arg3:
                        if wpcAccrued[address(arg2)] >= 0:
                            if wpcAccrued[address(arg2)] > 0:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    else:
                        if wpcAccrued[address(arg2)] >= 10^15:
                            if wpcAccrued[address(arg2)] > 0:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    emit 0x51c85dc0: 0, wpcBorrowState[address(arg1)].field_0, arg1, arg2
                else:
                    if not wpcBorrowState[address(arg1)].field_0 - wpcBorrowerIndex[address(arg1)][address(arg2)]:
                        if wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                            revert with 0, 'addition overflow'
                        if arg3:
                            if wpcAccrued[address(arg2)] >= 0:
                                if wpcAccrued[address(arg2)] > 0:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        else:
                            if wpcAccrued[address(arg2)] >= 10^15:
                                if wpcAccrued[address(arg2)] > 0:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        emit 0x51c85dc0: 0, wpcBorrowState[address(arg1)].field_0, arg1, arg2
                    else:
                        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0]
                        if (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] / ext_call.return_data[0] != wpcBorrowState[address(arg1)].field_0 - wpcBorrowerIndex[address(arg1)][address(arg2)]:
                            revert with 0, 'multiplication overflow'
                        if ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                            revert with 0, 'addition overflow'
                        if arg3:
                            if ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < 0:
                                wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                            else:
                                if ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] <= 0:
                                    wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                else:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] > ext_call.return_data[0]:
                                        wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                    else:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        else:
                            if ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < 10^15:
                                wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                            else:
                                if ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] <= 0:
                                    wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                else:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] > ext_call.return_data[0]:
                                        wpcAccrued[address(arg2)] += (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                    else:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), ((wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        emit 0x51c85dc0: (wpcBorrowState[address(arg1)].field_0 * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) - (wpcBorrowerIndex[address(arg1)][address(arg2)] * 10^18 * ext_call.return_data[0] / ext_call.return_data[0]) / 1000000000000000000 * 10^18, wpcBorrowState[address(arg1)].field_0, arg1, arg2
}

function distributeRedeemWpc(address arg1, address arg2, bool arg3) payable {
    require calldata.size - 4 >= 96
    if comptrollerAddress != msg.sender:
        if owner != msg.sender:
            revert with 0, 'only comptroller or owner'
    if enableDistributeRedeemWpc:
        require ext_code.size(0x4200000000000000000000000000000000000013)
        staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if wpcSupplyState[address(arg1)].field_224 > ext_call.return_data[0]:
            revert with 0, 'subtraction underflow'
        if ext_call.return_data[0] - wpcSupplyState[address(arg1)].field_224 <= 0:
            if ext_call.return_data[0] - wpcSupplyState[address(arg1)].field_224:
                if ext_call.return_data[0] >= 4294967296:
                    revert with 0, 'ck number exceeds 32 bits'
                wpcSupplyState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
        else:
            if wpcSpeeds[address(arg1)] <= 0:
                if ext_call.return_data[0] - wpcSupplyState[address(arg1)].field_224:
                    if ext_call.return_data[0] >= 4294967296:
                        revert with 0, 'ck number exceeds 32 bits'
                    wpcSupplyState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
            else:
                require ext_code.size(arg1)
                staticcall arg1.totalSupply() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0] - wpcSupplyState[address(arg1)].field_224:
                    if ext_call.return_data[0] <= 0:
                        if wpcSupplyState[address(arg1)].field_0 < wpcSupplyState[address(arg1)].field_0:
                            revert with 0, 'addition overflow'
                        if wpcSupplyState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'new index exceeds 224 bits'
                        if ext_call.return_data[0] >= 4294967296:
                            revert with 0, 'ck number exceeds 32 bits'
                        wpcSupplyState[address(arg1)].field_0 = wpcSupplyState[address(arg1)].field_0
                    else:
                        if not ext_call.return_data[0]:
                            revert with 0, 'divide by zero'
                        if (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 < wpcSupplyState[address(arg1)].field_0:
                            revert with 0, 'addition overflow'
                        if (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                            revert with 0, 'new index exceeds 224 bits'
                        if ext_call.return_data[0] >= 4294967296:
                            revert with 0, 'ck number exceeds 32 bits'
                        wpcSupplyState[address(arg1)].field_0 = Mask(224, 0, (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0)
                else:
                    if not wpcSpeeds[address(arg1)]:
                        if ext_call.return_data[0] <= 0:
                            if wpcSupplyState[address(arg1)].field_0 < wpcSupplyState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if wpcSupplyState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcSupplyState[address(arg1)].field_0 = wpcSupplyState[address(arg1)].field_0
                        else:
                            if not ext_call.return_data[0]:
                                revert with 0, 'divide by zero'
                            if (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 < wpcSupplyState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcSupplyState[address(arg1)].field_0 = Mask(224, 0, (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0)
                    else:
                        require ext_call.return_data[0] - wpcSupplyState[address(arg1)].field_224
                        if (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / ext_call.return_data[0] - wpcSupplyState[address(arg1)].field_224 != wpcSpeeds[address(arg1)]:
                            revert with 0, 'multiplication overflow'
                        if ext_call.return_data[0] <= 0:
                            if wpcSupplyState[address(arg1)].field_0 < wpcSupplyState[address(arg1)].field_0:
                                revert with 0, 'addition overflow'
                            if wpcSupplyState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                revert with 0, 'new index exceeds 224 bits'
                            if ext_call.return_data[0] >= 4294967296:
                                revert with 0, 'ck number exceeds 32 bits'
                            wpcSupplyState[address(arg1)].field_0 = wpcSupplyState[address(arg1)].field_0
                        else:
                            if not (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]):
                                if not ext_call.return_data[0]:
                                    revert with 0, 'divide by zero'
                                if (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 < wpcSupplyState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcSupplyState[address(arg1)].field_0 = Mask(224, 0, (0 / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0)
                            else:
                                require (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)])
                                if (1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / (ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) != 1000000000000000000 * 10^18:
                                    revert with 0, 'multiplication overflow'
                                if not ext_call.return_data[0]:
                                    revert with 0, 'divide by zero'
                                if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 < wpcSupplyState[address(arg1)].field_0:
                                    revert with 0, 'addition overflow'
                                if ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0 >= 0x100000000000000000000000000000000000000000000000000000000:
                                    revert with 0, 'new index exceeds 224 bits'
                                if ext_call.return_data[0] >= 4294967296:
                                    revert with 0, 'ck number exceeds 32 bits'
                                wpcSupplyState[address(arg1)].field_0 = Mask(224, 0, ((1000000000000000000 * 10^18 * ext_call.return_data[0] * wpcSpeeds[address(arg1)]) - (1000000000000000000 * 10^18 * wpcSupplyState[address(arg1)].field_224 * wpcSpeeds[address(arg1)]) / ext_call.return_data[0]) + wpcSupplyState[address(arg1)].field_0)
                wpcSupplyState[address(arg1)].field_224 = uint32(ext_call.return_data[0])
        wpcSupplierIndex[address(arg1)][address(arg2)] = wpcSupplyState[address(arg1)].field_0
        if wpcSupplierIndex[address(arg1)][address(arg2)]:
            if wpcSupplierIndex[address(arg1)][address(arg2)] > wpcSupplyState[address(arg1)].field_0:
                revert with 0, 'subtraction underflow'
            require ext_code.size(arg1)
            staticcall arg1.balanceOf(address rg1) with:
                    gas gas_remaining wei
                   args arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                if wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                    revert with 0, 'addition overflow'
                if arg3:
                    if wpcAccrued[address(arg2)] >= 0:
                        if wpcAccrued[address(arg2)] > 0:
                            require ext_code.size(piggyAddress)
                            staticcall piggyAddress.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                require ext_code.size(piggyAddress)
                                call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), wpcAccrued[address(arg2)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                wpcAccrued[address(arg2)] = 0
                else:
                    if wpcAccrued[address(arg2)] >= 10^15:
                        if wpcAccrued[address(arg2)] > 0:
                            require ext_code.size(piggyAddress)
                            staticcall piggyAddress.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args this.address
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                require ext_code.size(piggyAddress)
                                call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                     gas gas_remaining wei
                                    args address(arg2), wpcAccrued[address(arg2)]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                wpcAccrued[address(arg2)] = 0
                emit 0xbe0c0c96: 0, wpcSupplyState[address(arg1)].field_0, arg1, arg2
            else:
                if not wpcSupplyState[address(arg1)].field_0 - wpcSupplierIndex[address(arg1)][address(arg2)]:
                    if wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                        revert with 0, 'addition overflow'
                    if arg3:
                        if wpcAccrued[address(arg2)] >= 0:
                            if wpcAccrued[address(arg2)] > 0:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    else:
                        if wpcAccrued[address(arg2)] >= 10^15:
                            if wpcAccrued[address(arg2)] > 0:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    emit 0xbe0c0c96: 0, wpcSupplyState[address(arg1)].field_0, arg1, arg2
                else:
                    require ext_call.return_data[0]
                    if (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != wpcSupplyState[address(arg1)].field_0 - wpcSupplierIndex[address(arg1)][address(arg2)]:
                        revert with 0, 'multiplication overflow'
                    if ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                        revert with 0, 'addition overflow'
                    if arg3:
                        if ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < 0:
                            wpcAccrued[address(arg2)] += (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                        else:
                            if ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] <= 0:
                                wpcAccrued[address(arg2)] += (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                            else:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] > ext_call.return_data[0]:
                                    wpcAccrued[address(arg2)] += (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                else:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    else:
                        if ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < 10^15:
                            wpcAccrued[address(arg2)] += (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                        else:
                            if ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] <= 0:
                                wpcAccrued[address(arg2)] += (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                            else:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] > ext_call.return_data[0]:
                                    wpcAccrued[address(arg2)] += (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                else:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    emit 0xbe0c0c96: (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18, wpcSupplyState[address(arg1)].field_0, arg1, arg2
        else:
            if not wpcSupplyState[address(arg1)].field_0:
                if wpcSupplierIndex[address(arg1)][address(arg2)] > wpcSupplyState[address(arg1)].field_0:
                    revert with 0, 'subtraction underflow'
                require ext_code.size(arg1)
                staticcall arg1.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                        revert with 0, 'addition overflow'
                    if arg3:
                        if wpcAccrued[address(arg2)] >= 0:
                            if wpcAccrued[address(arg2)] > 0:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    else:
                        if wpcAccrued[address(arg2)] >= 10^15:
                            if wpcAccrued[address(arg2)] > 0:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    emit 0xbe0c0c96: 0, wpcSupplyState[address(arg1)].field_0, arg1, arg2
                else:
                    if not wpcSupplyState[address(arg1)].field_0 - wpcSupplierIndex[address(arg1)][address(arg2)]:
                        if wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                            revert with 0, 'addition overflow'
                        if arg3:
                            if wpcAccrued[address(arg2)] >= 0:
                                if wpcAccrued[address(arg2)] > 0:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        else:
                            if wpcAccrued[address(arg2)] >= 10^15:
                                if wpcAccrued[address(arg2)] > 0:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        emit 0xbe0c0c96: 0, wpcSupplyState[address(arg1)].field_0, arg1, arg2
                    else:
                        require ext_call.return_data[0]
                        if (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / ext_call.return_data[0] != wpcSupplyState[address(arg1)].field_0 - wpcSupplierIndex[address(arg1)][address(arg2)]:
                            revert with 0, 'multiplication overflow'
                        if ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                            revert with 0, 'addition overflow'
                        if arg3:
                            if ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < 0:
                                wpcAccrued[address(arg2)] += (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                            else:
                                if ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] <= 0:
                                    wpcAccrued[address(arg2)] += (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                else:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] > ext_call.return_data[0]:
                                        wpcAccrued[address(arg2)] += (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                    else:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        else:
                            if ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < 10^15:
                                wpcAccrued[address(arg2)] += (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                            else:
                                if ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] <= 0:
                                    wpcAccrued[address(arg2)] += (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                else:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] > ext_call.return_data[0]:
                                        wpcAccrued[address(arg2)] += (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                    else:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), ((wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        emit 0xbe0c0c96: (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) - (wpcSupplierIndex[address(arg1)][address(arg2)] * ext_call.return_data[0]) / 1000000000000000000 * 10^18, wpcSupplyState[address(arg1)].field_0, arg1, arg2
            else:
                if 1000000000000000000 * 10^18 > wpcSupplyState[address(arg1)].field_0:
                    revert with 0, 'subtraction underflow'
                require ext_code.size(arg1)
                staticcall arg1.balanceOf(address rg1) with:
                        gas gas_remaining wei
                       args arg2
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if not ext_call.return_data[0]:
                    if wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                        revert with 0, 'addition overflow'
                    if arg3:
                        if wpcAccrued[address(arg2)] >= 0:
                            if wpcAccrued[address(arg2)] > 0:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    else:
                        if wpcAccrued[address(arg2)] >= 10^15:
                            if wpcAccrued[address(arg2)] > 0:
                                require ext_code.size(piggyAddress)
                                staticcall piggyAddress.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args this.address
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                    require ext_code.size(piggyAddress)
                                    call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                         gas gas_remaining wei
                                        args address(arg2), wpcAccrued[address(arg2)]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    wpcAccrued[address(arg2)] = 0
                    emit 0xbe0c0c96: 0, wpcSupplyState[address(arg1)].field_0, arg1, arg2
                else:
                    if not wpcSupplyState[address(arg1)].field_0 - 1000000000000000000 * 10^18:
                        if wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                            revert with 0, 'addition overflow'
                        if arg3:
                            if wpcAccrued[address(arg2)] >= 0:
                                if wpcAccrued[address(arg2)] > 0:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        else:
                            if wpcAccrued[address(arg2)] >= 10^15:
                                if wpcAccrued[address(arg2)] > 0:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if wpcAccrued[address(arg2)] <= ext_call.return_data[0]:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        emit 0xbe0c0c96: 0, wpcSupplyState[address(arg1)].field_0, arg1, arg2
                    else:
                        require ext_call.return_data[0]
                        if (-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / ext_call.return_data[0] != wpcSupplyState[address(arg1)].field_0 - 1000000000000000000 * 10^18:
                            revert with 0, 'multiplication overflow'
                        if ((-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < wpcAccrued[address(arg2)]:
                            revert with 0, 'addition overflow'
                        if arg3:
                            if ((-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < 0:
                                wpcAccrued[address(arg2)] += (-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                            else:
                                if ((-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] <= 0:
                                    wpcAccrued[address(arg2)] += (-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                else:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ((-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] > ext_call.return_data[0]:
                                        wpcAccrued[address(arg2)] += (-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                    else:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), ((-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        else:
                            if ((-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] < 10^15:
                                wpcAccrued[address(arg2)] += (-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                            else:
                                if ((-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] <= 0:
                                    wpcAccrued[address(arg2)] += (-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                else:
                                    require ext_code.size(piggyAddress)
                                    staticcall piggyAddress.balanceOf(address rg1) with:
                                            gas gas_remaining wei
                                           args this.address
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if ((-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)] > ext_call.return_data[0]:
                                        wpcAccrued[address(arg2)] += (-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18
                                    else:
                                        require ext_code.size(piggyAddress)
                                        call piggyAddress.transfer(address rg1, uint256 rg2) with:
                                             gas gas_remaining wei
                                            args address(arg2), ((-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18) + wpcAccrued[address(arg2)]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        wpcAccrued[address(arg2)] = 0
                        emit 0xbe0c0c96: (-1000000000000000000 * 10^18 * ext_call.return_data[0]) + (wpcSupplyState[address(arg1)].field_0 * ext_call.return_data[0]) / 1000000000000000000 * 10^18, wpcSupplyState[address(arg1)].field_0, arg1, arg2
}



}
