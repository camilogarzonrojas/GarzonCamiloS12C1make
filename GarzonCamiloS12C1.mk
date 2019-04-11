#MakeFiles

resultados.pdf: resultados.tex plot.pdf plot1.pdf
	pdflatex resultados.tex

plot1.pdf: datos1.dat plotdatos.py
	python plotdatos.py

plot.pdf: datos.dat plotdatos.py
	python plotdatos.py

datos.dat: makedatos.py
	python makedatos.py >> datos.dat

datos1.dat: makedatos1.cpp
	g++ makedatos1.cpp
	./a.out >> datos1.dat
