FROM ruby
RUN apt-get -y update && apt-get -y install libicu-dev
RUN gem install gollum
RUN gem install redcarpet org-ruby 
VOLUME /wiki
WORKDIR /wiki
RUN git init
RUN gem install asciidoctor
CMD ["gollum"]
EXPOSE 4567
