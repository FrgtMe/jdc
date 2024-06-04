curl -fsSL https://code-server.dev/install.sh | sh
export PASSWORD=31
code-server --host 0.0.0.0 --port 443 --auth password
