FROM python:3.8
COPY requirements.txt .

RUN pip install --user -r requirements.txt

WORKDIR /code

COPY ./app.py .

ENV PATH=/root/.local:$PATH
EXPOSE 8080
CMD [ "python", "-u", "/code/app.py" ]
