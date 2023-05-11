@echo off
if not exist "venv\" (
    python -m venv venv
    call venv\Scripts\activate.bat
    pip install -r requirements.txt
    maturin develop
) else (
    call venv\Scripts\activate.bat
    maturin develop
)
python examples/ex_somar_ate_um_bilhao.py