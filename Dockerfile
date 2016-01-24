FROM django:1.9.1-python3

ENV ROOT /app

RUN mkdir $ROOT
ADD ./arrr/ $ROOT/arrr
ADD ./docs/ $ROOT/docs
ADD ./requirements/ $ROOT/requirements
ADD ./requirements.txt $ROOT/
ADD ./setup.py $ROOT/
ADD ./docker-entrypoint.sh $ROOT/

WORKDIR $ROOT
RUN python3 setup.py install
EXPOSE 8085

ENTRYPOINT ["./docker-entrypoint.sh"]
CMD ["server"]
