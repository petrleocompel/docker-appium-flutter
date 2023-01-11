FROM appium/appium:latest

RUN curl -sL https://deb.nodesource.com/setup_18.x | bash && \
    apt-get -qqy install nodejs gcc g++ make

RUN npm install -g appium@next --unsafe-perm=true --allow-root

RUN appium driver install --source=npm appium-flutter-driver

