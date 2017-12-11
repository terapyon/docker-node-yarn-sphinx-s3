FROM terapyon/node-sphinx-s3
MAINTAINER "Manabu TERADA" <terada@cmscom.jp>

RUN apt-get update -y
RUN apt-get install -y apt-transport-https
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
#RUN rm /bin/sh && ln -s /bin/bash /bin/sh
RUN apt-get update -y

#RUN export NVM_DIR="/root/.nvm" && \
#   source /root/.bashrc && \
#   cd /root && \
#   nvm install v6.9.1 && \
#   nvm use v6.9.1 && \
#   npm -g install yarn 

RUN apt-get install -y yarn

CMD ["/bin/bash"]

