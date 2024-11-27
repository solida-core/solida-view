# SOLIDA-VIEW

**SolidaView** is a Docker-based tool that encapsulates **[Panoptes](https://github.com/panoptes-organization/panoptes)** to monitor the execution of **Snakemake** workflows in real time.

- **Official Repository**: [GitHub](https://github.com/solida-core/solida-view)  
- **Full Documentation**: [README.md](https://github.com/solida-core/solida-view/blob/master/README.md)

---

## Main Features
- Real-time monitoring of computational workflows.
- Simple and portable Docker interface.
- Fast and flexible configuration via Makefile.

---

## Installation

1. **Clone the repository**  
   ```bash
   git clone https://github.com/solida-core/solida-view.git
   cd solida-view
   ```

2. **Start SolidaView**  
   Specify a port and use the `make` command:
   ```bash
   make PORT=5000 start
   ```

3. **Access the interface**  
   Once started, the interface will be available at:  
   ```
   http://localhost:5000
   ```

---

## Usage

### Main Commands
Use `make` with the following targets:

| Command   | Description                                    |
|-----------|------------------------------------------------|
| `start`   | Start SolidaView                               |
| `stop`    | Stop SolidaView                                |
| `clean`   | Remove SolidaView from your system             |

Example:  
```bash
make PORT=8080 start
```

### Available Options
| Option    | Description                                    |
|-----------|------------------------------------------------|
| `PORT`    | Specify the TCP/IP port for SolidaView         |

---

## Troubleshooting

### Issue: Port is already in use
This error occurs if the specified port is busy. Change the port using the `PORT` option:
```bash
make PORT=8081 start
```

### Issue: Container does not start
Check the container logs to identify the issue:
```bash
docker-compose logs solida-view
```

---

## Cleanup

To completely remove SolidaView from your system:
```bash
make clean
```

---

## Support

If you encounter issues or have questions:
- **Report an issue**: [Issue Tracker](https://github.com/solida-core/solida-view/issues)
- **Extended Documentation**: [README.md](https://github.com/solida-core/solida-view/blob/master/README.md)

