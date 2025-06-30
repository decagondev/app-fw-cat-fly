# CTF Challenge: C Application Firewall

This challenge runs a vulnerable C binary inside Docker.

## Prerequisites

- Docker installed on your machine.

## How to run

1. Build the Docker image:

```bash
docker build -t ctf-caf .
```
2. Run the container:

```bash
docker run -p 5000:5000 --rm ctf-caf
```

3. Connect to the challenge via nc or telnet:

```bash
nc localhost 5000
```

4. Try to exploit the program!
