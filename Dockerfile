fROM python:3.10-alpine3.15

COPY . /portfolio

WORKDIR /portfolio
RUN pip install -r requirement.txt
EXPOSE 5000
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
