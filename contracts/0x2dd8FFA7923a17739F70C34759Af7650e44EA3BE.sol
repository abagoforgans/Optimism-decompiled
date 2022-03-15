contract main {




// =====================  Runtime code  =====================


#
#  - repayBorrow(uint256 arg1)
#  - repayBorrowBehalf(address arg1, uint256 arg2)
#  - mintForMigrate(uint256 arg1, uint256 arg2)
#  - redeemUnderlying(uint256 arg1)
#  - mint(uint256 arg1)
#  - borrow(uint256 arg1)
#  - redeem(uint256 arg1)
#  - liquidateBorrow(address arg1, uint256 arg2, address arg3)
#
const isPToken = 1


uint8 stor0;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor3;
address comptrollerAddress; offset 8
address interestRateModelAddress;
uint256 stor5;
uint256 reserveFactorMantissa;
uint256 accrualBlockNumber;
uint256 borrowIndex;
uint64 stor9;
uint256 stor9;
uint256 totalBorrows;
uint32 stor10; offset 224
uint64 stor10;
uint256 totalReserves;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of struct stor14;
address migratorAddress;
uint256 minInterestAccumulated;
uint8 stor17;
uint8 stor17; offset 8
uint256 stor17; offset 8
address owner;
address underlyingAddress;
address flashloanInstanceAddress;

function name() payable {
    return name[0 len name.length]
}

function reserveFactorMantissa() payable {
    return reserveFactorMantissa
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function totalBorrows() payable {
    return uint256(totalBorrows)
}

function comptroller() payable {
    return comptrollerAddress
}

function accrualBlockNumber() payable {
    return accrualBlockNumber
}

function underlying() payable {
    return underlyingAddress
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function migrator() payable {
    return migratorAddress
}

function owner() payable {
    return owner
}

function totalReserves() payable {
    return totalReserves
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function borrowIndex() payable {
    return borrowIndex
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function minInterestAccumulated() payable {
    return minInterestAccumulated
}

function interestRateModel() payable {
    return interestRateModelAddress
}

function flashloanInstance() payable {
    return flashloanInstanceAddress
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _setFlashloan(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    flashloanInstanceAddress = arg1
}

function _setComptroller(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    comptrollerAddress = arg1
    emit NewComptroller(stor3, arg1);
    return 0
}

function _setMigrator(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    migratorAddress = arg1
    emit NewMigrator(migratorAddress, arg1);
    return 0
}

function _setMinInterestAccumulated(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    minInterestAccumulated = arg1
    emit NewMinInterestAccumulated(minInterestAccumulated, arg1);
    return 0
}

function getCash() payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function borrowRatePerBlock() payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(interestRateModelAddress)
    staticcall interestRateModelAddress.getBorrowRate(uint256 rg1, uint256 rg2, uint256 rg3) with:
            gas gas_remaining wei
           args ext_call.return_data[0], uint256(totalBorrows), totalReserves
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function supplyRatePerBlock() payable {
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(interestRateModelAddress)
    staticcall interestRateModelAddress.getSupplyRate(uint256 rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
            gas gas_remaining wei
           args 0, ext_call.return_data[28 len 4], uint256(totalBorrows), totalReserves, reserveFactorMantissa
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function borrowBalanceStored(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor14[address(arg1)].field_0:
        return 0
    if borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_0 != borrowIndex:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                    mem[219 len 9]
    if not stor14[address(arg1)].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    55,
                    0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                    mem[219 len 9]
    return (borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_256)
}

function seize(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.0xd02f7351 with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Failure(3, 28, ext_call.return_data[0]);
        stor0 = 1
        return 3
    if arg2 == arg1:
        emit Failure(6, 29, 0);
        stor0 = 1
        return 6
    if arg3 > balanceOf[address(arg2)]:
        emit Failure(9, 27, 3);
        stor0 = 1
        return 9
    if arg3 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
        emit Failure(9, 26, 2);
        stor0 = 1
        return 9
    balanceOf[address(arg2)] -= arg3
    balanceOf[arg1] = arg3 + balanceOf[address(arg1)]
    emit 0x64ddf252: arg3, arg2, arg1
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.0x6d35bf91 with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, address(arg1), arg2, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 0
}

function exchangeRateStored() payable {
    if not totalSupply:
        return stor5
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 
                    32,
                    53,
                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                    mem[249 len 11]
    if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
        revert with 0, 
                    32,
                    53,
                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                    mem[249 len 11]
    if not uint256(totalBorrows) + ext_call.return_data[0] - totalReserves:
        if not totalSupply:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[313 len 11]
        return (0 / totalSupply)
    if (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / uint256(totalBorrows) + ext_call.return_data[0] - totalReserves != 10^18:
        revert with 0, 
                    32,
                    53,
                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                    mem[313 len 11]
    if not totalSupply:
        revert with 0, 
                    32,
                    53,
                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                    mem[313 len 11]
    return ((10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply)
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.0xbdcdc258 with:
         gas gas_remaining wei
        args 0, uint32(this.address), address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Failure(3, 76, ext_call.return_data[0]);
        stor0 = 1
        return 0
    if arg1 == arg2:
        emit Failure(2, 77, 0);
        stor0 = 1
        return 0
    if msg.sender == arg1:
        if arg3 > -1:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        if arg3 > balanceOf[address(arg1)]:
            emit Failure(9, 78, 0);
            stor0 = 1
            return 0
        if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
            emit Failure(9, 79, 0);
            stor0 = 1
            return 0
        balanceOf[address(arg1)] -= arg3
        balanceOf[arg2] = arg3 + balanceOf[address(arg2)]
    else:
        if arg3 > allowance[address(arg1)][address(msg.sender)]:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        if arg3 > balanceOf[address(arg1)]:
            emit Failure(9, 78, 0);
            stor0 = 1
            return 0
        if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
            emit Failure(9, 79, 0);
            stor0 = 1
            return 0
        balanceOf[address(arg1)] -= arg3
        balanceOf[arg2] = arg3 + balanceOf[address(arg2)]
        if allowance[address(arg1)][address(msg.sender)] != -1:
            allowance[address(arg1)][address(msg.sender)] -= arg3
    emit 0x64ddf252: arg3, arg1, arg2
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.0x6a56947e with:
         gas gas_remaining wei
        args 0, uint32(this.address), address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.0xbdcdc258 with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        emit Failure(3, 76, ext_call.return_data[0]);
        stor0 = 1
        return 0
    if msg.sender == arg1:
        emit Failure(2, 77, 0);
        stor0 = 1
        return 0
    if msg.sender == msg.sender:
        if arg2 > -1:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        if arg2 > balanceOf[address(msg.sender)]:
            emit Failure(9, 78, 0);
            stor0 = 1
            return 0
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            emit Failure(9, 79, 0);
            stor0 = 1
            return 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] = arg2 + balanceOf[address(arg1)]
    else:
        if arg2 > allowance[address(msg.sender)][address(msg.sender)]:
            emit Failure(9, 77, 0);
            stor0 = 1
            return 0
        if arg2 > balanceOf[address(msg.sender)]:
            emit Failure(9, 78, 0);
            stor0 = 1
            return 0
        if arg2 + balanceOf[address(arg1)] < balanceOf[address(arg1)]:
            emit Failure(9, 79, 0);
            stor0 = 1
            return 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[arg1] = arg2 + balanceOf[address(arg1)]
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    emit 0x64ddf252: arg2, msg.sender, arg1
    require ext_code.size(comptrollerAddress)
    call comptrollerAddress.0x6a56947e with:
         gas gas_remaining wei
        args 0, uint32(this.address), msg.sender, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor0 = 1
    return 1
}

function getAccountSnapshot(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor14[address(arg1)].field_0:
        if not totalSupply:
            return 0, balanceOf[address(arg1)], 0, stor5
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint256(totalBorrows) + ext_call.return_data[0] >= ext_call.return_data[0]:
            if totalReserves <= uint256(totalBorrows) + ext_call.return_data[0]:
                if not uint256(totalBorrows) + ext_call.return_data[0] - totalReserves:
                    if totalSupply:
                        return 0, balanceOf[address(arg1)], 0, 0 / totalSupply
                else:
                    if (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / uint256(totalBorrows) + ext_call.return_data[0] - totalReserves == 10^18:
                        if totalSupply:
                            return 0, 
                                   balanceOf[address(arg1)],
                                   0,
                                   (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply
    else:
        if borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_0 == borrowIndex:
            if stor14[address(arg1)].field_256:
                if not totalSupply:
                    return 0, balanceOf[address(arg1)], borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_256, stor5
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint256(totalBorrows) + ext_call.return_data[0] >= ext_call.return_data[0]:
                    if totalReserves <= uint256(totalBorrows) + ext_call.return_data[0]:
                        if not uint256(totalBorrows) + ext_call.return_data[0] - totalReserves:
                            if totalSupply:
                                return 0, 
                                       balanceOf[address(arg1)],
                                       borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_256,
                                       0 / totalSupply
                        else:
                            if (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / uint256(totalBorrows) + ext_call.return_data[0] - totalReserves == 10^18:
                                if totalSupply:
                                    return 0, 
                                           balanceOf[address(arg1)],
                                           borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_256,
                                           (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply
    return 9, 0, 0, 0
}

function init(address arg1, address arg2, uint256 arg3, string arg4, string arg5, uint8 arg6) payable {
    require calldata.size - 4 >= 192
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + arg4.length + 36 <= calldata.size
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if accrualBlockNumber:
        revert with 0, 
                    32,
                    35,
                    0xfe6d61726b6574206d6179206f6e6c7920626520696e697469616c697a6564206f6e63,
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 263 len 29]
    if borrowIndex:
        revert with 0, 
                    32,
                    35,
                    0xfe6d61726b6574206d6179206f6e6c7920626520696e697469616c697a6564206f6e63,
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 263 len 29]
    stor5 = arg3
    if not arg3:
        revert with 0, 
                    32,
                    48,
                    0x72696e697469616c2065786368616e67652072617465206d7573742062652067726561746572207468616e207a65726f,
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 276 len 16]
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    comptrollerAddress = arg1
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = comptrollerAddress
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg1
    emit NewComptroller(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length) + 32]);
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    accrualBlockNumber = ext_call.return_data[0]
    borrowIndex = 10^18
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if accrualBlockNumber != ext_call.return_data[0]:
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = 10
        mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = 67
        emit Failure(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len ceil32(arg5.length) + -arg5.length + 32], 0);
        revert with 0, 
                    32,
                    34,
                    0x2e73657474696e6720696e7465726573742072617465206d6f64656c206661696c65,
                    mem[ceil32(arg4.length) + ceil32(arg5.length) + 262 len 30]
    interestRateModelAddress = arg2
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 160] = interestRateModelAddress
    mem[ceil32(arg4.length) + ceil32(arg5.length) + 192] = arg2
    emit NewMarketInterestRateModel(Mask(8 * -ceil32(arg5.length) + arg5.length + 32, 0, 0), mem[ceil32(arg4.length) + arg5.length + 192 len -arg5.length + ceil32(arg5.length) + 32]);
    name[] = Array(len=arg4.length, data=arg4[all])
    symbol[] = Array(len=arg5.length, data=arg5[all])
    decimals = arg6
    stor0 = 1
}

function initialize(address arg1, address arg2, address arg3, uint256 arg4, string arg5, string arg6, uint8 arg7) payable {
    require calldata.size - 4 >= 224
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + arg5.length + 36 <= calldata.size
    require arg6 <= 4294967296
    require arg6 + 36 <= calldata.size
    require arg6.length <= 4294967296 and arg6 + arg6.length + 36 <= calldata.size
    if uint8(stor17.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor17.field_0):
                revert with 0, 
                            32,
                            46,
                            0x44436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                            mem[ceil32(arg5.length) + ceil32(arg6.length) + 274 len 18]
        if uint8(stor17.field_8):
            owner = msg.sender
            emit OwnershipTransferred(0, msg.sender);
        else:
            uint8(stor17.field_0) = 1
            uint8(stor17.field_8) = 1
            Mask(248, 0, stor17.field_8) = 0
            if ext_code.size(this.address):
                if uint8(stor17.field_0):
                    revert with 0, 
                                32,
                                46,
                                0x44436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                mem[ceil32(arg5.length) + ceil32(arg6.length) + 274 len 18]
            if uint8(stor17.field_8):
                owner = msg.sender
                emit OwnershipTransferred(0, msg.sender);
            else:
                uint8(stor17.field_0) = 1
                uint8(stor17.field_8) = 1
                Mask(248, 0, stor17.field_8) = 0
                if ext_code.size(this.address):
                    if uint8(stor17.field_0):
                        revert with 0, 
                                    32,
                                    46,
                                    0x44436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                    mem[ceil32(arg5.length) + ceil32(arg6.length) + 274 len 18]
                if uint8(stor17.field_8):
                    owner = msg.sender
                    emit OwnershipTransferred(0, msg.sender);
                else:
                    uint8(stor17.field_0) = 1
                    uint8(stor17.field_8) = 1
                    Mask(248, 0, stor17.field_8) = 0
                    uint8(stor17.field_8) = 0
                    if ext_code.size(this.address):
                        if uint8(stor17.field_0):
                            revert with 0, 
                                        32,
                                        46,
                                        0x44436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
                                        mem[ceil32(arg5.length) + ceil32(arg6.length) + 274 len 18]
                    if uint8(stor17.field_8):
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                    else:
                        uint8(stor17.field_0) = 1
                        uint8(stor17.field_8) = 1
                        Mask(248, 0, stor17.field_8) = 0
                        owner = msg.sender
                        emit OwnershipTransferred(0, msg.sender);
                        uint8(stor17.field_8) = 0
                        uint8(stor17.field_8) = 0
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    if accrualBlockNumber:
        revert with 0, 
                    32,
                    35,
                    0xfe6d61726b6574206d6179206f6e6c7920626520696e697469616c697a6564206f6e63,
                    mem[ceil32(arg5.length) + ceil32(arg6.length) + 263 len 29]
    if borrowIndex:
        revert with 0, 
                    32,
                    35,
                    0xfe6d61726b6574206d6179206f6e6c7920626520696e697469616c697a6564206f6e63,
                    mem[ceil32(arg5.length) + ceil32(arg6.length) + 263 len 29]
    stor5 = arg4
    if not arg4:
        revert with 0, 
                    32,
                    48,
                    0x72696e697469616c2065786368616e67652072617465206d7573742062652067726561746572207468616e207a65726f,
                    mem[ceil32(arg5.length) + ceil32(arg6.length) + 276 len 16]
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    comptrollerAddress = arg2
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = comptrollerAddress
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 192] = arg2
    emit NewComptroller(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg5.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length) + 32]);
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    accrualBlockNumber = ext_call.return_data[0]
    borrowIndex = 10^18
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if accrualBlockNumber != ext_call.return_data[0]:
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = 10
        mem[ceil32(arg5.length) + ceil32(arg6.length) + 192] = 67
        emit Failure(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg5.length) + arg6.length + 192 len ceil32(arg6.length) + -arg6.length + 32], 0);
        revert with 0, 
                    32,
                    34,
                    0x2e73657474696e6720696e7465726573742072617465206d6f64656c206661696c65,
                    mem[ceil32(arg5.length) + ceil32(arg6.length) + 262 len 30]
    interestRateModelAddress = arg3
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 160] = interestRateModelAddress
    mem[ceil32(arg5.length) + ceil32(arg6.length) + 192] = arg3
    emit NewMarketInterestRateModel(Mask(8 * -ceil32(arg6.length) + arg6.length + 32, 0, 0), mem[ceil32(arg5.length) + arg6.length + 192 len -arg6.length + ceil32(arg6.length) + 32]);
    name[] = Array(len=arg5.length, data=arg5[all])
    symbol[] = Array(len=arg6.length, data=arg6[all])
    decimals = arg7
    stor0 = 1
    underlyingAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not uint8(stor17.field_8):
        uint8(stor17.field_8) = 0
}

