# PropertySale
1 Introduction
Online property sale is a java based web application.
This Online Property Sale Java Project provides a web-
site to the users to access the information about the prop-
erty to be purchased. This system maintains a central-
ized repository of all the information.
This system is an online real estate management through
which individuals agents or buyers can maintains their
property documents by keeping and managing the prop-
erty registration. This system also allows access to its
information and manages all the adding, updating and
deleting the tasks.
This system organizes the data eciently and this helps
in streamlining the data display to the users. The system
also allows the generation of reports based on dierent
criteria.

1.1 Objective:
The main objective of this Online Property Sale Portal
is to provide access to the information about real estate
agency. This project keeps track of account details of
buyer and investors. This project allows companies and
builders to post and edit the properties of the informa-
tion about real estate agency.

2 Modules
2.1 Administrator module:
Administrator manages the entire application. Adminis-
trator can add, delete, edit and view plot and property
details. Administrator communicates with potential cus-
tomers and manages all transactions. Administrator also
manages employee details working with the organization.
2.2 User module:
A user can view the property details on display. A user
can also make payments through Demand Draft and view
the corresponding details.
2.3 Sales module:
This module tracks and records details of each transac-
tion. The details allow administrator to nd the status
of each property. The data can also be viewed by users.
2.4 Reports:
The system allows administrator to generate various re-
ports based on dierent criteria such as customer data,
sales data and property information.

3 Classes and Interface
3.1 Classes:
1. Administrator : Will hold the Administrator Details
and will have methods to create,edit and delete User
and Property details.
2. User : Will contain the user prole details, Registra-
tion form for new Users and the User's past transac-
tion history.
3. Buyer : Will inherit User class and can shortlist
from the available properties according to the re-
quirements of the Buyer. And there will also be a
method for payment.
4. Seller : Will inherit User class and can add property
for sale and its required information.
5. Property : Seller will add objects of Property class
and provide its corresponding information at the same
time.
6. Sales : Will give the transaction details by sorting
it according to Users , Locality , Price , Size etc.
The access to these details will be given only to the
Administrator.
7. Reports : Will display the graphical representation
of provided data.
3.2 Interfaces:
1. Login/Logout:will be implemented by user and ad-
ministrator classes.It will contain methods for autho-
rised user to Login.
2. Forgot Password:Will have dierent denation of meth-
ods in user and administrator classes for changing
password.
3. Search : Will contain dierent methods for searching
properties by sorting it according to Locality , Price
, Size etc.
4 Inheritance structures of the classes
1. Administrator class will extend Sales class and will
implement Login/Logout , Forgot Password and Search
Interface.
2. User class will extend Reports class and will imple-
ment Login/Logout , Forgot Password.
3. Buyer class will extend User class and will implement
Search Interface.
4. Seller class will extend User class and will implement
Search Interface.
5. Property class will extend Seller class.
6. Sales class will extend User class and implement Search
interface.
7. Report class will extend Property class and imple-
ment Search interface.
