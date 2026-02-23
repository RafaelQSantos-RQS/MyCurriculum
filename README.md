# MyCurriculum

Gerenciamento de currículos em LaTeX com build automatizado.

## Estrutura

```
├── src/
│   ├── header.tex          # Preamble compartilhado
│   ├── DataEngineering.tex # Engenharia de Dados
│   ├── DevPython.tex       # Desenvolvedor Python
│   └── DevOps.tex          # DevOps
├── build/                  # PDFs gerados (ignorado pelo git)
├── Makefile
└── README.md
```

## Uso

```bash
make                    # compila todos os currículos
make DevPython          # compila um currículo específico
make clean              # limpa o diretório build/
make list               # lista currículos disponíveis
```

## Currículos disponíveis

- **DataEngineering** - Engenheiro de Dados Júnior
- **DevPython** - Desenvolvedor Python / Engenheiro de Dados
- **DevOps** - Engenheiro de Dados / DevOps Jr

## Requisitos

- LaTeX (pdflatex)
- make
