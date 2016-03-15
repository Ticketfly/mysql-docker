# Ticketfly MySQL 5.6 Docker image

This image was created from the official [MySQL docker image](https://hub.docker.com/_/mysql/).

It contains a fix for a permission issue in the official MySQL Docker image that prevents MySQL from running properly with Docker on MacOS when using a MacOS directory as a volume to store MySQL DB files (https://github.com/docker-library/mysql/issues/99).

It is also configured to accept 500 connections (the default is 151), and the `root` user doesn't have a password.