function accrueInterestSnapshot() payable {
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    else:
        require return_data.size >= 32
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        else:
            require return_data.size >= 32
            require ext_code.size(interestRateModelAddress)
            staticcall interestRateModelAddress.getBorrowRate(uint256 rg1, uint256 rg2, uint256 rg3) with:
                    gas gas_remaining wei
                   args ext_call.return_data[0], uint256(totalBorrows), totalReserves
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                if ext_call.return_data[0] > 5 * 10^12:
                    revert with 0, 'borrow rate is absurdly high'
                else:
                    if accrualBlockNumber > ext_call.return_data[0]:
                        revert with 0, 'could not calculate block delta'
                    else:
                        if ext_call.return_data[0]:
                            if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] == ext_call.return_data[0] - accrualBlockNumber:
                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                                    if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) == uint256(totalBorrows):
                                        if uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                                            mem[608 len 0] = None
                                            return Array(len=6, data=mem[608 len 192])
                                        else:
                                            if reserveFactorMantissa:
                                                if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa == (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                                                    if totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                                                        mem[736 len 0] = None
                                                        return Array(len=6, data=mem[736 len 192])
                                                    else:
                                                        if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                                                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) == borrowIndex:
                                                                if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                                                    mem[832 len 0] = None
                                                                    return Array(len=6, data=mem[832 len 192])
                                                                else:
                                                                    mem[832 len 0] = None
                                                                    return Array(len=6, data=mem[832 len 192])
                                                            else:
                                                                mem[832 len 0] = None
                                                                return Array(len=6, data=mem[832 len 192])
                                                        else:
                                                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                                                mem[832 len 0] = None
                                                                return Array(len=6, data=mem[832 len 192])
                                                            else:
                                                                mem[832 len 0] = None
                                                                return Array(len=6, data=mem[832 len 192])
                                                else:
                                                    mem[736 len 0] = None
                                                    return Array(len=6, data=mem[736 len 192])
                                            else:
                                                if totalReserves + (0 / 10^18) < 0 / 10^18:
                                                    mem[736 len 0] = None
                                                    return Array(len=6, data=mem[736 len 192])
                                                else:
                                                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                                                        if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) == borrowIndex:
                                                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                                                mem[832 len 0] = None
                                                                return Array(len=6, data=mem[832 len 192])
                                                            else:
                                                                mem[832 len 0] = None
                                                                return Array(len=6, data=mem[832 len 192])
                                                        else:
                                                            mem[832 len 0] = None
                                                            return Array(len=6, data=mem[832 len 192])
                                                    else:
                                                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                                            mem[832 len 0] = None
                                                            return Array(len=6, data=mem[832 len 192])
                                                        else:
                                                            mem[832 len 0] = None
                                                            return Array(len=6, data=mem[832 len 192])
                                    else:
                                        mem[608 len 0] = None
                                        return Array(len=6, data=mem[608 len 192])
                                else:
                                    if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                                        mem[608 len 0] = None
                                        return Array(len=6, data=mem[608 len 192])
                                    else:
                                        if reserveFactorMantissa:
                                            if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa == 0 / 10^18:
                                                if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                                                    mem[736 len 0] = None
                                                    return Array(len=6, data=mem[736 len 192])
                                                else:
                                                    if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                                                        if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) == borrowIndex:
                                                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                                                mem[832 len 0] = None
                                                                return Array(len=6, data=mem[832 len 192])
                                                            else:
                                                                mem[832 len 0] = None
                                                                return Array(len=6, data=mem[832 len 192])
                                                        else:
                                                            mem[832 len 0] = None
                                                            return Array(len=6, data=mem[832 len 192])
                                                    else:
                                                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                                            mem[832 len 0] = None
                                                            return Array(len=6, data=mem[832 len 192])
                                                        else:
                                                            mem[832 len 0] = None
                                                            return Array(len=6, data=mem[832 len 192])
                                            else:
                                                mem[736 len 0] = None
                                                return Array(len=6, data=mem[736 len 192])
                                        else:
                                            if totalReserves + (0 / 10^18) < 0 / 10^18:
                                                mem[736 len 0] = None
                                                return Array(len=6, data=mem[736 len 192])
                                            else:
                                                if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                                                    if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) == borrowIndex:
                                                        if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                                            mem[832 len 0] = None
                                                            return Array(len=6, data=mem[832 len 192])
                                                        else:
                                                            mem[832 len 0] = None
                                                            return Array(len=6, data=mem[832 len 192])
                                                    else:
                                                        mem[832 len 0] = None
                                                        return Array(len=6, data=mem[832 len 192])
                                                else:
                                                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                                        mem[832 len 0] = None
                                                        return Array(len=6, data=mem[832 len 192])
                                                    else:
                                                        mem[832 len 0] = None
                                                        return Array(len=6, data=mem[832 len 192])
                            else:
                                mem[512 len 0] = None
                                return Array(len=6, data=mem[512 len 192])
                        else:
                            if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                                mem[608 len 0] = None
                                return Array(len=6, data=mem[608 len 192])
                            else:
                                if reserveFactorMantissa:
                                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa == 0 / 10^18:
                                        if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                                            mem[736 len 0] = None
                                            return Array(len=6, data=mem[736 len 192])
                                        else:
                                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                                mem[832 len 0] = None
                                                return Array(len=6, data=mem[832 len 192])
                                            else:
                                                mem[832 len 0] = None
                                                return Array(len=6, data=mem[832 len 192])
                                    else:
                                        mem[736 len 0] = None
                                        return Array(len=6, data=mem[736 len 192])
                                else:
                                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                                        mem[736 len 0] = None
                                        return Array(len=6, data=mem[736 len 192])
                                    else:
                                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                            mem[832 len 0] = None
                                            return Array(len=6, data=mem[832 len 192])
                                        else:
                                            mem[832 len 0] = None
                                            return Array(len=6, data=mem[832 len 192])
}

