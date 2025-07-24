Buffer overflows occurs when we try to store more data than it can hold, causing the extra data to overwrite memory. This can be extremely dangerous because it allows threats to perform unauthorized actions on the application (e.g bypass authentication), system crashes or data corruption.

Buffer overflow occurs when program allocates a fixed-size buffer and take an user-input withotu checking the size of it. We could see it like this:
```
void vulnerable() {
    char buffer[8];
    gets(buffer);  // Dangerous: no bounds checking
}
```
If the threat (attacker) provides an input such as 'AAAAAAAAAA<shell code>' this will fill the ``buffer`` and overwrite adjacent memory which makes that when ``vulnerable()`` is called the threat code is executed.

Buffer overflow have already created some damage in real-life. We could talk about Morris Worm which is a worm created by a student which wanted to evaluate the size of internet but it got out of hand. The worm would exploit a buffer overflow in 'finger' daemon allowing the worm to infect the computer and start spreading in network silently. But it got out of hand due to no proper stop condition and designed to reinfect machines unnecessarily.

Another real-life example, which is actually critical compared to Morris Worm. We will talk about 'Heartbleed' a critical security bug in the OpenSSL library which allowed attackers to read memory from web servers exposing sensitive informations such as passwords, private keys, cookies. The second part is due of chain with MITM attack.

You can prevent it mostly by checking user-input, or by using a memory-safe language.
