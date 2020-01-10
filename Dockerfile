FROM jupyter/minimal-notebook
WORKDIR trendyol

COPY ./trendyol/requirements.txt /home/jovyan/trendyol/

RUN pip install -r requirements.txt 

CMD jupyter notebook \
	--allow-root \
	--notebook-dir=. \
	--no-browser \
	--ip='*' \
	--NotebookApp.token='' \
	--NotebookApp.password=''