function accrueInterest() payable {
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != accrualBlockNumber:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > ext_call.return_data[0]:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if minInterestAccumulated > 0 / 10^18:
                if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                    emit Failure(9, 4, 2);
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                else:
                    if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                        emit Failure(9, 5, 2);
                        return 9
                    if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
            else:
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        return 9
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - accrualBlockNumber:
                emit Failure(9, 6, 2);
                return 9
            if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if minInterestAccumulated > 0 / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            return 9
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                else:
                    if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 4, 2);
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves);
                    else:
                        if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                            emit Failure(9, 5, 2);
                            return 9
                        if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves + (0 / 10^18));
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    return 9
                if minInterestAccumulated > (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            return 9
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                else:
                    if uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 4, 2);
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                    else:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                            emit Failure(9, 5, 2);
                            return 9
                        if totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
        return 0
    else:
        return 0
}

function totalBorrowsCurrent() payable {
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != accrualBlockNumber:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > ext_call.return_data[0]:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if minInterestAccumulated > 0 / 10^18:
                if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                else:
                    if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
            else:
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - accrualBlockNumber:
                emit Failure(9, 6, 2);
                revert with 0, 'accrue interest failed'
            if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if minInterestAccumulated > 0 / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                else:
                    if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves);
                    else:
                        if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves + (0 / 10^18));
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    revert with 0, 'accrue interest failed'
                if minInterestAccumulated > (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                else:
                    if uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                    else:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
    stor0 = 1
    return uint256(totalBorrows)
}

function _setInterestRateModel(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != accrualBlockNumber:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > ext_call.return_data[0]:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if minInterestAccumulated > 0 / 10^18:
                if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 66, 0);
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 66, 0);
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 66, 0);
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                else:
                    if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 66, 0);
                        return 9
                    if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 66, 0);
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 66, 0);
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
            else:
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 66, 0);
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 66, 0);
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 66, 0);
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 66, 0);
                        return 9
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 66, 0);
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 66, 0);
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - accrualBlockNumber:
                emit Failure(9, 6, 2);
                emit Failure(9, 66, 0);
                return 9
            if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if minInterestAccumulated > 0 / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 66, 0);
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 66, 0);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 66, 0);
                            return 9
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 66, 0);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                else:
                    if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 66, 0);
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 66, 0);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves);
                    else:
                        if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 66, 0);
                            return 9
                        if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 66, 0);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves + (0 / 10^18));
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    emit Failure(9, 66, 0);
                    return 9
                if minInterestAccumulated > (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 66, 0);
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 66, 0);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 66, 0);
                            return 9
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 66, 0);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                else:
                    if uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 66, 0);
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 66, 0);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                    else:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 66, 0);
                            return 9
                        if totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 66, 0);
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 66, 0);
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if accrualBlockNumber != ext_call.return_data[0]:
        emit Failure(10, 67, 0);
        return 10
    interestRateModelAddress = arg1
    emit NewMarketInterestRateModel(interestRateModelAddress, arg1);
    return 0
}

function _setReserveFactor(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != accrualBlockNumber:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > ext_call.return_data[0]:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if minInterestAccumulated > 0 / 10^18:
                if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 72, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 72, 0);
                        stor0 = 1
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 72, 0);
                        stor0 = 1
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                else:
                    if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 72, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 72, 0);
                        stor0 = 1
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 72, 0);
                        stor0 = 1
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
            else:
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 72, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 72, 0);
                        stor0 = 1
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 72, 0);
                        stor0 = 1
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 72, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 72, 0);
                        stor0 = 1
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 72, 0);
                        stor0 = 1
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - accrualBlockNumber:
                emit Failure(9, 6, 2);
                emit Failure(9, 72, 0);
                stor0 = 1
                return 9
            if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if minInterestAccumulated > 0 / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 72, 0);
                        stor0 = 1
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 72, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 72, 0);
                            stor0 = 1
                            return 9
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 72, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                else:
                    if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 72, 0);
                        stor0 = 1
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 72, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves);
                    else:
                        if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 72, 0);
                            stor0 = 1
                            return 9
                        if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 72, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves + (0 / 10^18));
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    emit Failure(9, 72, 0);
                    stor0 = 1
                    return 9
                if minInterestAccumulated > (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 72, 0);
                        stor0 = 1
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 72, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 72, 0);
                            stor0 = 1
                            return 9
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 72, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                else:
                    if uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 72, 0);
                        stor0 = 1
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 72, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                    else:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 72, 0);
                            stor0 = 1
                            return 9
                        if totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 72, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 72, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
    if owner != msg.sender:
        revert with 0, 'dOwnable: caller is not the owne'
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if accrualBlockNumber != ext_call.return_data[0]:
        emit Failure(10, 74, 0);
        stor0 = 1
        return 10
    if arg1 > 10^18:
        emit Failure(2, 75, 0);
        stor0 = 1
        return 2
    reserveFactorMantissa = arg1
    emit NewReserveFactor(reserveFactorMantissa, arg1);
    stor0 = 1
    return 0
}

