FROM python
ADD behave python-test/behave
RUN pip install behave
RUN pip install requests
WORKDIR python-test/behave
ENTRYPOINT bash