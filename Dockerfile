FROM  brunoe/jupyter-db-pg:develop
COPY . ${HOME}/work/notebooks/qs-databases
USER root
RUN chown -R ${NB_UID} ${HOME}
USER ${NB_USER}
