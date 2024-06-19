class software:
    def __init__(self, title, content, lisence_id = None){
        self.title= title
        self.content = content,
        self.lisence_id = lisence_id
    }

    def getName(self):
        return self.title
    
    def set_lisence(self):
        self.lisence_id = lisence_id



class lisence:
    def __init__(self, lisence_key, description, price, expirity_date, ):
        self.lisence_key = lisence_key,
        self.description = description,
        self.price = price,
        self.expirity_date = expirity_date,
    
    def __str__(self):
        return f"{lisence_key} description is {description}"
    

class user:
    def __init__(self, username, email):
        self.username = username,
        self.email = email,
    
    def __str__:
        return f"{username} with email {email}"
    


