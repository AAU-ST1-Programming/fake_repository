# fake_repository

Dette repository er et lille C-projekt, som kan bygges og testes lokalt.

## Struktur

- `src/main.c` – lille CLI-eksempel
- `src/math_utils.c` + `include/math_utils.h` – simple hjælpefunktioner
- `tests/test_math_utils.c` – fokuserede tests
- `Makefile` – build- og testkommandoer

## Brug

Byg programmet:

```bash
make
```

Kør programmet:

```bash
./bin/app
```

Kør tests:

```bash
make test
```
