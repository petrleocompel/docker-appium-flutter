FROM appium/appium:latest

#RUN curl -sL https://deb.nodesource.com/setup_18.x | bash && \
#    apt-get -qqy install nodejs gcc g++ make

RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

RUN export NVM_DIR="$HOME/.nvm"
RUN $HOME/nvm.sh 
RUN nvm install v18

RUN npm install -g appium@next --unsafe-perm=true --allow-root

RUN appium driver install --source=npm appium-flutter-driver