function flashloan(address arg1, uint256 arg2, bytes arg3) payable {
    require calldata.size - 4 >= 96
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(underlyingAddress)
    call underlyingAddress.0xa9059cbb with:
         gas gas_remaining wei
        args flashloanInstanceAddress, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_OUT_FAILED'
    require ext_code.size(flashloanInstanceAddress)
    call flashloanInstanceAddress with:
         gas gas_remaining wei
        args this.address, address(arg1), underlyingAddress, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 
                    32,
                    50,
                    0x645468652061637475616c2062616c616e6365206f66207468652070726f746f636f6c20697320696e636f6e73697374656e,
                    Mask(112, 0, arg2)
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != accrualBlockNumber:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > ext_call.return_data[0]:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if minInterestAccumulated > 0 / 10^18:
                if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                    emit Failure(9, 4, 2);
                else:
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                        else:
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                            else:
                                accrualBlockNumber = ext_call.return_data[0]
                                borrowIndex += 0 / 10^18
                                uint256(totalBorrows) += minInterestAccumulated
                                totalReserves += 0 / 10^18
                                emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                        else:
                            if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                                emit Failure(9, 5, 2);
                            else:
                                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                    emit Failure(9, 3, 2);
                                else:
                                    accrualBlockNumber = ext_call.return_data[0]
                                    borrowIndex += 0 / 10^18
                                    uint256(totalBorrows) += minInterestAccumulated
                                    totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
            else:
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                else:
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                        else:
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                            else:
                                accrualBlockNumber = ext_call.return_data[0]
                                borrowIndex += 0 / 10^18
                                uint256(totalBorrows) += 0 / 10^18
                                totalReserves += 0 / 10^18
                                emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                    else:
                        if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                            emit Failure(9, 5, 2);
                        else:
                            if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                                emit Failure(9, 5, 2);
                            else:
                                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                    emit Failure(9, 3, 2);
                                else:
                                    accrualBlockNumber = ext_call.return_data[0]
                                    borrowIndex += 0 / 10^18
                                    uint256(totalBorrows) += 0 / 10^18
                                    totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - accrualBlockNumber:
                emit Failure(9, 6, 2);
            else:
                if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                    if minInterestAccumulated > 0 / 10^18:
                        if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                            emit Failure(9, 4, 2);
                        else:
                            if not reserveFactorMantissa:
                                if totalReserves + (0 / 10^18) < 0 / 10^18:
                                    emit Failure(9, 5, 2);
                                else:
                                    if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                            emit Failure(9, 3, 2);
                                        else:
                                            accrualBlockNumber = ext_call.return_data[0]
                                            borrowIndex += 0 / 10^18
                                            uint256(totalBorrows) += minInterestAccumulated
                                            totalReserves += 0 / 10^18
                                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                                    else:
                                        if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                            emit Failure(9, 3, 2);
                                        else:
                                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                                emit Failure(9, 3, 2);
                                            else:
                                                accrualBlockNumber = ext_call.return_data[0]
                                                borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                                                uint256(totalBorrows) += minInterestAccumulated
                                                totalReserves += 0 / 10^18
                                                emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                            else:
                                if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                                    emit Failure(9, 5, 2);
                                else:
                                    if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                                        emit Failure(9, 5, 2);
                                    else:
                                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                                emit Failure(9, 3, 2);
                                            else:
                                                accrualBlockNumber = ext_call.return_data[0]
                                                borrowIndex += 0 / 10^18
                                                uint256(totalBorrows) += minInterestAccumulated
                                                totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                                                emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                                        else:
                                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                                emit Failure(9, 3, 2);
                                            else:
                                                if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                                    emit Failure(9, 3, 2);
                                                else:
                                                    accrualBlockNumber = ext_call.return_data[0]
                                                    borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                                                    uint256(totalBorrows) += minInterestAccumulated
                                                    totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                                                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                    else:
                        if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 4, 2);
                        else:
                            if not reserveFactorMantissa:
                                if totalReserves + (0 / 10^18) < 0 / 10^18:
                                    emit Failure(9, 5, 2);
                                else:
                                    if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                                        if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                            emit Failure(9, 3, 2);
                                        else:
                                            accrualBlockNumber = ext_call.return_data[0]
                                            borrowIndex += 0 / 10^18
                                            uint256(totalBorrows) += 0 / 10^18
                                            totalReserves += 0 / 10^18
                                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                                    else:
                                        if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                            emit Failure(9, 3, 2);
                                        else:
                                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                                emit Failure(9, 3, 2);
                                            else:
                                                accrualBlockNumber = ext_call.return_data[0]
                                                borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                                                uint256(totalBorrows) += 0 / 10^18
                                                totalReserves += 0 / 10^18
                                                emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves);
                            else:
                                if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                                    emit Failure(9, 5, 2);
                                else:
                                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                                        emit Failure(9, 5, 2);
                                    else:
                                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                                emit Failure(9, 3, 2);
                                            else:
                                                accrualBlockNumber = ext_call.return_data[0]
                                                borrowIndex += 0 / 10^18
                                                uint256(totalBorrows) += 0 / 10^18
                                                totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                                                emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
                                        else:
                                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                                emit Failure(9, 3, 2);
                                            else:
                                                if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                                    emit Failure(9, 3, 2);
                                                else:
                                                    accrualBlockNumber = ext_call.return_data[0]
                                                    borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                                                    uint256(totalBorrows) += 0 / 10^18
                                                    totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                                                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves + (0 / 10^18));
                else:
                    if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                        emit Failure(9, 1, 2);
                    else:
                        if minInterestAccumulated > (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                            if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                                emit Failure(9, 4, 2);
                            else:
                                if not reserveFactorMantissa:
                                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                                        emit Failure(9, 5, 2);
                                    else:
                                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                                emit Failure(9, 3, 2);
                                            else:
                                                accrualBlockNumber = ext_call.return_data[0]
                                                borrowIndex += 0 / 10^18
                                                uint256(totalBorrows) += minInterestAccumulated
                                                totalReserves += 0 / 10^18
                                                emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                                        else:
                                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                                emit Failure(9, 3, 2);
                                            else:
                                                if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                                    emit Failure(9, 3, 2);
                                                else:
                                                    accrualBlockNumber = ext_call.return_data[0]
                                                    borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                                                    uint256(totalBorrows) += minInterestAccumulated
                                                    totalReserves += 0 / 10^18
                                                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                                else:
                                    if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                                        emit Failure(9, 5, 2);
                                    else:
                                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                                            emit Failure(9, 5, 2);
                                        else:
                                            if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                                                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                                    emit Failure(9, 3, 2);
                                                else:
                                                    accrualBlockNumber = ext_call.return_data[0]
                                                    borrowIndex += 0 / 10^18
                                                    uint256(totalBorrows) += minInterestAccumulated
                                                    totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                                                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                                            else:
                                                if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                                    emit Failure(9, 3, 2);
                                                else:
                                                    if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                                        emit Failure(9, 3, 2);
                                                    else:
                                                        accrualBlockNumber = ext_call.return_data[0]
                                                        borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                                                        uint256(totalBorrows) += minInterestAccumulated
                                                        totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                                                        emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                                emit Failure(9, 4, 2);
                            else:
                                if not reserveFactorMantissa:
                                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                                        emit Failure(9, 5, 2);
                                    else:
                                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                                emit Failure(9, 3, 2);
                                            else:
                                                accrualBlockNumber = ext_call.return_data[0]
                                                borrowIndex += 0 / 10^18
                                                uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                                                totalReserves += 0 / 10^18
                                                emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                                        else:
                                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                                emit Failure(9, 3, 2);
                                            else:
                                                if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                                    emit Failure(9, 3, 2);
                                                else:
                                                    accrualBlockNumber = ext_call.return_data[0]
                                                    borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                                                    uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                                                    totalReserves += 0 / 10^18
                                                    emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                                else:
                                    if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                                        emit Failure(9, 5, 2);
                                    else:
                                        if totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                                            emit Failure(9, 5, 2);
                                        else:
                                            if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                                                if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                                    emit Failure(9, 3, 2);
                                                else:
                                                    accrualBlockNumber = ext_call.return_data[0]
                                                    borrowIndex += 0 / 10^18
                                                    uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                                                    totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                                                    emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
                                            else:
                                                if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                                    emit Failure(9, 3, 2);
                                                else:
                                                    if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                                        emit Failure(9, 3, 2);
                                                    else:
                                                        accrualBlockNumber = ext_call.return_data[0]
                                                        borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                                                        uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                                                        totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                                                        emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
    stor0 = 1
}

