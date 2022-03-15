contract main {




// =====================  Runtime code  =====================


const blocksPerYear = (584 * 3600)


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
uint256 multiplierPerBlock;
uint256 baseRatePerBlock;
uint256 jumpMultiplierPerBlock;
uint256 kink;

function multiplierPerBlock() payable {
    return multiplierPerBlock
}

function owner() payable {
    return owner
}

function jumpMultiplierPerBlock() payable {
    return jumpMultiplierPerBlock
}

function baseRatePerBlock() payable {
    return baseRatePerBlock
}

function kink() payable {
    return kink
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function utilizationRate(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        return 0
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 > arg2 + arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2:
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        return (0 / arg2 + arg1 - arg3)
    if 10^18 * arg2 / arg2 != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not arg2 + arg1 - arg3:
        revert with 0, 'SafeMath: division by zero'
    return (10^18 * arg2 / arg2 + arg1 - arg3)
}

function updateJumpRateModel(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    baseRatePerBlock = arg1 / 584 * 3600
    if 584 * 3600 * arg4 / 584 * 3600 != arg4:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not arg2:
        if not 584 * 3600 * arg4:
            revert with 0, 'SafeMath: division by zero'
        multiplierPerBlock = 0 / 584 * 3600 * arg4
    else:
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 584 * 3600 * arg4:
            revert with 0, 'SafeMath: division by zero'
        multiplierPerBlock = 10^18 * arg2 / 584 * 3600 * arg4
    jumpMultiplierPerBlock = arg3 / 584 * 3600
    kink = arg4
    emit NewInterestParams(baseRatePerBlock, multiplierPerBlock, arg3 / 584 * 3600, arg4);
}

function initialize(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if uint8(stor0.field_8):
        owner = msg.sender
        emit OwnershipTransferred(0, msg.sender);
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            46,
                            0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
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
                                0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
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
                                    0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
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
                                        0x77436f6e747261637420696e7374616e63652068617320616c7265616479206265656e20696e697469616c697a65,
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
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    baseRatePerBlock = arg1 / 584 * 3600
    if 584 * 3600 * arg4 / 584 * 3600 != arg4:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not arg2:
        if not 584 * 3600 * arg4:
            revert with 0, 'SafeMath: division by zero'
        multiplierPerBlock = 0 / 584 * 3600 * arg4
    else:
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 584 * 3600 * arg4:
            revert with 0, 'SafeMath: division by zero'
        multiplierPerBlock = 10^18 * arg2 / 584 * 3600 * arg4
    jumpMultiplierPerBlock = arg3 / 584 * 3600
    kink = arg4
    emit NewInterestParams(baseRatePerBlock, multiplierPerBlock, arg3 / 584 * 3600, arg4);
    if not uint8(stor0.field_8):
        uint8(stor0.field_8) = 0
}

function getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        if 0 <= kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            return baseRatePerBlock
        if not kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if kink > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -kink:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseRatePerBlock
            if -1 * jumpMultiplierPerBlock * kink / -kink != jumpMultiplierPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink / 10^18) < -1 * jumpMultiplierPerBlock * kink / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink / 10^18))
        if multiplierPerBlock * kink / kink != multiplierPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < multiplierPerBlock * kink / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if kink > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -kink:
            if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + (multiplierPerBlock * kink / 10^18))
        if -1 * jumpMultiplierPerBlock * kink / -kink != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + (-1 * jumpMultiplierPerBlock * kink / 10^18) < -1 * jumpMultiplierPerBlock * kink / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + (-1 * jumpMultiplierPerBlock * kink / 10^18))
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 > arg2 + arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2:
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if 0 / arg2 + arg1 - arg3 <= kink:
            if not 0 / arg2 + arg1 - arg3:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseRatePerBlock
            if multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != multiplierPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) < multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18))
        if not kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if kink > 0 / arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / arg2 + arg1 - arg3) - kink:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseRatePerBlock
            if (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (0 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18))
        if multiplierPerBlock * kink / kink != multiplierPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < multiplierPerBlock * kink / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if kink > 0 / arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / arg2 + arg1 - arg3) - kink:
            if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + (multiplierPerBlock * kink / 10^18))
        if (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (0 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18))
    if 10^18 * arg2 / arg2 != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not arg2 + arg1 - arg3:
        revert with 0, 'SafeMath: division by zero'
    if 10^18 * arg2 / arg2 + arg1 - arg3 <= kink:
        if not 10^18 * arg2 / arg2 + arg1 - arg3:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            return baseRatePerBlock
        if multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != multiplierPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) < multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18))
    if not kink:
        if baseRatePerBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if kink > 10^18 * arg2 / arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (10^18 * arg2 / arg2 + arg1 - arg3) - kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            return baseRatePerBlock
        if (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (10^18 * arg2 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18))
    if multiplierPerBlock * kink / kink != multiplierPerBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < multiplierPerBlock * kink / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if kink > 10^18 * arg2 / arg2 + arg1 - arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (10^18 * arg2 / arg2 + arg1 - arg3) - kink:
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + (multiplierPerBlock * kink / 10^18))
    if (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (10^18 * arg2 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18))
}

