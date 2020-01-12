FROM python:3.7.2-alpine3.8
LABEL maintainer=web_calc
WORKDIR /root/student-exam2-master
COPY . .
EXPOSE 5000
RUN python3 -m venv venv && pip install -e .
ENV FLASK_APP=js_example
CMD ["./start.sh" ]
