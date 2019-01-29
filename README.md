# llg-cython
A last letter game benchmark implemented in Cython

## How to run
Clone repository recursively:

```bash
git clone --recursive https://github.com/LLGAssessment/llg-cython.git
```

Compile test:

```bash
cd llg-cython
make
```

Run test and measure its time:

```bash
time ./llg < llg-dataset/70pokemons.txt
```
