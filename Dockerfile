#------------------------ Use a imagem base oficial do Python
FROM python:3

#------------------------ Use a imagem base oficial do Python
LABEL maintainer="Alencar"

#------------------------ Configuração do diretório de trabalho
WORKDIR /src

#------------------------ Copie os arquivos necessários para o contêiner
COPY . .

#------------------------ Instale as dependências
RUN pip install pandas
RUN pip install matplotlib
RUN pip install seaborn
RUN pip install chardet
RUN pip install math


#------------------------ Comando para executar sua aplicação
CMD ["python", "src/tradeai.py"]