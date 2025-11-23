
T0 = "Tema 0 - Iniciación a las herramientas digitales en el aula.docx"
T0TEX = "0.0_Intro.tex"
T1 = "Tema 1 - TIC, Licencias y Recursos.docx"
T1TEX = "1.0_TIC.tex"
T2 = "Tema 2 - Presentaciones - Canva.docx"
T3 = "Tema 3 - Interacción - Genially.docx"
T4 = "Tema 4 - Cuestionarios - Kahoot.docx" 
T5 = "Tema 5 - Otras herramientas.docx"
T6 = "Tema 6 - Herramientas IA en educación.docx"
VARIOS = "Varios.docx"

all: 0 1 2 3 4 5 6

tex: 0tex 1tex

0:
	pandoc --pdf-engine=xelatex   \
		-V papersize:a4paper    \
		--reference-doc=plantilla.docx \
		-o  $(T0)  \
		0.0.0.0.Cabecera.md \
		0.0.0.0.Cabecera_latex.md \
		0.0.Presentacion_personal.md \
		0.5.Presentacion_curso.md \
		0.7.Estructura_curso.md \
		0.8.Formato_curso.md

0tex:
	pandoc --read=markdown --write=latex --standalone \
		-V papersize:a4paper    \
		--template=./LaTeX_ES.latex    \
		-o  $(T0TEX)  \
		0.0.0.0.Cabecera.md \
		0.0.0.0.Cabecera_latex.md \
		0.0.Presentacion_personal.md \
		0.5.Presentacion_curso.md \
		0.7.Estructura_curso.md \
		0.8.Formato_curso.md


1:
	pandoc --pdf-engine=xelatex   \
		-V papersize:a4paper    \
		--template=./LaTeX_ES.latex    \
		--reference-doc=plantilla.docx \
		-o  $(T1)  \
		1.0.0.0.Cabecera.md        \
		1.0.0.0.Cabecera.tex \
		1.0.TIC_aulas_contenidos.md \
		1.2.0.Licencias.md \
		1.2.2.Porque_licencias_libres.md \
		1.2.3.Licencias_CC.md \
		1.2.6.Licencias_limitaciones.md \
		1.2.9.Licencias_recursos.md \
		1.3.Bancos_recursos.md \
		1.4.Google_expeditions.md \
		1.6.QR.md \
		1.9.web-apps.md \
		1.z.Conceptos.md

1tex:
	pandoc --read=markdown --write=latex --standalone \
		-V papersize:a4paper    \
		-o  $(T1TEX)  \
		1.0.0.0.Cabecera.tex \
		1.0.0.0.Cabecera.md \
		1.0.TIC_aulas_contenidos.md \
		1.2.0.Licencias.md \
		1.2.2.Porque_licencias_libres.md \
		1.2.3.Licencias_CC.md \
		1.2.6.Licencias_limitaciones.md \
		1.2.9.Licencias_recursos.md \
		1.3.Bancos_recursos.md \
		1.4.Google_expeditions.md \
		1.6.QR.md \
		1.9.web-apps.md \
		1.z.Conceptos.md		

2:
	pandoc --pdf-engine=xelatex   \
		-V papersize:a4paper    \
		--template=./LaTeX_ES.latex    \
		--reference-doc=plantilla.docx \
		-o  $(T2)  \
		2.0.0.0.0.Cabecera.md        \
		2.0.0.0.0.Cabecera_latex.md \
		2.0.0.Presentaciones.md \
		2.0.1.Canva.md \
		2.0.1.Canva_intro.md \
		2.0.2.Canva_tutorial_impacientes.md \
		2.0.3.Canva_Licencias.md \
		2.0.4.Canva_educacion.md \
		2.1.Canva_app_web.md \
		2.2.0.Canva_tutorial.md \
		2.3.0.Canva_ejemplos.md \
		2.3.1.0.Canva_Presentaciones.md \
		2.3.1.1.Canva_ejemplo_presentaciones.md \
		2.3.2.0.Canva_infografia.md \
		2.3.2.1.Canva_infografía_mas_ejemplos.md \
		2.3.3.Canva_lineas_temporales.md \
		2.3.4.Canva_poster.md \
		2.4.Canva_redes_sociales.md \
		2.6.Canva_videos.md \
		2.7.0.Canva_otros_formatos.md \
		2.8.0.Canva_alternativas.md \
		2.8.1.Canva-powerpoint.md \
		2.9.9.Trucos_canva.md
		
