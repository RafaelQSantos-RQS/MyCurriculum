.PHONY: all clean list help

SRCDIR := src
BUILDDIR := build
CVS := DataEngineering DevPython DevOps

all: $(CVS)

$(CVS):
	@mkdir -p $(BUILDDIR)
	cd $(SRCDIR) && pdflatex -output-directory=../$(BUILDDIR) -interaction=nonstopmode $@.tex
	cd $(SRCDIR) && pdflatex -output-directory=../$(BUILDDIR) -interaction=nonstopmode $@.tex

clean:
	rm -rf $(BUILDDIR)/*

list:
	@echo "Currículos disponíveis:"
	@for cv in $(CVS); do echo "  - $$cv"; done

help:
	@echo "Uso: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  all            Compila todos os currículos (padrão)"
	@echo "  DataEngineering Compila currículo de Engenharia de Dados"
	@echo "  DevPython      Compila currículo de Desenvolvedor Python"
	@echo "  DevOps         Compila currículo de DevOps"
	@echo "  clean          Remove arquivos do diretório build/"
	@echo "  list           Lista todos os currículos disponíveis"
	@echo "  help           Mostra esta mensagem de ajuda"
