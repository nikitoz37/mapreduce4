
from master import db


class Post(db.Model):
    __tablename__ = 'top_words'

    id = db.Column(db.Integer, primary_key=True)
    word = db.Column(db.String(30), unique=True, nullable=False)
    num = db.Column(db.Integer, nullable=False)

    def __init__(self, word, num):
        self.word = word
        self.num = num
