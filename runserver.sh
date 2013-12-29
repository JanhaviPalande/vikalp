sudo service nginx start
gunicorn vikalp.wsgi -b 0.0.0.0:8000
