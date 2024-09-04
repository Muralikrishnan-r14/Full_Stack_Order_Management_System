import os
import platform
import mysql.connector
import pandas as pd

mydb = mysql.connector.connect(host="localhost", \
                               user="root", \
                               passwd="6Qbdnkkia6,", \
                               database="food")
mycursor = mydb.cursor()


def Customer():
    L = []
    c_id = int(input("Enter the customer ID number : "))
    L.append(c_id)
    name = input("Enter the Customer Name: ")
    L.append(name)
    cphone = int(input("Enter customer phone number : "))
    L.append(cphone)
    payment = int(input("Enter payment method ((1)credit card/(2)Debit Card:) "))
    L.append(payment)
    pstatus = input("Enter the payment status : ")
    L.append(pstatus)
    email = input("Enter the email id")
    L.append(email)
    orderid = input("enter orderid")
    L.append(orderid)
    date = input("Enter the Date  : ")
    L.append(date)
    cust = (L)
    sql = "insert into customer (c_id,name,cphone,payment,pstatus,email,orderid,date) values (%s,%s,%s,%s,%s,%s,%s,%s)"
    mycursor.execute(sql, cust)
    mydb.commit()


# Customer Table :- C_id (PK	C_name	C_phonenum	Payment_method (Cash/Credit Card)	Payment_status (Paid/Unpaid)	Email	Emp_id (FK)	OrderF_id (FK)	date


def Employee():
    L = []
    Emp_id = int(input("Enter the Employee id : "))
    L.append(Emp_id)
    ename = input("Enter the Employee Name: ")
    L.append(ename)
    emp_g = input("Enter Employee Genderr : ")
    L.append(emp_g)
    eage = int(input("Enter Employee age"))
    L.append(eage)
    emp_phone = int(input("enter employee phone number"))
    L.append(emp_phone)
    pwd = input("Enter the password : ")
    L.append(pwd)
    EMP = (L)
    sql = "insert into Employee (Emp_id,ename,emp_g,eage,emp_phone,pwd) values (%s,%s,%s,%s,%s,%s)"
    mycursor.execute(sql, EMP)
    mydb.commit()


def Food():
    L = []
    Food_id = int(input("Enter the Food id : "))
    L.append(Food_id)
    Foodname = input("Enter the Food Name: ")
    L.append(Foodname)
    Food_size = input("Enter Food size : ")
    L.append(Food_size)
    prize = int(input("Enter Prize of Food"))
    L.append(prize)
    Food = (L)
    sql = "insert into Food (Food_id,Foodname,Food_size,prize ) values (%s,%s,%s,%s)"
    mycursor.execute(sql, Food)
    mydb.commit()


# Food_id (PK	Foodname	Food_size	price


def OrderFood():
    L = []
    OrderF_id = int(input("Enter the Food Order id : "))
    L.append(OrderF_id)
    C_id = input("Enter the Customer id : ")
    L.append(C_id)
    Emp_id = input("Enter Employee id: ")
    L.append(Emp_id)
    Food_id = int(input("Enter Food id"))
    L.append(Food_id)
    Food_qty = input("Enter Qty: ")
    L.append(Food_qty)
    Total_price = input("Enter Total_price")
    L.append(Total_price)
    OrderFood = (L)
    sql = "insert into OrderFood (OrderF_id,C_id,Emp_id,Food_id,Food_qty,Total_price ) values (%s,%s,%s,%s,%s,%s)"
    mycursor.execute(sql, OrderFood)
    mydb.commit()


# OrderF_id (PK)	C_id (FK)	Employee_id (FK)	Food_id (FK)	Food_qty	Total_price


def View():
    print("Select the search criteria : ")
    print("1. Employee")
    print("2. Customer")
    print("3. Food")
    print("4. Order Food")
    ch = int(input("Enter the choice 1 to 4 : "))
    if ch == 1:
        s = int(input("enter Employee ID:"))
        rl = (s,)
        sql = "select * from Employee where Emp_id=%s"
        mycursor.execute(sql, rl)
        res = mycursor.fetchall()
        for x in res:
            print(x)



    elif ch == 2:
        s = input("Enter Customer Name : ")
        rl = (s,)
        sql = "select * from Customer where cname=%s"
        mycursor.execute(sql, rl)
        res = mycursor.fetchall()
        for x in res:
            print(x)

    elif ch == 3:

        sql = "select * from Food"
        mycursor.execute(sql)
        res = mycursor.fetchall()
        for x in res:
            print(x)


    elif ch == 4:
        s = int(input("Enter Food id ID : "))
        rl = (s,)
        sql = "select * from Foodorder where food_id=%s"
        mycursor.execute(sql, rl)
        res = mycursor.fetchall()
        for x in res:
            print(x)

    # print("The Food details are as follows : ")
    # print("(Custoemer ID, Food Name, quatity, Cost )")
    # for x in res:
    # print(x)


def feeDeposit():
    L = []
    roll = int(input("Enter the roll number : "))
    L.append(roll)
    feedeposit = int(input("Enter the Fee to be deposited : "))
    L.append(feedeposit)
    month = input("Enter month of fee : ")
    L.append(month)
    fee = (L)
    sql = "insert into fee (roll,feedeposit,month) values (%s,%s,%s)"
    mycursor.execute(sql, fee)
    mydb.commit()


def MenuSet():
    print("Enter 1 : To Add Employee")
    print("Enter 2 : To Add Cutomer details")
    print("Enter 3 : To Add Food Details ")
    print("Enter 4 : For Food Order")
    print("Enter 5 : For feeDeposit")
    print("Enter 6 : To view Food booking")

    try:

        userInput = int(input("Please Select An Above Option: "))
    except ValueError:
        exit("\nHy! That's Not A Number")
    else:
        print("\n")
    if (userInput == 1):
        Employee()
    elif (userInput == 2):
        Customer()
    elif (userInput == 3):
        Food()
    elif (userInput == 4):
        OrderFood()
    elif (userInput == 5):
        feeDeposit()
    elif (userInput == 6):
        View()

    else:
        print("Enter correct choice. . . ")


def runAgain():
    runAgn = input("\nwant to run Again Y/N")
    while runAgn.lower() == 'y':
        if (platform.system() == "Windows"):
            print(os.system('cls'))
        else:
            print(os.system('clear'))
        MenuSet()
        runAgn = input("\nwant to run Againy/n")
        print("Good Bye ... HAVE A NICE DAY")


MenuSet()
runAgain()