function _addReserves(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] != accrualBlockNumber:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > ext_call.return_data[0]:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if minInterestAccumulated > 0 / 10^18:
                if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 80, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 80, 0);
                        stor0 = 1
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 80, 0);
                        stor0 = 1
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                else:
                    if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 80, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 80, 0);
                        stor0 = 1
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 80, 0);
                        stor0 = 1
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
            else:
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 80, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 80, 0);
                        stor0 = 1
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 80, 0);
                        stor0 = 1
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 80, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 80, 0);
                        stor0 = 1
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 80, 0);
                        stor0 = 1
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - accrualBlockNumber:
                emit Failure(9, 6, 2);
                emit Failure(9, 80, 0);
                stor0 = 1
                return 9
            if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if minInterestAccumulated > 0 / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 80, 0);
                        stor0 = 1
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 80, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 80, 0);
                            stor0 = 1
                            return 9
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 80, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                else:
                    if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 80, 0);
                        stor0 = 1
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 80, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves);
                    else:
                        if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 80, 0);
                            stor0 = 1
                            return 9
                        if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 80, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves + (0 / 10^18));
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    emit Failure(9, 80, 0);
                    stor0 = 1
                    return 9
                if minInterestAccumulated > (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 80, 0);
                        stor0 = 1
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 80, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 80, 0);
                            stor0 = 1
                            return 9
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 80, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                else:
                    if uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 80, 0);
                        stor0 = 1
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 80, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                    else:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 80, 0);
                            stor0 = 1
                            return 9
                        if totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 80, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 80, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if accrualBlockNumber != ext_call.return_data[0]:
        emit Failure(10, 81, 0);
        stor0 = 1
        return 10
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
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_IN_FAILED'
    require ext_code.size(underlyingAddress)
    staticcall underlyingAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < ext_call.return_data[0]:
        revert with 0, 'TOKEN_TRANSFER_IN_OVERFLOW'
    if totalReserves < totalReserves:
        revert with 0, 'add reserves unexpected overflow'
    emit ReservesAdded(msg.sender, 0, totalReserves);
    stor0 = 1
    return 0
}

