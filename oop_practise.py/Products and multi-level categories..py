class catagories:
    def __init__(self,name n parent_id = None):
        self.name = name
        self.parent_id = parent_id
        self.children = children
    
    def add_children(self, child_catagory):
        self.children.append(child_catagory)
    def remove_children(self, child_catagory):
        self.children.remove(child_catagory)
    

class products:
    def __init__(self, name, price, description):
        self.name = name
        self.price = price
        self.description = description
        self.catagories = []
    
    def add_catagory(self, cata):
        self.catagories.append(cata)
    
