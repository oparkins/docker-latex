from ubuntu:16.04

RUN apt-get update && apt-get install texlive-full -y

RUN groupadd -r pdflatex -g 1000 && useradd --no-log-init -r -u 1000 -g pdflatex pdflatex

USER pdflatex

