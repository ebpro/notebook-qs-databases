FROM  brunoe/jupyter-db-pg:develop
COPY . ${HOME}/work/notebooks/qs-databases
USER root
RUN chown -R ${NB_UID} ${HOME}

RUN wget https://www.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip -O /tmp/dvdrental.zip && \
	(cd /initdb.d && unzip /tmp/dvdrental.zip) && \
	rm /tmp/dvdrental.zip

USER ${NB_USER}
