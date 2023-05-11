from timeit import timeit
from rust_in_python import sum_to_one_bilian

print(timeit('sum_to_one_bilian()', number=5, globals=globals()))
# Tempo médio: 51.08487179999793 segundos


def sum_to_one_bilian_python():
    n = 0
    for _ in range(1_000_000_000):
        n += 1
    print(n)
    return n


print(timeit('sum_to_one_bilian_python()', number=5, globals=globals()))
# Tempo médio: 234.11383609999757 segundos
