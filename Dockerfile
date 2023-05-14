FROM python:3
ADD . /app
RUN python3 -m venv /opt/myapp
RUN /opt/myapp/bin/pip install -U pip
RUN /opt/myapp/bin/pip install /app
RUN /opt/myapp/bin/pip install uvicorn
EXPOSE 8000
ENTRYPOINT ["/opt/myapp/bin/uvicorn", "--host", "0.0.0.0", "--port", "8000", "demo_fastapi.main:app"]
