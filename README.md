# Assembly

### Running the foundry-code

```bash
forge install
forge build
forge test
```

### Running the huff-code

```bash
huffc <file-source> -b
```

### Notes

huff-lang does not have a standard library like solidity. So, all the opcodes need to be implemented from scratch.