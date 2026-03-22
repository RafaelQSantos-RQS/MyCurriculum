.PHONY: all clean list help

SRCDIR := src
BUILDDIR := build
CVS := DataEngineering DevPython DevOps DevJava

all: $(CVS)

# Output names
DataEngineering: OUTNAME=Rafael_Queiroz_Data_Engineer
DevPython: OUTNAME=Rafael_Queiroz_Python_Developer
DevOps: OUTNAME=Rafael_Queiroz_DevOps_Engineer
DevJava: OUTNAME=Rafael_Queiroz_Java_Developer

$(CVS):
	@mkdir -p $(BUILDDIR)
	cd $(SRCDIR) && pdflatex -output-directory=../$(BUILDDIR) -interaction=nonstopmode $@.tex
	cd $(SRCDIR) && pdflatex -output-directory=../$(BUILDDIR) -interaction=nonstopmode $@.tex
	@mv $(BUILDDIR)/$@.pdf $(BUILDDIR)/$(OUTNAME).pdf

clean:
	rm -rf $(BUILDDIR)/*

list:
	@echo "Currículos disponíveis:"
	@echo "  - DataEngineering -> Rafael_Queiroz_Data_Engineer.pdf"
	@echo "  - DevPython -> Rafael_Queiroz_Python_Developer.pdf"
	@echo "  - DevOps -> Rafael_Queiroz_DevOps_Engineer.pdf"
	@echo "  - DevJava -> Rafael_Queiroz_Java_Developer.pdf"

help:
	@echo "Uso: make [target]"
	@echo ""
	@echo "Targets:"
	@echo "  all            Compila todos os currículos (padrão)"
	@echo "  DataEngineering Compila currículo de Engenharia de Dados"
	@echo "  DevPython      Compila currículo de Desenvolvedor Python"
	@echo "  DevOps         Compila currículo de DevOps"
	@echo "  DevJava        Compila currículo de Desenvolvedor Java"
	@echo "  clean          Remove arquivos do diretório build/"
	@echo "  list           Lista todos os currículos disponíveis"
	@echo "  help           Mostra esta mensagem de ajuda"
