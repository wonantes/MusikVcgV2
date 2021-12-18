FROM python:3.9-alpine

RUN apk --no-cache add build-base

WORKDIR /app

COPY requirements.txt /app/
RUN pip install -r requirements.txt

COPY tg_shill_bot.py settings.yml /app/

CMD ["python", "-u", "tg_shill_bot.py"]