3:
	pandoc --pdf-engine=xelatex   \
		-V papersize:a4paper    \
		--template=./LaTeX_ES.latex    \
		--reference-doc=plantilla.docx \
		-o  $(T3)  \
		3.0.0.0.Cabecera.md        \
		3.0.0.0.Cabecera_latex.md \
		3.0.0.Creando_contenidos_interactivos.md \
		3.0.1.Genially.md \
		3.0.2.Diferencia_genially-canva.md \
		3.0.3.Caracteristicas_genially.md \
		3.0.4.Licencias_genially.md \
		3.1.Genially_tutorial.md \
		3.2.Genially_interaccion.md \
		3.3.0.Genially_ejemplos.md \
		3.3.1.Ideas_genially.md \
		3.4.Genially_plantillas.md \
		3.5.Genially_Reutilizar.md \
		3.6.Genially_gamificacion.md \
		3.7.Genially_trucos.md \
		3.9.Genially_alternativas.md

4:
	pandoc --pdf-engine=xelatex   \
		-V papersize:a4paper    \
		--template=./LaTeX_ES.latex    \
		--reference-doc=plantilla.docx \
		-o  $(T4)  \
		4.0.0.0.Cabecera.md        \
		4.0.0.0.Cabecera_latex.md \
		4.0.0.Cuestionarios.md \
		4.0.2.Kahoot.md \
		4.0.3.Jugando-kahoot.md \
		4.0.4.Usos_kahoot.md \
		4.0.5.Caracteristicas_kahoot.md \
		4.0.7.Licencias_kahoot.md \
		4.0.9.Usando_kahoot.md \
		4.1.0.Kahoot_tutorial.md \
		4.1.1.Recorrido-kahoot.md \
		4.1.2.Creando_kahoot.md \
		4.2.Kahoot_ideas_ejemplos.md \
		4.3.Kahoot_cursos.md \
		4.5.0.Kahoot_alternativas.md \
		4.5.1.Quizizz.md \
		4.5.2.Blooket.md \
		4.5.5.Plickers.md

5:
	pandoc --pdf-engine=xelatex   \
		-V papersize:a4paper    \
		--template=./LaTeX_ES.latex    \
		--reference-doc=plantilla.docx \
		-o  $(T5)  \
		5.0.0.0.Cabecera.md        \
		5.0.0.0.Cabecera_latex.md \
		5.0.Otras_herramientas.md \
		5.1.Edpuzzle.md \
		5.2.Educaplay.md \
		5.8.bitmoji.md

6:
	pandoc --pdf-engine=xelatex   \
		-V papersize:a4paper    \
		--template=./LaTeX_ES.latex    \
		--reference-doc=plantilla.docx \
		-o  $(T6)  \
		6.0.0.0.Cabecera_latex.md \
		6.0.0.0.Cabecera.md \
		"6.0.IA y educación.md" \
		"6.1.IA generativa.md" \
		"6.2.Creación de imágenes con Google Nano Banana.md" \
		"6.3.Google NotebookLM.md" \
		"6.4.Gemini StoryBook.md" \
		"6.5.Gamma.md"


varios:
	pandoc --pdf-engine=xelatex   \
		-V papersize:a4paper    \
		--template=./LaTeX_ES.latex    \
		--reference-doc=plantilla.docx \
		-o  $(VARIOS) \
		2.0.1.Canva_intro.md \
		"2.IA.Canva IA.md" \
		"3.IA.Genially IA.md" \
		"4.5.6.Mentimeter.md" \
		"4.5.7.Quizlet.md" \
		"5.3.Padlet.md" \
		"5.5.Aplicaciones alternativas.md"

