import MySQLdb

class Models:
    def __init__(self):
        self.connection=MySQLdb.connect(host='127.0.0.1',user='root',password='0000',database='market')
        self.cursor= self.connection.cursor()

    def get_user(self,user_name,password):
        self.cursor.execute("select * from users where ID_USER='"+user_name+"' and  PASSWORD_USER='"+password+"';")
        myresult = self.cursor.fetchone()
        return myresult