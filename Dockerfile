FROM appium/appium:latest

#RUN curl -sL https://deb.nodesource.com/setup_18.x | bash && \
#    apt-get -qqy install nodejs gcc g++ make

ENV NODE_VERSION v18

SHELL ["/bin/bash", "--login", "-i", "-c"]
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
RUN source /root/.bashrc && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default
SHELL ["/bin/bash", "--login", "-c"]

RUN npm install -g appium@next --unsafe-perm=true --allow-root

RUN appium driver install --source=npm appium-flutter-driver

