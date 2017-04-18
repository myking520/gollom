FROM ruby
RUN apt-get -y update && apt-get -y install libicu-dev cmake && rm -rf /var/lib/apt/lists/*
RUN gem install github-linguist
RUN gem install gollum
RUN gem install org-ruby  # optional
RUN gem install asciidoctor
RUN gem install creole
RUN gem install wikicloth
RUN gem install RedCloth
WORKDIR /wiki
CMD ["gollum", "--port", "80"]
EXPOSE 80

