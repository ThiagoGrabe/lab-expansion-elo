# FROM mltooling/ml-workspace:0.9.1

FROM jupyter/datascience-notebook:python-3.9.6
# FROM pytorch/pytorch:latest
# FROM jupyter/tensorflow-notebook:python-3.8.8

# Installing needed packages
COPY .env/requirements.txt .
RUN pip3 install -r requirements.txt
RUN rm -f requirements.txt

ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--LabApp.token=''"]
