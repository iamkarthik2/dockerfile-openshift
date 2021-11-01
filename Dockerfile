FROM python
WORKDIR /opt/demo/
COPY requirements.txt /opt/demo
COPY tiny_app.py /opt/demo
RUN python3 -m pip install Flask==1.0.2
RUN pip install -r /opt/demo/requirements.txt
ENTRYPOINT python3 /opt/demp/tiny_app.py
