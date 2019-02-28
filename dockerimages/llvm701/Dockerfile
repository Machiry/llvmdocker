FROM machiry/ubuntubase

ADD install.sh /tmp/install.sh
RUN chmod a+rx /tmp/install.sh
RUN /tmp/install.sh

CMD ["tail", "-f", "/dev/null" ]
