from Models.Base import *

class Post(Base):
    id = PrimaryKeyField()
    name = CharField()

    class Meta:
        table_name = 'Post'

if __name__ == "__main__":
    pass