function getSupplyRate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg4 > 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2:
        if 0 <= kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock:
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if not kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if kink > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if not -kink:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock:
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 10^18 * arg2 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if -1 * jumpMultiplierPerBlock * kink / -kink != jumpMultiplierPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink / 10^18) < -1 * jumpMultiplierPerBlock * kink / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if multiplierPerBlock * kink / kink != multiplierPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < multiplierPerBlock * kink / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if kink > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        if not -kink:
            if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + (multiplierPerBlock * kink / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if -1 * jumpMultiplierPerBlock * kink / -kink != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + (-1 * jumpMultiplierPerBlock * kink / 10^18) < -1 * jumpMultiplierPerBlock * kink / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + (-1 * jumpMultiplierPerBlock * kink / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3:
                        if 0 / 0 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + (-1 * jumpMultiplierPerBlock * kink / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if not 10^18 * arg2 / arg2 + arg1 - arg3:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 > arg2 + arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2:
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if 0 / arg2 + arg1 - arg3 <= kink:
            if not 0 / arg2 + arg1 - arg3:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock:
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 10^18 * arg2 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != multiplierPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) < multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if not kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if kink > 0 / arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (0 / arg2 + arg1 - arg3) - kink:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock:
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 10^18 * arg2 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (0 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if multiplierPerBlock * kink / kink != multiplierPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < multiplierPerBlock * kink / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if kink > 0 / arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / arg2 + arg1 - arg3) - kink:
            if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + (multiplierPerBlock * kink / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (0 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3:
                        if 0 / 0 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if not 10^18 * arg2 / arg2 + arg1 - arg3:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
    if 10^18 * arg2 / arg2 != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if not arg2 + arg1 - arg3:
        revert with 0, 'SafeMath: division by zero'
    if 10^18 * arg2 / arg2 + arg1 - arg3 <= kink:
        if not 10^18 * arg2 / arg2 + arg1 - arg3:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock:
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != multiplierPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) < multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3:
                        if 0 / 0 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if not 10^18 * arg2 / arg2 + arg1 - arg3:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
    if not kink:
        if baseRatePerBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if kink > 10^18 * arg2 / arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (10^18 * arg2 / arg2 + arg1 - arg3) - kink:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock:
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (10^18 * arg2 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3:
                        if 0 / 0 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if not 10^18 * arg2 / arg2 + arg1 - arg3:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
    if multiplierPerBlock * kink / kink != multiplierPerBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < multiplierPerBlock * kink / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if kink > 10^18 * arg2 / arg2 + arg1 - arg3:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (10^18 * arg2 / arg2 + arg1 - arg3) - kink:
        if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + (multiplierPerBlock * kink / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3:
                        if 0 / 0 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if not 0 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if not 10^18 * arg2 / arg2 + arg1 - arg3:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
    if (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / (10^18 * arg2 / arg2 + arg1 - arg3) - kink != jumpMultiplierPerBlock:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) < (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if not baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18):
        if arg2:
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / arg2 + arg1 - arg3:
                    if 0 / 0 / arg2 + arg1 - arg3:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * arg2 / arg2 + arg1 - arg3:
                    if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return 0
        else:
            return 0
    if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) != -arg4 + 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if not arg2:
        return 0
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 > arg2 + arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2:
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if not 0 / arg2 + arg1 - arg3:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
    if 10^18 * arg2 / arg2 != 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
    if not arg2 + arg1 - arg3:
        revert with 0, 'SafeMath: division by zero'
    if not 10^18 * arg2 / arg2 + arg1 - arg3:
        return 0
    if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
    return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
}



}
