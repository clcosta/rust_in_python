use pyo3::prelude::*;

#[pyfunction]
fn sum_to_one_bilian() -> PyResult<i32> {
    let target: i32 = 1_000_000_000;
    let mut number: i32 = 0;
    for _i in 0..target {
        number += 1;
    }
    println!("Soma concluída: {}", number);
    Ok(number)
}


#[pymodule]
fn rust_in_python(_py: Python, m: &PyModule) -> PyResult<()> {
    m.add_function(wrap_pyfunction!(sum_to_one_bilian, m)?)?;
    Ok(())
}