function borrowBalanceCurrent(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == accrualBlockNumber:
        if not stor14[address(arg1)].field_0:
            stor0 = 1
            return 0
        if borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_0 != borrowIndex:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                        mem[219 len 9]
        if not stor14[address(arg1)].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        55,
                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                        mem[219 len 9]
    else:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > ext_call.return_data[0]:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if minInterestAccumulated > 0 / 10^18:
                if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    if not stor14[address(arg1)].field_0:
                        stor0 = 1
                        return 0
                    if borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_0 != borrowIndex:
                        revert with 0, 
                                    32,
                                    55,
                                    0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                    uint256(totalBorrows) + minInterestAccumulated % 1099511627776,
                                    uint32(stor10.field_224)
                    if not stor14[address(arg1)].field_256:
                        revert with 0, 
                                    32,
                                    55,
                                    0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                    uint256(totalBorrows) + minInterestAccumulated % 1099511627776,
                                    uint32(stor10.field_224)
                else:
                    if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                    if not stor14[address(arg1)].field_0:
                        stor0 = 1
                        return 0
                    if borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_0 != borrowIndex:
                        revert with 0, 
                                    32,
                                    55,
                                    0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                    uint256(totalBorrows) + minInterestAccumulated % 1099511627776,
                                    Mask(32, 224, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18)) >> 224
                    if not stor14[address(arg1)].field_256:
                        revert with 0, 
                                    32,
                                    55,
                                    0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                    uint256(totalBorrows) + minInterestAccumulated % 1099511627776,
                                    Mask(32, 224, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18)) >> 224
            else:
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
                if not stor14[address(arg1)].field_0:
                    stor0 = 1
                    return 0
                if borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_0 != borrowIndex:
                    revert with 0, 
                                32,
                                55,
                                0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                stor9 % 1099511627776,
                                uint32(stor10.field_224)
                if not stor14[address(arg1)].field_256:
                    revert with 0, 
                                32,
                                55,
                                0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                stor9 % 1099511627776,
                                uint32(stor10.field_224)
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - accrualBlockNumber:
                emit Failure(9, 6, 2);
                revert with 0, 'accrue interest failed'
            if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if minInterestAccumulated > 0 / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        if not stor14[address(arg1)].field_0:
                            stor0 = 1
                            return 0
                        if borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_0 != borrowIndex:
                            revert with 0, 
                                        32,
                                        55,
                                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                        uint256(totalBorrows) + minInterestAccumulated % 1099511627776,
                                        uint32(stor10.field_224)
                        if not stor14[address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        55,
                                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                        uint256(totalBorrows) + minInterestAccumulated % 1099511627776,
                                        uint32(stor10.field_224)
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        if not stor14[address(arg1)].field_0:
                            stor0 = 1
                            return 0
                        if borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_0 != borrowIndex:
                            revert with 0, 
                                        32,
                                        55,
                                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                        uint256(totalBorrows) + minInterestAccumulated % 1099511627776,
                                        Mask(32, 224, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18)) >> 224
                        if not stor14[address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        55,
                                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                        uint256(totalBorrows) + minInterestAccumulated % 1099511627776,
                                        Mask(32, 224, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18)) >> 224
                else:
                    if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves);
                    else:
                        if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves + (0 / 10^18));
                    if not stor14[address(arg1)].field_0:
                        stor0 = 1
                        return 0
                    if borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_0 != borrowIndex:
                        revert with 0, 
                                    32,
                                    55,
                                    0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                    stor9 % 1099511627776,
                                    uint32(stor10.field_224)
                    if not stor14[address(arg1)].field_256:
                        revert with 0, 
                                    32,
                                    55,
                                    0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                    stor9 % 1099511627776,
                                    uint32(stor10.field_224)
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    revert with 0, 'accrue interest failed'
                if minInterestAccumulated > (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        if not stor14[address(arg1)].field_0:
                            stor0 = 1
                            return 0
                        if borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_0 != borrowIndex:
                            revert with 0, 
                                        32,
                                        55,
                                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                        uint256(totalBorrows) + minInterestAccumulated % 1099511627776,
                                        uint32(stor10.field_224)
                        if not stor14[address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        55,
                                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                        uint256(totalBorrows) + minInterestAccumulated % 1099511627776,
                                        uint32(stor10.field_224)
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        if not stor14[address(arg1)].field_0:
                            stor0 = 1
                            return 0
                        if borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_0 != borrowIndex:
                            revert with 0, 
                                        32,
                                        55,
                                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                        uint256(totalBorrows) + minInterestAccumulated % 1099511627776,
                                        Mask(32, 224, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18)) >> 224
                        if not stor14[address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        55,
                                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                        uint256(totalBorrows) + minInterestAccumulated % 1099511627776,
                                        Mask(32, 224, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18)) >> 224
                else:
                    if uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                        if not stor14[address(arg1)].field_0:
                            stor0 = 1
                            return 0
                        if borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_0 != borrowIndex:
                            revert with 0, 
                                        32,
                                        55,
                                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                        uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) % 1099511627776,
                                        uint32(stor10.field_224)
                        if not stor14[address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        55,
                                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                        uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) % 1099511627776,
                                        uint32(stor10.field_224)
                    else:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
                        if not stor14[address(arg1)].field_0:
                            stor0 = 1
                            return 0
                        if borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_0 != borrowIndex:
                            revert with 0, 
                                        32,
                                        55,
                                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                        uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) % 1099511627776,
                                        Mask(32, 224, totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18)) >> 224
                        if not stor14[address(arg1)].field_256:
                            revert with 0, 
                                        32,
                                        55,
                                        0x44626f72726f7742616c616e636553746f7265643a20626f72726f7742616c616e636553746f726564496e7465726e616c206661696c65,
                                        uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) % 1099511627776,
                                        Mask(32, 224, totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18)) >> 224
    ('bool', ('field', 256, ('stor', ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor14', 14)))))
    stor0 = 1
    return (borrowIndex * stor14[address(arg1)].field_0 / stor14[address(arg1)].field_256)
}

function exchangeRateCurrent() payable {
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == accrualBlockNumber:
        if not totalSupply:
            stor0 = 1
            return stor5
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[249 len 11]
        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[249 len 11]
        if not uint256(totalBorrows) + ext_call.return_data[0] - totalReserves:
            if not totalSupply:
                revert with 0, 
                            32,
                            53,
                            0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                            mem[313 len 11]
            stor0 = 1
            return (0 / totalSupply)
        if (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / uint256(totalBorrows) + ext_call.return_data[0] - totalReserves != 10^18:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[313 len 11]
        if not totalSupply:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[313 len 11]
    else:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > ext_call.return_data[0]:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if minInterestAccumulated > 0 / 10^18:
                if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    if not totalSupply:
                        stor0 = 1
                        return stor5
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    53,
                                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                    stor10.field_0 % 72057594037927936,
                                    mem[704 len 4]
                    if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    53,
                                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                    stor10.field_0 % 72057594037927936,
                                    mem[704 len 4]
                else:
                    if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                    if not totalSupply:
                        stor0 = 1
                        return stor5
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    53,
                                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                    totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) % 72057594037927936,
                                    mem[704 len 4]
                    if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    53,
                                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                    totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) % 72057594037927936,
                                    mem[704 len 4]
            else:
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
                if not totalSupply:
                    stor0 = 1
                    return stor5
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                53,
                                0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                stor10.field_0 % 72057594037927936,
                                mem[704 len 4]
                if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                53,
                                0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                stor10.field_0 % 72057594037927936,
                                mem[704 len 4]
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - accrualBlockNumber:
                emit Failure(9, 6, 2);
                revert with 0, 'accrue interest failed'
            if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if minInterestAccumulated > 0 / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        if not totalSupply:
                            stor0 = 1
                            return stor5
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        stor10.field_0 % 72057594037927936,
                                        mem[704 len 4]
                        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        stor10.field_0 % 72057594037927936,
                                        mem[704 len 4]
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        if not totalSupply:
                            stor0 = 1
                            return stor5
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) % 72057594037927936,
                                        mem[704 len 4]
                        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) % 72057594037927936,
                                        mem[704 len 4]
                else:
                    if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves);
                    else:
                        if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves + (0 / 10^18));
                    if not totalSupply:
                        stor0 = 1
                        return stor5
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    53,
                                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                    stor10.field_0 % 72057594037927936,
                                    mem[704 len 4]
                    if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    53,
                                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                    stor10.field_0 % 72057594037927936,
                                    mem[704 len 4]
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    revert with 0, 'accrue interest failed'
                if minInterestAccumulated > (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        if not totalSupply:
                            stor0 = 1
                            return stor5
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        stor10.field_0 % 72057594037927936,
                                        mem[704 len 4]
                        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        stor10.field_0 % 72057594037927936,
                                        mem[704 len 4]
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        if not totalSupply:
                            stor0 = 1
                            return stor5
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) % 72057594037927936,
                                        mem[704 len 4]
                        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) % 72057594037927936,
                                        mem[704 len 4]
                else:
                    if uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                        if not totalSupply:
                            stor0 = 1
                            return stor5
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        stor10.field_0 % 72057594037927936,
                                        mem[704 len 4]
                        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        stor10.field_0 % 72057594037927936,
                                        mem[704 len 4]
                    else:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
                        if not totalSupply:
                            stor0 = 1
                            return stor5
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) % 72057594037927936,
                                        mem[704 len 4]
                        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) % 72057594037927936,
                                        mem[704 len 4]
        ('le', ('stor', ('name', 'totalReserves', 10)), ('add', ('type', 256, ('stor', ('name', 'totalBorrows', 9))), ('ext_call.return_data', 0, 32)))
        if not uint256(totalBorrows) + ext_call.return_data[0] - totalReserves:
            if not totalSupply:
                revert with 0, 
                            32,
                            53,
                            0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                            mem[761 len 11]
            stor0 = 1
            return (0 / totalSupply)
        if (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / uint256(totalBorrows) + ext_call.return_data[0] - totalReserves != 10^18:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[761 len 11]
        if not totalSupply:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[761 len 11]
    ('bool', ('stor', ('name', 'totalSupply', 11)))
    stor0 = 1
    return ((10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply)
}

function balanceOfUnderlying(address arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == accrualBlockNumber:
        if not totalSupply:
            stor0 = 1
            if not stor5:
                return 0
            if balanceOf[address(arg1)] * stor5 / stor5 != balanceOf[address(arg1)]:
                revert with 0, 'balance could not be calculated'
            return (balanceOf[address(arg1)] * stor5 / 10^18)
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[313 len 11]
        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[313 len 11]
        if not uint256(totalBorrows) + ext_call.return_data[0] - totalReserves:
            if not totalSupply:
                revert with 0, 
                            32,
                            53,
                            0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                            mem[377 len 11]
            stor0 = 1
            if not 0 / totalSupply:
                return 0
            if balanceOf[address(arg1)] * 0 / totalSupply / 0 / totalSupply != balanceOf[address(arg1)]:
                revert with 0, 'balance could not be calculated'
            return (balanceOf[address(arg1)] * 0 / totalSupply / 10^18)
        if (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / uint256(totalBorrows) + ext_call.return_data[0] - totalReserves != 10^18:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[377 len 11]
        if not totalSupply:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[377 len 11]
    else:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > ext_call.return_data[0]:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if minInterestAccumulated > 0 / 10^18:
                if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    if not totalSupply:
                        stor0 = 1
                        if not stor5:
                            return 0
                        if balanceOf[address(arg1)] * stor5 / stor5 != balanceOf[address(arg1)]:
                            revert with 0, 'balance could not be calculated'
                        return (balanceOf[address(arg1)] * stor5 / 10^18)
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    53,
                                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                    stor10.field_0 % 72057594037927936,
                                    mem[768 len 4]
                    if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    53,
                                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                    stor10.field_0 % 72057594037927936,
                                    mem[768 len 4]
                else:
                    if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                    if not totalSupply:
                        stor0 = 1
                        if not stor5:
                            return 0
                        if balanceOf[address(arg1)] * stor5 / stor5 != balanceOf[address(arg1)]:
                            revert with 0, 'balance could not be calculated'
                        return (balanceOf[address(arg1)] * stor5 / 10^18)
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    53,
                                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                    totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) % 72057594037927936,
                                    mem[768 len 4]
                    if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    53,
                                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                    totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) % 72057594037927936,
                                    mem[768 len 4]
            else:
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    revert with 0, 'accrue interest failed'
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        revert with 0, 'accrue interest failed'
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        revert with 0, 'accrue interest failed'
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
                if not totalSupply:
                    stor0 = 1
                    if not stor5:
                        return 0
                    if balanceOf[address(arg1)] * stor5 / stor5 != balanceOf[address(arg1)]:
                        revert with 0, 'balance could not be calculated'
                    return (balanceOf[address(arg1)] * stor5 / 10^18)
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                53,
                                0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                stor10.field_0 % 72057594037927936,
                                mem[768 len 4]
                if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                    revert with 0, 
                                32,
                                53,
                                0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                stor10.field_0 % 72057594037927936,
                                mem[768 len 4]
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - accrualBlockNumber:
                emit Failure(9, 6, 2);
                revert with 0, 'accrue interest failed'
            if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if minInterestAccumulated > 0 / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        if not totalSupply:
                            stor0 = 1
                            if not stor5:
                                return 0
                            if balanceOf[address(arg1)] * stor5 / stor5 != balanceOf[address(arg1)]:
                                revert with 0, 'balance could not be calculated'
                            return (balanceOf[address(arg1)] * stor5 / 10^18)
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        stor10.field_0 % 72057594037927936,
                                        mem[768 len 4]
                        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        stor10.field_0 % 72057594037927936,
                                        mem[768 len 4]
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        if not totalSupply:
                            stor0 = 1
                            if not stor5:
                                return 0
                            if balanceOf[address(arg1)] * stor5 / stor5 != balanceOf[address(arg1)]:
                                revert with 0, 'balance could not be calculated'
                            return (balanceOf[address(arg1)] * stor5 / 10^18)
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) % 72057594037927936,
                                        mem[768 len 4]
                        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) % 72057594037927936,
                                        mem[768 len 4]
                else:
                    if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves);
                    else:
                        if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves + (0 / 10^18));
                    if not totalSupply:
                        stor0 = 1
                        if not stor5:
                            return 0
                        if balanceOf[address(arg1)] * stor5 / stor5 != balanceOf[address(arg1)]:
                            revert with 0, 'balance could not be calculated'
                        return (balanceOf[address(arg1)] * stor5 / 10^18)
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    53,
                                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                    stor10.field_0 % 72057594037927936,
                                    mem[768 len 4]
                    if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                        revert with 0, 
                                    32,
                                    53,
                                    0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                    stor10.field_0 % 72057594037927936,
                                    mem[768 len 4]
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    revert with 0, 'accrue interest failed'
                if minInterestAccumulated > (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        if not totalSupply:
                            stor0 = 1
                            if not stor5:
                                return 0
                            if balanceOf[address(arg1)] * stor5 / stor5 != balanceOf[address(arg1)]:
                                revert with 0, 'balance could not be calculated'
                            return (balanceOf[address(arg1)] * stor5 / 10^18)
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        stor10.field_0 % 72057594037927936,
                                        mem[768 len 4]
                        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        stor10.field_0 % 72057594037927936,
                                        mem[768 len 4]
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        if not totalSupply:
                            stor0 = 1
                            if not stor5:
                                return 0
                            if balanceOf[address(arg1)] * stor5 / stor5 != balanceOf[address(arg1)]:
                                revert with 0, 'balance could not be calculated'
                            return (balanceOf[address(arg1)] * stor5 / 10^18)
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) % 72057594037927936,
                                        mem[768 len 4]
                        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) % 72057594037927936,
                                        mem[768 len 4]
                else:
                    if uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 4, 2);
                        revert with 0, 'accrue interest failed'
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                        if not totalSupply:
                            stor0 = 1
                            if not stor5:
                                return 0
                            if balanceOf[address(arg1)] * stor5 / stor5 != balanceOf[address(arg1)]:
                                revert with 0, 'balance could not be calculated'
                            return (balanceOf[address(arg1)] * stor5 / 10^18)
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        stor10.field_0 % 72057594037927936,
                                        mem[768 len 4]
                        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        stor10.field_0 % 72057594037927936,
                                        mem[768 len 4]
                    else:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            revert with 0, 'accrue interest failed'
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                revert with 0, 'accrue interest failed'
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
                        if not totalSupply:
                            stor0 = 1
                            if not stor5:
                                return 0
                            if balanceOf[address(arg1)] * stor5 / stor5 != balanceOf[address(arg1)]:
                                revert with 0, 'balance could not be calculated'
                            return (balanceOf[address(arg1)] * stor5 / 10^18)
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if uint256(totalBorrows) + ext_call.return_data[0] < ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) % 72057594037927936,
                                        mem[768 len 4]
                        if totalReserves > uint256(totalBorrows) + ext_call.return_data[0]:
                            revert with 0, 
                                        32,
                                        53,
                                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                                        totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) % 72057594037927936,
                                        mem[768 len 4]
        ('le', ('stor', ('name', 'totalReserves', 10)), ('add', ('type', 256, ('stor', ('name', 'totalBorrows', 9))), ('ext_call.return_data', 0, 32)))
        if not uint256(totalBorrows) + ext_call.return_data[0] - totalReserves:
            if not totalSupply:
                revert with 0, 
                            32,
                            53,
                            0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                            mem[825 len 11]
            stor0 = 1
            if not 0 / totalSupply:
                return 0
            if balanceOf[address(arg1)] * 0 / totalSupply / 0 / totalSupply != balanceOf[address(arg1)]:
                revert with 0, 'balance could not be calculated'
            return (balanceOf[address(arg1)] * 0 / totalSupply / 10^18)
        if (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / uint256(totalBorrows) + ext_call.return_data[0] - totalReserves != 10^18:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[825 len 11]
        if not totalSupply:
            revert with 0, 
                        32,
                        53,
                        0x4465786368616e67655261746553746f7265643a2065786368616e67655261746553746f726564496e7465726e616c206661696c65,
                        mem[825 len 11]
    ('bool', ('stor', ('name', 'totalSupply', 11)))
    stor0 = 1
    if not (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply:
        return 0
    if balanceOf[address(arg1)] * (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply != balanceOf[address(arg1)]:
        revert with 0, 'balance could not be calculated'
    return (balanceOf[address(arg1)] * (10^18 * uint256(totalBorrows)) + (10^18 * ext_call.return_data[0]) - (10^18 * totalReserves) / totalSupply / 10^18)
}

function _reduceReserves(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not stor0:
        revert with 0, 're-entered'
    stor0 = 0
    require ext_code.size(0x4200000000000000000000000000000000000013)
    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] == accrualBlockNumber:
        if owner != msg.sender:
            revert with 0, 'dOwnable: caller is not the owne'
        require ext_code.size(0x4200000000000000000000000000000000000013)
        staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if accrualBlockNumber != ext_call.return_data[0]:
            emit Failure(10, 52, 0);
            stor0 = 1
            return 10
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg1:
            emit Failure(14, 51, 0);
            stor0 = 1
            return 14
        if arg1 > totalReserves:
            emit Failure(2, 53, 0);
            stor0 = 1
            return 2
        if totalReserves - arg1 > totalReserves:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        36,
                        0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                        mem[200 len 28]
    else:
        require ext_code.size(underlyingAddress)
        staticcall underlyingAddress.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(interestRateModelAddress)
        staticcall interestRateModelAddress.getBorrowRate(uint256 rg1, uint256 rg2, uint256 rg3) with:
                gas gas_remaining wei
               args ext_call.return_data[0], uint256(totalBorrows), totalReserves
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] > 5 * 10^12:
            revert with 0, 'borrow rate is absurdly high'
        if accrualBlockNumber > ext_call.return_data[0]:
            revert with 0, 'could not calculate block delta'
        if not ext_call.return_data[0]:
            if minInterestAccumulated > 0 / 10^18:
                if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 49, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 49, 0);
                        stor0 = 1
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 49, 0);
                        stor0 = 1
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                    if owner != msg.sender:
                        revert with 0, 'dOwnable: caller is not the owne'
                    require ext_code.size(0x4200000000000000000000000000000000000013)
                    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if accrualBlockNumber != ext_call.return_data[0]:
                        emit Failure(10, 52, 0);
                        stor0 = 1
                        return 10
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg1:
                        emit Failure(14, 51, 0);
                        stor0 = 1
                        return 14
                    if arg1 > totalReserves:
                        emit Failure(2, 53, 0);
                        stor0 = 1
                        return 2
                    if totalReserves - arg1 > totalReserves:
                        revert with 0, 
                                    32,
                                    36,
                                    0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                                    Mask(192, 0, uint256(totalBorrows) + minInterestAccumulated),
                                    uint32(stor10.field_224)
                else:
                    if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 49, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 49, 0);
                        stor0 = 1
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 49, 0);
                        stor0 = 1
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += minInterestAccumulated
                    totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                    if owner != msg.sender:
                        revert with 0, 'dOwnable: caller is not the owne'
                    require ext_code.size(0x4200000000000000000000000000000000000013)
                    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if accrualBlockNumber != ext_call.return_data[0]:
                        emit Failure(10, 52, 0);
                        stor0 = 1
                        return 10
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg1:
                        emit Failure(14, 51, 0);
                        stor0 = 1
                        return 14
                    if arg1 > totalReserves:
                        emit Failure(2, 53, 0);
                        stor0 = 1
                        return 2
                    if totalReserves - arg1 > totalReserves:
                        revert with 0, 
                                    32,
                                    36,
                                    0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                                    Mask(192, 0, uint256(totalBorrows) + minInterestAccumulated),
                                    Mask(32, 224, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18)) >> 224
            else:
                if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                    emit Failure(9, 4, 2);
                    emit Failure(9, 49, 0);
                    stor0 = 1
                    return 9
                if not reserveFactorMantissa:
                    if totalReserves + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 49, 0);
                        stor0 = 1
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 49, 0);
                        stor0 = 1
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                else:
                    if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 49, 0);
                        stor0 = 1
                        return 9
                    if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                        emit Failure(9, 5, 2);
                        emit Failure(9, 49, 0);
                        stor0 = 1
                        return 9
                    if borrowIndex + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 3, 2);
                        emit Failure(9, 49, 0);
                        stor0 = 1
                        return 9
                    accrualBlockNumber = ext_call.return_data[0]
                    borrowIndex += 0 / 10^18
                    uint256(totalBorrows) += 0 / 10^18
                    totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                    emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
                if owner != msg.sender:
                    revert with 0, 'dOwnable: caller is not the owne'
                require ext_code.size(0x4200000000000000000000000000000000000013)
                staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if accrualBlockNumber != ext_call.return_data[0]:
                    emit Failure(10, 52, 0);
                    stor0 = 1
                    return 10
                require ext_code.size(underlyingAddress)
                staticcall underlyingAddress.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] < arg1:
                    emit Failure(14, 51, 0);
                    stor0 = 1
                    return 14
                if arg1 > totalReserves:
                    emit Failure(2, 53, 0);
                    stor0 = 1
                    return 2
                if totalReserves - arg1 > totalReserves:
                    revert with 0, 
                                32,
                                36,
                                0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                                Mask(192, 0, stor9),
                                uint32(stor10.field_224)
        else:
            if (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) / ext_call.return_data[0] != ext_call.return_data[0] - accrualBlockNumber:
                emit Failure(9, 6, 2);
                emit Failure(9, 49, 0);
                stor0 = 1
                return 9
            if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                if minInterestAccumulated > 0 / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 49, 0);
                        stor0 = 1
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 49, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        if owner != msg.sender:
                            revert with 0, 'dOwnable: caller is not the owne'
                        require ext_code.size(0x4200000000000000000000000000000000000013)
                        staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if accrualBlockNumber != ext_call.return_data[0]:
                            emit Failure(10, 52, 0);
                            stor0 = 1
                            return 10
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            emit Failure(14, 51, 0);
                            stor0 = 1
                            return 14
                        if arg1 > totalReserves:
                            emit Failure(2, 53, 0);
                            stor0 = 1
                            return 2
                        if totalReserves - arg1 > totalReserves:
                            revert with 0, 
                                        32,
                                        36,
                                        0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                                        Mask(192, 0, uint256(totalBorrows) + minInterestAccumulated),
                                        uint32(stor10.field_224)
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 49, 0);
                            stor0 = 1
                            return 9
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 49, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        if owner != msg.sender:
                            revert with 0, 'dOwnable: caller is not the owne'
                        require ext_code.size(0x4200000000000000000000000000000000000013)
                        staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if accrualBlockNumber != ext_call.return_data[0]:
                            emit Failure(10, 52, 0);
                            stor0 = 1
                            return 10
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            emit Failure(14, 51, 0);
                            stor0 = 1
                            return 14
                        if arg1 > totalReserves:
                            emit Failure(2, 53, 0);
                            stor0 = 1
                            return 2
                        if totalReserves - arg1 > totalReserves:
                            revert with 0, 
                                        32,
                                        36,
                                        0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                                        Mask(192, 0, uint256(totalBorrows) + minInterestAccumulated),
                                        Mask(32, 224, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18)) >> 224
                else:
                    if uint256(totalBorrows) + (0 / 10^18) < 0 / 10^18:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 49, 0);
                        stor0 = 1
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 49, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves);
                    else:
                        if 0 / 10^18 * reserveFactorMantissa / reserveFactorMantissa != 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 49, 0);
                            stor0 = 1
                            return 9
                        if totalReserves + (0 / 10^18 * reserveFactorMantissa / 10^18) < 0 / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 49, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex, uint256(totalBorrows), totalReserves + (0 / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += 0 / 10^18
                            totalReserves += 0 / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], 0, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows), totalReserves + (0 / 10^18));
                    if owner != msg.sender:
                        revert with 0, 'dOwnable: caller is not the owne'
                    require ext_code.size(0x4200000000000000000000000000000000000013)
                    staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if accrualBlockNumber != ext_call.return_data[0]:
                        emit Failure(10, 52, 0);
                        stor0 = 1
                        return 10
                    require ext_code.size(underlyingAddress)
                    staticcall underlyingAddress.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[0] < arg1:
                        emit Failure(14, 51, 0);
                        stor0 = 1
                        return 14
                    if arg1 > totalReserves:
                        emit Failure(2, 53, 0);
                        stor0 = 1
                        return 2
                    if totalReserves - arg1 > totalReserves:
                        revert with 0, 
                                    32,
                                    36,
                                    0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                                    Mask(192, 0, stor9),
                                    uint32(stor10.field_224)
            else:
                if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != uint256(totalBorrows):
                    emit Failure(9, 1, 2);
                    emit Failure(9, 49, 0);
                    stor0 = 1
                    return 9
                if minInterestAccumulated > (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                    if uint256(totalBorrows) + minInterestAccumulated < minInterestAccumulated:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 49, 0);
                        stor0 = 1
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 49, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves);
                        if owner != msg.sender:
                            revert with 0, 'dOwnable: caller is not the owne'
                        require ext_code.size(0x4200000000000000000000000000000000000013)
                        staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if accrualBlockNumber != ext_call.return_data[0]:
                            emit Failure(10, 52, 0);
                            stor0 = 1
                            return 10
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            emit Failure(14, 51, 0);
                            stor0 = 1
                            return 14
                        if arg1 > totalReserves:
                            emit Failure(2, 53, 0);
                            stor0 = 1
                            return 2
                        if totalReserves - arg1 > totalReserves:
                            revert with 0, 
                                        32,
                                        36,
                                        0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                                        Mask(192, 0, uint256(totalBorrows) + minInterestAccumulated),
                                        uint32(stor10.field_224)
                    else:
                        if minInterestAccumulated * reserveFactorMantissa / reserveFactorMantissa != minInterestAccumulated:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 49, 0);
                            stor0 = 1
                            return 9
                        if totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18) < minInterestAccumulated * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 49, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex, uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += minInterestAccumulated
                            totalReserves += minInterestAccumulated * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], minInterestAccumulated, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + minInterestAccumulated, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18));
                        if owner != msg.sender:
                            revert with 0, 'dOwnable: caller is not the owne'
                        require ext_code.size(0x4200000000000000000000000000000000000013)
                        staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if accrualBlockNumber != ext_call.return_data[0]:
                            emit Failure(10, 52, 0);
                            stor0 = 1
                            return 10
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            emit Failure(14, 51, 0);
                            stor0 = 1
                            return 14
                        if arg1 > totalReserves:
                            emit Failure(2, 53, 0);
                            stor0 = 1
                            return 2
                        if totalReserves - arg1 > totalReserves:
                            revert with 0, 
                                        32,
                                        36,
                                        0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                                        Mask(192, 0, uint256(totalBorrows) + minInterestAccumulated),
                                        Mask(32, 224, totalReserves + (minInterestAccumulated * reserveFactorMantissa / 10^18)) >> 224
                else:
                    if uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                        emit Failure(9, 4, 2);
                        emit Failure(9, 49, 0);
                        stor0 = 1
                        return 9
                    if not reserveFactorMantissa:
                        if totalReserves + (0 / 10^18) < 0 / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 49, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += 0 / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves);
                        if owner != msg.sender:
                            revert with 0, 'dOwnable: caller is not the owne'
                        require ext_code.size(0x4200000000000000000000000000000000000013)
                        staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if accrualBlockNumber != ext_call.return_data[0]:
                            emit Failure(10, 52, 0);
                            stor0 = 1
                            return 10
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            emit Failure(14, 51, 0);
                            stor0 = 1
                            return 14
                        if arg1 > totalReserves:
                            emit Failure(2, 53, 0);
                            stor0 = 1
                            return 2
                        if totalReserves - arg1 > totalReserves:
                            revert with 0, 
                                        32,
                                        36,
                                        0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                                        Mask(192, 0, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18)),
                                        uint32(stor10.field_224)
                    else:
                        if (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / reserveFactorMantissa != (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 49, 0);
                            stor0 = 1
                            return 9
                        if totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18:
                            emit Failure(9, 5, 2);
                            emit Failure(9, 49, 0);
                            stor0 = 1
                            return 9
                        if not (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]):
                            if borrowIndex + (0 / 10^18) < 0 / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += 0 / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
                        else:
                            if (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / (ext_call.return_data[0] * ext_call.return_data[0]) - (accrualBlockNumber * ext_call.return_data[0]) != borrowIndex:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            if borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18) < (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18:
                                emit Failure(9, 3, 2);
                                emit Failure(9, 49, 0);
                                stor0 = 1
                                return 9
                            accrualBlockNumber = ext_call.return_data[0]
                            borrowIndex += (ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18
                            uint256(totalBorrows) += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18
                            totalReserves += (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18
                            emit AccrueInterest(ext_call.return_data[0], (ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18, borrowIndex + ((ext_call.return_data[0] * ext_call.return_data[0] * borrowIndex) - (accrualBlockNumber * ext_call.return_data[0] * borrowIndex) / 10^18), uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18), totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18));
                        if owner != msg.sender:
                            revert with 0, 'dOwnable: caller is not the owne'
                        require ext_code.size(0x4200000000000000000000000000000000000013)
                        staticcall 0x4200000000000000000000000000000000000013.getL1BlockNumber() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if accrualBlockNumber != ext_call.return_data[0]:
                            emit Failure(10, 52, 0);
                            stor0 = 1
                            return 10
                        require ext_code.size(underlyingAddress)
                        staticcall underlyingAddress.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0] < arg1:
                            emit Failure(14, 51, 0);
                            stor0 = 1
                            return 14
                        if arg1 > totalReserves:
                            emit Failure(2, 53, 0);
                            stor0 = 1
                            return 2
                        if totalReserves - arg1 > totalReserves:
                            revert with 0, 
                                        32,
                                        36,
                                        0x6f72656475636520726573657276657320756e657870656374656420756e646572666c6f,
                                        Mask(192, 0, uint256(totalBorrows) + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18)),
                                        Mask(32, 224, totalReserves + ((ext_call.return_data[0] * ext_call.return_data[0] * uint256(totalBorrows)) - (accrualBlockNumber * ext_call.return_data[0] * uint256(totalBorrows)) / 10^18 * reserveFactorMantissa / 10^18)) >> 224
    ('le', ('add', ('stor', ('name', 'totalReserves', 10)), ('mul', -1, ('param', 'arg1'))), ('stor', ('name', 'totalReserves', 10)))
    totalReserves -= arg1
    require ext_code.size(underlyingAddress)
    call underlyingAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if return_data.size:
        require return_data.size == 32
        if not ext_call.return_data[0]:
            revert with 0, 'TOKEN_TRANSFER_OUT_FAILED'
    emit ReservesReduced(owner, arg1, totalReserves - arg1);
    stor0 = 1
    return 0
}



}
