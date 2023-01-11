FROM appium/appium:latest

#RUN curl -sL https://deb.nodesource.com/setup_18.x | bash && \
#    apt-get -qqy install nodejs gcc g++ make

ENV NODE_VERSION v18

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default

ENV NODE_PATH $NVM_DIR/v$NODE_VERSION/lib/node_modules
ENV PATH      $NVM_DIR/v$NODE_VERSION/bin:$PATH

RUN npm install -g appium@next --unsafe-perm=true --allow-root

RUN appium driver install --source=npm appium-flutter-driver

