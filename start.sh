#!/bin/bash

sudo nginx
mongod --dbpath mongodb &
sudo service cassandra start
