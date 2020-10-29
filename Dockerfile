FROM r-base
COPY install_libraries.R renv.lock /
RUN apt-get update && \
	apt-get install --yes \
		libcurl4-openssl-dev \
		libssl-dev \
		libxml2-dev \
		libgdal-dev \
		&& \
	Rscript /install_libraries.R && \
	apt-get clean

