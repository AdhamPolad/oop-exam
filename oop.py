
# Inheritance
# class Animal():
#     def __init__(self, name,age):
#         self.name = name
#         self.age = age
    
 


# class Cat(Animal):
#     def __init__(self,name,age):
#         super().__init__(name,age)
    

# c1 = Cat('a',2)

# print(c1.age)


# Encapsulation

# class Payment:
#     def __init__(self, price):
#         self.__final_price = price + price*0.05
#     def get_final_price(self):
#         return self.__final_price
#     def set_final_price(self, discount):
#         self.__final_price =self.__final_price - self.__discount(discount)
    
#     def __discount(self,discount):
#         return self.__final_price * (discount/100)



# b = Payment(20)
# b.set_final_price(10)

# print(b.get_final_price())


#Polymorphism

# class Dog:
#     def voice(self):
#         print("hav hav")

# class Cat:
#     def voice(self):
#         print('Miyaw')

# class Bird:
#     def voice(self):
#         print("CIk cik")

# def AnimalVoice(animal):
#     animal.voice()

# dog = Dog()
# cat = Cat()

# AnimalVoice(dog)




# Abstraction

# def area(a: float, b: float):
#     if a<= 0 or b<=0:
#         print("Invalid sides")
#     else:
#         print(f"area of figure is {a*b}")
    
# a = int(input("Please enter a: "))
# b = int(input("Please enter b: "))

# area(a,b)
    

#Polymorphism. Method Overloading
# class Mother:
#     def __init__(self) -> None:
#         pass
    
#     def show(self, name: str, surname: str):
#         print(f"Hello, my name is {name} {surname}")
#     def show(self, name:str, surname: str, age: int):
#         print(f"My name is {name} {surname}. I am {age} years old")

# check = Mother()
# check.show('Adham', "Poladzadeh")


#Polymorphism. Method overriding

class Mother:
    def __init__(self):
        pass
    
    def show(self):
        print('My name is Adham')

class Child(Mother):
    def show(self):
        print('My name is Nigar')

child = Child()
child.show()

