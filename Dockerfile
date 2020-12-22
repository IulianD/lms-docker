FROM lmscommunity/logitechmediaserver:stable

RUN echo "deb http://www.deb-multimedia.org buster main non-free" | tee -a /etc/apt/sources.list && \
    apt-get update -o Acquire::AllowInsecureRepositories=true && apt-get install -y --allow-unauthenticated deb-multimedia-keyring && \
    apt-get install -y --allow-unauthenticated \
    lame \
    libasound2 \
    --no-install-recommends && \
    apt-get upgrade -y --allow-unauthenticated && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
