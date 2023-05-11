# Rust in Python

Este é um código simples que utiliza a biblioteca *maturin* para transformar o código em Rust em uma biblioteca Python.

## Pré-requisitos

- Python >= 3.11
- Rust >= 1.69.0 
- cargo >= 1.69.0
- Python & pip & cargo added in PATH

### Instalação e execução

Clone the repository
```
git clone https://github.com/clcosta/rust_in_python.git
```

**Start with Script**

```shell

# Windows
./scripts/start.ps1
# OR
./scripts/start.bat
# Linux
./scripts/start.sh
```

**Start with Python**

```
pip install -r requirements.txt

maturin develop

python examples/ex_somar_ate_um_bilhao.py
```
