FROM ruby
RUN apt-get -y update && apt-get -y install libicu-dev
RUN gem install gollum
RUN gem install redcarpet org-ruby 
VOLUME /wiki
WORKDIR /wiki
RUN gem install asciidoctor
CMD ["gollum","--no-edit"]
EXPOSE 4567
