    #print(f"[+] Found '{sys.argv[2]}' at {hex(search_addr)}")
#!/bin/bash
grep -m 1 "Linux version" dmesg | \
sed -n 's/.*(\(Ubuntu [^)]*\)).*/\1/p'
