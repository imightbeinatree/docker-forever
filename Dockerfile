#################################################################
#
#                    ##        .
#              ## ## ##       ==
#           ## ## ## ##      ===
#       /""""""""""""""""\___/ ===
#  ~~~ {~~ ~~~~ ~~~ ~~~~ ~~ ~ /  ===- ~~~
#       \______ o          __/
#         \    \        __/
#          \____\______/
#
#################################################################

FROM ruby:latest
MAINTAINER Michael Orr <michael@cloudspace.com>

ADD ruby_scripts/run.rb /run.rb
RUN chmod 755 /run.rb

ADD microservice.yml /microservice.yml

ENTRYPOINT /usr/local/bin/ruby -rubygems /run.rb
