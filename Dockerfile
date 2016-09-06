FROM andrewosh/binder-base

USER root

RUN apt-get update
RUN apt-get install -y libgeos-dev libgdal-dev && apt-get clean

USER main

#Py3 installs
RUN /home/main/anaconda2/envs/python3/bin/pip install sympy seaborn control fiona folium selenium ggplot shapely

#Py2.7 installs
RUN pip install sympy seaborn control fiona folium selenium ggplot shapely
RUN conda install -y -q fiona
