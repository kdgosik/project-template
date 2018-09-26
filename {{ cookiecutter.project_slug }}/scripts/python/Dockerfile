FROM kdgosik/scanpy

# System packages
RUN apt-get update -y && apt-get install -y \
	libicu-dev \
	libpcre3-dev \
	libpq-dev \
	libssl-dev \
	libxml2-dev \
	xorg-dev \
  python-pip


## Custom Python packages
COPY requirements.txt .
RUN pip install -r requirements.txt
