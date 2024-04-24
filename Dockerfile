FROM python


WORKDIR /cloud
COPY . /cloud

RUN pip install --no-cache-dir nltk
RUN python -m nltk.downloader stopwords


CMD [ "python","cloud.py" ]