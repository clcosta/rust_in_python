#!/bin/bash
if [ ! -d "venv" ]; then
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
    maturin develop
else
    source venv/bin/activate
    maturin develop
fi
python examples/ex_somar_ate_um_bilhao.py
