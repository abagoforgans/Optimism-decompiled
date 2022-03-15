contract main {




// =====================  Runtime code  =====================


const FACTORY = 0x1f98431c8ad98523631ae4a59f267346ea31f984

const POOL_INIT_CODE_HASH = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54


function _fallback() payable {
    revert
}

function getRate(address arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    mem[64] = 192
    mem[96] = 500
    mem[128] = 3000
    mem[160] = 10000
    if arg3 != 0xffffffffffffffffffffffffffffffffffffffff:
        idx = 0
        while idx < 3:
            s = 0
            while s < 3:
                if idx >= 3:
                    revert with 'NH{q', 50
                _1077 = mem[(32 * idx) + 96]
                if arg1 < arg3:
                    _1078 = mem[64]
                    mem[mem[64] + 32] = arg1
                    mem[mem[64] + 64] = arg3
                    mem[mem[64] + 96] = _1077 % 16777216
                    _1079 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    _1081 = sha3(mem[_1079 + 32 len mem[_1079]])
                    mem[_1078 + 160] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1078 + 161] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
                    mem[_1078 + 181] = _1081
                    mem[_1078 + 213] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
                    mem[_1078 + 128] = 85
                    mem[64] = _1078 + 245
                    if ext_code.size(address(sha3(0, 2276643401503442211, _1081, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))):
                        require ext_code.size(address(sha3(0, 2276643401503442211, _1081, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                        staticcall address(sha3(0, 2276643401503442211, _1081, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).liquidity() with:
                                gas gas_remaining wei
                        mem[_1078 + 245] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[16 len 16]:
                            require ext_code.size(address(sha3(0, 2276643401503442211, _1081, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                            staticcall address(sha3(0, 2276643401503442211, _1081, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).slot0() with:
                                    gas gas_remaining wei
                            mem[_1078 + 245 len 224] = ext_call.return_data[0 len 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 224
                            if arg1 != arg1:
                                if not ext_call.return_data[12 len 20]:
                                    revert with 'NH{q', 18
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(sha3(0, 2276643401503442211, _1081, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_1078 + 249] = address(sha3(0, 2276643401503442211, _1081, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                require ext_code.size(arg3)
                                staticcall arg3.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(sha3(0, 2276643401503442211, _1081, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                mem[_1078 + 245] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0]:
                                        if s >= 3:
                                            revert with 'NH{q', 50
                                        _1140 = mem[(32 * s) + 96]
                                        if arg3 < arg2:
                                            mem[_1078 + 277] = arg3
                                            mem[_1078 + 309] = arg2
                                            mem[_1078 + 341] = _1140 % 16777216
                                            mem[_1078 + 245] = 96
                                            mem[_1078 + 405] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1078 + 406] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
                                            mem[_1078 + 426] = sha3(address(arg3), address(arg2), _1140 % 16777216)
                                            mem[_1078 + 458] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
                                            mem[_1078 + 373] = 85
                                            mem[64] = _1078 + 490
                                            if ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))):
                                                require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                staticcall address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).liquidity() with:
                                                        gas gas_remaining wei
                                                mem[_1078 + 490] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[16 len 16]:
                                                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                    staticcall address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).slot0() with:
                                                            gas gas_remaining wei
                                                    mem[_1078 + 490 len 224] = ext_call.return_data[0 len 224]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 224
                                                    if arg3 != arg3:
                                                        if not ext_call.return_data[12 len 20]:
                                                            revert with 'NH{q', 18
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1078 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1078 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) and 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                    else:
                                                        if ext_call.return_data[12 len 20] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 'NH{q', 17
                                                        if Mask(256, -96, 10^18 * ext_call.return_data[12 len 20]) and ext_call.return_data[12 len 20] > -1 / address(10^18 * ext_call.return_data[12 len 20]) >> 96:
                                                            revert with 'NH{q', 17
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1078 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1078 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) and address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                        else:
                                            mem[_1078 + 277] = arg2
                                            mem[_1078 + 309] = arg3
                                            mem[_1078 + 341] = _1140 % 16777216
                                            mem[_1078 + 245] = 96
                                            mem[_1078 + 405] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1078 + 406] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
                                            mem[_1078 + 426] = sha3(address(arg2), address(arg3), _1140 % 16777216)
                                            mem[_1078 + 458] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
                                            mem[_1078 + 373] = 85
                                            mem[64] = _1078 + 490
                                            if ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))):
                                                require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                staticcall address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).liquidity() with:
                                                        gas gas_remaining wei
                                                mem[_1078 + 490] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[16 len 16]:
                                                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                    staticcall address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).slot0() with:
                                                            gas gas_remaining wei
                                                    mem[_1078 + 490 len 224] = ext_call.return_data[0 len 224]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 224
                                                    if arg2 != arg3:
                                                        if not ext_call.return_data[12 len 20]:
                                                            revert with 'NH{q', 18
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1078 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1078 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) and 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                    else:
                                                        if ext_call.return_data[12 len 20] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 'NH{q', 17
                                                        if Mask(256, -96, 10^18 * ext_call.return_data[12 len 20]) and ext_call.return_data[12 len 20] > -1 / address(10^18 * ext_call.return_data[12 len 20]) >> 96:
                                                            revert with 'NH{q', 17
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1078 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1140 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1078 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) and address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                            else:
                                if ext_call.return_data[12 len 20] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if Mask(256, -96, 10^18 * ext_call.return_data[12 len 20]) and ext_call.return_data[12 len 20] > -1 / address(10^18 * ext_call.return_data[12 len 20]) >> 96:
                                    revert with 'NH{q', 17
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(sha3(0, 2276643401503442211, _1081, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_1078 + 249] = address(sha3(0, 2276643401503442211, _1081, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                require ext_code.size(arg3)
                                staticcall arg3.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(sha3(0, 2276643401503442211, _1081, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                mem[_1078 + 245] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0]:
                                        if s >= 3:
                                            revert with 'NH{q', 50
                                        _1141 = mem[(32 * s) + 96]
                                        if arg3 < arg2:
                                            mem[_1078 + 277] = arg3
                                            mem[_1078 + 309] = arg2
                                            mem[_1078 + 341] = _1141 % 16777216
                                            mem[_1078 + 245] = 96
                                            mem[_1078 + 405] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1078 + 406] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
                                            mem[_1078 + 426] = sha3(address(arg3), address(arg2), _1141 % 16777216)
                                            mem[_1078 + 458] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
                                            mem[_1078 + 373] = 85
                                            mem[64] = _1078 + 490
                                            if ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))):
                                                require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                staticcall address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).liquidity() with:
                                                        gas gas_remaining wei
                                                mem[_1078 + 490] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[16 len 16]:
                                                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                    staticcall address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).slot0() with:
                                                            gas gas_remaining wei
                                                    mem[_1078 + 490 len 224] = ext_call.return_data[0 len 224]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 224
                                                    if arg3 != arg3:
                                                        if not ext_call.return_data[12 len 20]:
                                                            revert with 'NH{q', 18
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1078 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1078 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if Mask(256, -96, address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) and 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96:
                                                                    revert with 'NH{q', 17
                                                                if address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                    else:
                                                        if ext_call.return_data[12 len 20] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 'NH{q', 17
                                                        if Mask(256, -96, 10^18 * ext_call.return_data[12 len 20]) and ext_call.return_data[12 len 20] > -1 / address(10^18 * ext_call.return_data[12 len 20]) >> 96:
                                                            revert with 'NH{q', 17
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1078 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1078 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if Mask(256, -96, address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) and address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96:
                                                                    revert with 'NH{q', 17
                                                                if address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                        else:
                                            mem[_1078 + 277] = arg2
                                            mem[_1078 + 309] = arg3
                                            mem[_1078 + 341] = _1141 % 16777216
                                            mem[_1078 + 245] = 96
                                            mem[_1078 + 405] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1078 + 406] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
                                            mem[_1078 + 426] = sha3(address(arg2), address(arg3), _1141 % 16777216)
                                            mem[_1078 + 458] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
                                            mem[_1078 + 373] = 85
                                            mem[64] = _1078 + 490
                                            if ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))):
                                                require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                staticcall address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).liquidity() with:
                                                        gas gas_remaining wei
                                                mem[_1078 + 490] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[16 len 16]:
                                                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                    staticcall address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).slot0() with:
                                                            gas gas_remaining wei
                                                    mem[_1078 + 490 len 224] = ext_call.return_data[0 len 224]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 224
                                                    if arg2 != arg3:
                                                        if not ext_call.return_data[12 len 20]:
                                                            revert with 'NH{q', 18
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1078 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1078 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if Mask(256, -96, address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) and 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96:
                                                                    revert with 'NH{q', 17
                                                                if address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                    else:
                                                        if ext_call.return_data[12 len 20] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 'NH{q', 17
                                                        if Mask(256, -96, 10^18 * ext_call.return_data[12 len 20]) and ext_call.return_data[12 len 20] > -1 / address(10^18 * ext_call.return_data[12 len 20]) >> 96:
                                                            revert with 'NH{q', 17
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1078 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1141 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1078 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if Mask(256, -96, address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) and address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96:
                                                                    revert with 'NH{q', 17
                                                                if address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                else:
                    _1085 = mem[64]
                    mem[mem[64] + 32] = arg3
                    mem[mem[64] + 64] = arg1
                    mem[mem[64] + 96] = _1077 % 16777216
                    _1086 = mem[64]
                    mem[mem[64]] = 96
                    mem[64] = mem[64] + 128
                    _1088 = sha3(mem[_1086 + 32 len mem[_1086]])
                    mem[_1085 + 160] = 0xff00000000000000000000000000000000000000000000000000000000000000
                    mem[_1085 + 161] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
                    mem[_1085 + 181] = _1088
                    mem[_1085 + 213] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
                    mem[_1085 + 128] = 85
                    mem[64] = _1085 + 245
                    if ext_code.size(address(sha3(0, 2276643401503442211, _1088, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))):
                        require ext_code.size(address(sha3(0, 2276643401503442211, _1088, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                        staticcall address(sha3(0, 2276643401503442211, _1088, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).liquidity() with:
                                gas gas_remaining wei
                        mem[_1085 + 245] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[16 len 16]:
                            require ext_code.size(address(sha3(0, 2276643401503442211, _1088, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                            staticcall address(sha3(0, 2276643401503442211, _1088, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).slot0() with:
                                    gas gas_remaining wei
                            mem[_1085 + 245 len 224] = ext_call.return_data[0 len 224]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 224
                            if arg3 != arg1:
                                if not ext_call.return_data[12 len 20]:
                                    revert with 'NH{q', 18
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(sha3(0, 2276643401503442211, _1088, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_1085 + 249] = address(sha3(0, 2276643401503442211, _1088, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                require ext_code.size(arg3)
                                staticcall arg3.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(sha3(0, 2276643401503442211, _1088, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                mem[_1085 + 245] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0]:
                                        if s >= 3:
                                            revert with 'NH{q', 50
                                        _1142 = mem[(32 * s) + 96]
                                        if arg3 < arg2:
                                            mem[_1085 + 277] = arg3
                                            mem[_1085 + 309] = arg2
                                            mem[_1085 + 341] = _1142 % 16777216
                                            mem[_1085 + 245] = 96
                                            mem[_1085 + 405] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1085 + 406] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
                                            mem[_1085 + 426] = sha3(address(arg3), address(arg2), _1142 % 16777216)
                                            mem[_1085 + 458] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
                                            mem[_1085 + 373] = 85
                                            mem[64] = _1085 + 490
                                            if ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))):
                                                require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                staticcall address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).liquidity() with:
                                                        gas gas_remaining wei
                                                mem[_1085 + 490] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[16 len 16]:
                                                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                    staticcall address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).slot0() with:
                                                            gas gas_remaining wei
                                                    mem[_1085 + 490 len 224] = ext_call.return_data[0 len 224]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 224
                                                    if arg3 != arg3:
                                                        if not ext_call.return_data[12 len 20]:
                                                            revert with 'NH{q', 18
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1085 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1085 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) and 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                    else:
                                                        if ext_call.return_data[12 len 20] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 'NH{q', 17
                                                        if Mask(256, -96, 10^18 * ext_call.return_data[12 len 20]) and ext_call.return_data[12 len 20] > -1 / address(10^18 * ext_call.return_data[12 len 20]) >> 96:
                                                            revert with 'NH{q', 17
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1085 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1085 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) and address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                        else:
                                            mem[_1085 + 277] = arg2
                                            mem[_1085 + 309] = arg3
                                            mem[_1085 + 341] = _1142 % 16777216
                                            mem[_1085 + 245] = 96
                                            mem[_1085 + 405] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1085 + 406] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
                                            mem[_1085 + 426] = sha3(address(arg2), address(arg3), _1142 % 16777216)
                                            mem[_1085 + 458] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
                                            mem[_1085 + 373] = 85
                                            mem[64] = _1085 + 490
                                            if ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))):
                                                require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                staticcall address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).liquidity() with:
                                                        gas gas_remaining wei
                                                mem[_1085 + 490] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[16 len 16]:
                                                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                    staticcall address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).slot0() with:
                                                            gas gas_remaining wei
                                                    mem[_1085 + 490 len 224] = ext_call.return_data[0 len 224]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 224
                                                    if arg2 != arg3:
                                                        if not ext_call.return_data[12 len 20]:
                                                            revert with 'NH{q', 18
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1085 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1085 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) and 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                    else:
                                                        if ext_call.return_data[12 len 20] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 'NH{q', 17
                                                        if Mask(256, -96, 10^18 * ext_call.return_data[12 len 20]) and ext_call.return_data[12 len 20] > -1 / address(10^18 * ext_call.return_data[12 len 20]) >> 96:
                                                            revert with 'NH{q', 17
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1085 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1142 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1085 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) and address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                            else:
                                if ext_call.return_data[12 len 20] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                    revert with 'NH{q', 17
                                if Mask(256, -96, 10^18 * ext_call.return_data[12 len 20]) and ext_call.return_data[12 len 20] > -1 / address(10^18 * ext_call.return_data[12 len 20]) >> 96:
                                    revert with 'NH{q', 17
                                require ext_code.size(arg1)
                                staticcall arg1.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(sha3(0, 2276643401503442211, _1088, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_1085 + 249] = address(sha3(0, 2276643401503442211, _1088, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                require ext_code.size(arg3)
                                staticcall arg3.balanceOf(address rg1) with:
                                        gas gas_remaining wei
                                       args address(sha3(0, 2276643401503442211, _1088, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                mem[_1085 + 245] = ext_call.return_data[0]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if ext_call.return_data[0] != 0:
                                    if ext_call.return_data[0]:
                                        if s >= 3:
                                            revert with 'NH{q', 50
                                        _1143 = mem[(32 * s) + 96]
                                        if arg3 < arg2:
                                            mem[_1085 + 277] = arg3
                                            mem[_1085 + 309] = arg2
                                            mem[_1085 + 341] = _1143 % 16777216
                                            mem[_1085 + 245] = 96
                                            mem[_1085 + 405] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1085 + 406] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
                                            mem[_1085 + 426] = sha3(address(arg3), address(arg2), _1143 % 16777216)
                                            mem[_1085 + 458] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
                                            mem[_1085 + 373] = 85
                                            mem[64] = _1085 + 490
                                            if ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))):
                                                require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                staticcall address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).liquidity() with:
                                                        gas gas_remaining wei
                                                mem[_1085 + 490] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[16 len 16]:
                                                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                    staticcall address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).slot0() with:
                                                            gas gas_remaining wei
                                                    mem[_1085 + 490 len 224] = ext_call.return_data[0 len 224]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 224
                                                    if arg3 != arg3:
                                                        if not ext_call.return_data[12 len 20]:
                                                            revert with 'NH{q', 18
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1085 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1085 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if Mask(256, -96, address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) and 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96:
                                                                    revert with 'NH{q', 17
                                                                if address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                    else:
                                                        if ext_call.return_data[12 len 20] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 'NH{q', 17
                                                        if Mask(256, -96, 10^18 * ext_call.return_data[12 len 20]) and ext_call.return_data[12 len 20] > -1 / address(10^18 * ext_call.return_data[12 len 20]) >> 96:
                                                            revert with 'NH{q', 17
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1085 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg3), address(arg2), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1085 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if Mask(256, -96, address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) and address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96:
                                                                    revert with 'NH{q', 17
                                                                if address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                        else:
                                            mem[_1085 + 277] = arg2
                                            mem[_1085 + 309] = arg3
                                            mem[_1085 + 341] = _1143 % 16777216
                                            mem[_1085 + 245] = 96
                                            mem[_1085 + 405] = 0xff00000000000000000000000000000000000000000000000000000000000000
                                            mem[_1085 + 406] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
                                            mem[_1085 + 426] = sha3(address(arg2), address(arg3), _1143 % 16777216)
                                            mem[_1085 + 458] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
                                            mem[_1085 + 373] = 85
                                            mem[64] = _1085 + 490
                                            if ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))):
                                                require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                staticcall address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).liquidity() with:
                                                        gas gas_remaining wei
                                                mem[_1085 + 490] = ext_call.return_data[0]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                if ext_call.return_data[16 len 16]:
                                                    require ext_code.size(address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                                                    staticcall address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).slot0() with:
                                                            gas gas_remaining wei
                                                    mem[_1085 + 490 len 224] = ext_call.return_data[0 len 224]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    require return_data.size >= 224
                                                    if arg2 != arg3:
                                                        if not ext_call.return_data[12 len 20]:
                                                            revert with 'NH{q', 18
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1085 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1085 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if Mask(256, -96, address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) and 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96:
                                                                    revert with 'NH{q', 17
                                                                if address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                    else:
                                                        if ext_call.return_data[12 len 20] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                                            revert with 'NH{q', 17
                                                        if Mask(256, -96, 10^18 * ext_call.return_data[12 len 20]) and ext_call.return_data[12 len 20] > -1 / address(10^18 * ext_call.return_data[12 len 20]) >> 96:
                                                            revert with 'NH{q', 17
                                                        require ext_code.size(arg3)
                                                        staticcall arg3.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        mem[_1085 + 494] = address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        require ext_code.size(arg2)
                                                        staticcall arg2.balanceOf(address rg1) with:
                                                                gas gas_remaining wei
                                                               args address(sha3(0, 2276643401503442211, sha3(address(arg2), address(arg3), _1143 % 16777216), 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                                                        mem[_1085 + 490] = ext_call.return_data[0]
                                                        if not ext_call.success:
                                                            revert with ext_call.return_data[0 len return_data.size]
                                                        require return_data.size >= 32
                                                        if ext_call.return_data[0] != 0:
                                                            if ext_call.return_data[0]:
                                                                if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if ext_call.return_data[0] * ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0] * ext_call.return_data[0]:
                                                                    revert with 'NH{q', 17
                                                                if not ext_call.return_data[0]:
                                                                    revert with 'NH{q', 18
                                                                if Mask(256, -96, address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) and address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96:
                                                                    revert with 'NH{q', 17
                                                                if address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 and ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0] > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18:
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 / 10^18 * ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                                                                if 0 > !(ext_call.return_data[0] * ext_call.return_data[0] * ext_call.return_data[0] / ext_call.return_data[0]):
                                                                    revert with 'NH{q', 17
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    else:
        idx = 0
        while idx < 3:
            _381 = mem[(32 * idx) + 96]
            if arg1 < arg2:
                _398 = mem[64]
                mem[mem[64] + 32] = arg1
                mem[mem[64] + 64] = arg2
                mem[mem[64] + 96] = _381 % 16777216
                _399 = mem[64]
                mem[mem[64]] = 96
                mem[64] = mem[64] + 128
                _401 = sha3(mem[_399 + 32 len mem[_399]])
                mem[_398 + 160] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_398 + 161] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
                mem[_398 + 181] = _401
                mem[_398 + 213] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
                mem[_398 + 128] = 85
                mem[64] = _398 + 245
                if ext_code.size(address(sha3(0, 2276643401503442211, _401, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))):
                    require ext_code.size(address(sha3(0, 2276643401503442211, _401, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    staticcall address(sha3(0, 2276643401503442211, _401, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).liquidity() with:
                            gas gas_remaining wei
                    mem[_398 + 245] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[16 len 16]:
                        require ext_code.size(address(sha3(0, 2276643401503442211, _401, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                        staticcall address(sha3(0, 2276643401503442211, _401, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).slot0() with:
                                gas gas_remaining wei
                        mem[_398 + 245 len 224] = ext_call.return_data[0 len 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 224
                        if arg1 != arg1:
                            if not ext_call.return_data[12 len 20]:
                                revert with 'NH{q', 18
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(sha3(0, 2276643401503442211, _401, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_398 + 249] = address(sha3(0, 2276643401503442211, _401, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(sha3(0, 2276643401503442211, _401, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                            mem[_398 + 245] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) and ext_call.return_data[0] * ext_call.return_data[0] > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if 0 > !(0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * ext_call.return_data[0] * ext_call.return_data[0]):
                                revert with 'NH{q', 17
                        else:
                            if ext_call.return_data[12 len 20] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if Mask(256, -96, 10^18 * ext_call.return_data[12 len 20]) and ext_call.return_data[12 len 20] > -1 / address(10^18 * ext_call.return_data[12 len 20]) >> 96:
                                revert with 'NH{q', 17
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(sha3(0, 2276643401503442211, _401, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_398 + 249] = address(sha3(0, 2276643401503442211, _401, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(sha3(0, 2276643401503442211, _401, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                            mem[_398 + 245] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(256, -96, address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) and ext_call.return_data[0] * ext_call.return_data[0] > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96:
                                revert with 'NH{q', 17
                            if 0 > !(address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * ext_call.return_data[0] * ext_call.return_data[0]):
                                revert with 'NH{q', 17
                        if 0 > !(ext_call.return_data[0] * ext_call.return_data[0]):
                            revert with 'NH{q', 17
            else:
                _405 = mem[64]
                mem[mem[64] + 32] = arg2
                mem[mem[64] + 64] = arg1
                mem[mem[64] + 96] = _381 % 16777216
                _406 = mem[64]
                mem[mem[64]] = 96
                mem[64] = mem[64] + 128
                _408 = sha3(mem[_406 + 32 len mem[_406]])
                mem[_405 + 160] = 0xff00000000000000000000000000000000000000000000000000000000000000
                mem[_405 + 161] = 0x1f98431c8ad98523631ae4a59f267346ea31f984000000000000000000000000
                mem[_405 + 181] = _408
                mem[_405 + 213] = 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54
                mem[_405 + 128] = 85
                mem[64] = _405 + 245
                if ext_code.size(address(sha3(0, 2276643401503442211, _408, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))):
                    require ext_code.size(address(sha3(0, 2276643401503442211, _408, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                    staticcall address(sha3(0, 2276643401503442211, _408, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).liquidity() with:
                            gas gas_remaining wei
                    mem[_405 + 245] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if ext_call.return_data[16 len 16]:
                        require ext_code.size(address(sha3(0, 2276643401503442211, _408, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)))
                        staticcall address(sha3(0, 2276643401503442211, _408, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54)).slot0() with:
                                gas gas_remaining wei
                        mem[_405 + 245 len 224] = ext_call.return_data[0 len 224]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 224
                        if arg2 != arg1:
                            if not ext_call.return_data[12 len 20]:
                                revert with 'NH{q', 18
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(sha3(0, 2276643401503442211, _408, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_405 + 249] = address(sha3(0, 2276643401503442211, _408, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(sha3(0, 2276643401503442211, _408, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                            mem[_405 + 245] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) and ext_call.return_data[0] * ext_call.return_data[0] > -1 / 0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]):
                                revert with 'NH{q', 17
                            if 0 > !(0xde0b6b3a7640000000000000000000000000000000000000000000000000000 / address(ext_call.return_data[0]) / address(ext_call.return_data[0]) * ext_call.return_data[0] * ext_call.return_data[0]):
                                revert with 'NH{q', 17
                        else:
                            if ext_call.return_data[12 len 20] > 0x12725dd1d243aba0e75fe645cc4873f9e65afe688c928e1f21:
                                revert with 'NH{q', 17
                            if Mask(256, -96, 10^18 * ext_call.return_data[12 len 20]) and ext_call.return_data[12 len 20] > -1 / address(10^18 * ext_call.return_data[12 len 20]) >> 96:
                                revert with 'NH{q', 17
                            require ext_code.size(arg1)
                            staticcall arg1.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(sha3(0, 2276643401503442211, _408, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            mem[_405 + 249] = address(sha3(0, 2276643401503442211, _408, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                            require ext_code.size(arg2)
                            staticcall arg2.balanceOf(address rg1) with:
                                    gas gas_remaining wei
                                   args address(sha3(0, 2276643401503442211, _408, 0xe34f199b19b2b4f47f68442619d555527d244f78a3297ea89325f843f87b8b54))
                            mem[_405 + 245] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if ext_call.return_data[0] and ext_call.return_data[0] > -1 / ext_call.return_data[0]:
                                revert with 'NH{q', 17
                            if Mask(256, -96, address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) and ext_call.return_data[0] * ext_call.return_data[0] > -1 / address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96:
                                revert with 'NH{q', 17
                            if 0 > !(address(address(10^18 * address(ext_call.return_data[0])) >> 96 * address(ext_call.return_data[0])) >> 96 * ext_call.return_data[0] * ext_call.return_data[0]):
                                revert with 'NH{q', 17
                        if 0 > !(ext_call.return_data[0] * ext_call.return_data[0]):
                            revert with 'NH{q', 17
            idx = idx + 1
            continue 
    return 0
}



}
