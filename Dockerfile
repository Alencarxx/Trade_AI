#------------------------ Use a imagem base oficial do Python
FROM python:3

#------------------------ Use a imagem base oficial do Python
LABEL maintainer="Alencar"

#------------------------ Configuração do diretório de trabalho
WORKDIR /src

#------------------------ Copie os arquivos necessários para o contêiner
COPY . .

#------------------------ Instale as dependências
RUN pip install math
RUN pip install random
RUN pip install numpy
RUN pip install pandas
RUN pip install tensorflow
RUN pip install matplotlib
RUN pip install pandas_datareader
RUN pip install tqdm

#------------------------ Comando para executar sua aplicação
CMD ["python", "src/tradeai.py"]
