FROM python:3.14.0a2-alpine

COPY src/requirements.txt /usr/src/app/

RUN pip3 install --no-cache-dir -r /usr/src/app/requirements.txt

COPY src/app.py /usr/src/app/

EXPOSE 5000

CMD ["python3", "/usr/src/app/app.py"]
