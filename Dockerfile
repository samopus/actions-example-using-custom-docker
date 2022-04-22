FROM ubuntu:18.04

COPY binary binary

RUN chmod +x binary

ENTRYPOINT [ "./binary" ]