#!/bin/bash


#Install bower update
npm install -g bower-update

cd Sources

bower-update

cd ..

# update to new versions
cp -r Sources/html5shiv/dist/* PlayBootstrapProject/public/javascripts/
cp -r Sources/jquery/dist/* PlayBootstrapProject/public/javascripts/
cp -r Sources/respond/dest/* PlayBootstrapProject/public/javascripts/
cp -r Sources/modernizr/modernizr.js PlayBootstrapProject/app/assets/javascripts/
cp -r Sources/bootstrap/dist/fonts/* PlayBootstrapProject/public/fonts/
cp -r Sources/bootstrap/dist/js/* PlayBootstrapProject/public/javascripts/
cp -r Sources/bootstrap/dist/css/bootstrap.min.css PlayBootstrapProject/public/stylesheets/main.css
cp -r Sources/bootstrap/less/* PlayBootstrapProject/app/assets/stylesheets/less/

cd PlayBootstrapProject/app

#Install grunt-browser-sync
npm install grunt-browser-sync --save-dev

npm install

