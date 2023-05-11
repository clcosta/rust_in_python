if (!(Test-Path -Path "venv")) {
    python -m venv venv
    .\venv\Scripts\Activate.ps1
    pip install -r requirements.txt
    maturin develop
} else {
    .\venv\Scripts\Activate.ps1
    maturin develop
}
python examples/ex_somar_ate_um_bilhao.py
