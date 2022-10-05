FROM appium/appium:latest

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash && \
    apt-get -qqy install nodejs && \
    npm install -g appium@next --unsafe-perm=true --allow-root && \
    exit 0 && \
    appium driver install flutter
