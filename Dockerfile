FROM ruby:1.9.3

LABEL maintainer="Eric Shelley <eric@webdesignbakery.com>"

ENV INSTALL_PATH /sap
RUN mkdir -p ${INSTALL_PATH}
WORKDIR ${INSTALL_PATH}

COPY Gemfile .
COPY Gemfile.lock .

# Install dependencies
RUN bundle install

# Copy over all source files to the container
COPY . .

### Development environment setup ###
# Set the TERM and SHELL environment variables
ENV TERM xterm-256color
ENV SHELL $(which sh)

### Development environment customizations ###
RUN echo "export PAGER=more" >> ~/.bashrc && \
  echo "export PS1=\"🐳  \[\033[1;36m\]\h \[\033[1;34m\]\W\[\033[0;35m\] \[\033[1;36m\]# \[\033[0m\]\"" >> ~/.bashrc && \
  echo "alias ll='ls -lAh'" >> ~/.bashrc && \
  echo "alias l='ls -lah'" >> ~/.bashrc && \
  echo "alias dir='tree -d -L 1'" >> ~/.bashrc && \
  echo "alias be='bundle exec '" >> ~/.bashrc && \
  echo "alias rc='bundle exec rails c'" >> ~/.bashrc && \
  echo "alias rs='bundle exec rails s -b 0.0.0.0'" >> ~/.bashrc

COPY .pryrc ~/.pryrc
### END Development environment setup ###

EXPOSE 3000

CMD [ "bundle", "exec", "rails", "s", "-b", "0.0.0.0" ]
