from web3 import Web3


factory_abi = [
    {
        "inputs": [
            {"internalType": "address", "name": "tokenA", "type": "address"},
            {"internalType": "address", "name": "tokenB", "type": "address"},
            {"internalType": "uint24", "name": "fee", "type": "uint24"}
        ],
        "name": "getPool",
        "outputs": [
            {"internalType": "address", "name": "pool", "type": "address"}
        ],
        "stateMutability": "view",
        "type": "function"
    }
]

infura_url = 'https://sepolia.infura.io/v3/8ef2abc2fcac40fdad51d7891ae4bee5'
web3 = Web3(Web3.HTTPProvider(infura_url))

if web3.is_connected():
    print("Connected to Ethereum")
else:
    print("Failed to connect")

factory_address = '0x0227628f3F023bb0B980b67D528571c95c6DaC1c'  # Uniswap V3 factory address
factory_contract = web3.eth.contract(address=factory_address, abi=factory_abi)

def get_uniswap_v3_pool_address(tokenA, tokenB, fee):
    try:
        tokenA = Web3.to_checksum_address(tokenA)
        tokenB = Web3.to_checksum_address(tokenB)
        pool_address = factory_contract.functions.getPool(tokenA, tokenB, fee).call()
        return pool_address
    except Exception as e:
        return f"Error fetching pool address: {str(e)}"

# Example usage:
tokenA = '0x5928A372De475721231B4411a26a01602E0a6dFa'  # DAI
tokenB = '0xdCdC73413c6136c9abcc3e8d250af42947ac2fc7'  # USDC
fee = 3000  # Fee tier (e.g., 3000 for 0.3%)

pool_address = get_uniswap_v3_pool_address(tokenA, tokenB, fee)
print(f'The pool address is: {pool_address}')