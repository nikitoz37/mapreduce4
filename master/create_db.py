import time
from master import db, app

time.sleep(10)

with app.app_context():
    db.create_all()
