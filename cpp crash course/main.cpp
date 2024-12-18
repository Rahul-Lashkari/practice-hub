#include <iostream>
#include <string>
#include <stack>
using namespace std;

// f(x) = x^2 + 2
int add(int a, int b)
{
    int c;
    c = a+b;
    return c;
}

class Employee
{
public:
    string name;
    int salary;

    Employee(string n, int s, int sp)
    {
        this->name = n;
        this->salary = s;
    }

    void printDetails()
    {
        cout << "The name of our first employee is " << this->name << " and his salary is " << this->salary << " Dollars" << endl;
    }

    void getSecretPassword()
    {
        cout<<"The secret password of employee is "<<this->secretPassword;
    }

private:
    int secretPassword;

};

class Programmer : public Employee
{
    public:
        int errors;
        
};

void reverseString(string str) {
    stack<char> s;
    for (char ch : str) {
        s.push(ch);
    }
    while (!s.empty()) {
        cout << s.top();
        s.pop();
    }
    cout << endl;
}

int factorial(int n) {
    if (n <= 1) {
        return 1;
    }
    return n * factorial(n - 1);
}


int main()
{
    // cout<<"Hello World"<<endl;
    // cout<<"Next Line";
    // int a, b, c;
    // short s23423a=9;
    // cout<<s23423a;

    // camelCase Notation
    // int marksInMaths=83;
    // cout<<"The marks of the student in maths is "<<marksInMaths;

    // string harry = "harry";
    // short a;
    // int b= 89;
    // long c;
    // long long d;
    // float const score = 45.32;
    // double score2 = 45.322;
    // long double score3 = 45.332;
    // score = 34.2;
    // b = 34;
    // cout<<"The score is "<<score;

    // int a, b;
    // cout<<"Enter first number: "<<endl;
    // cin>>a;

    // cout<<"Enter second number: "<<endl;
    // cin>>b;

    // cout<<"a + b is "<<a + b<<endl;
    // cout<<"a - b is "<<a - b<<endl;
    // cout<<"a * b is "<<a * b<<endl;
    // cout<<"a / b is "<<(float) a / b<<endl;

    // int age;
    // cout << "Enter your Age: " <<endl;
    // cin >> age;

    // switch (age)
    // {
    // case 12:
    //     cout << "You're 12 years old"<<endl;
    //     break;
    // case 18:
    //     cout << "You're 18 years old"<<endl;
    //     break;

    // default:
    //     cout<< "You're neither 12 nor 18 years old";
    // }

    // if(age>150 || age<1)
    // {
    //     cout<<"Invalid Age!";
    // }

    // else if (age>=18){
    //     cout<<"You can vote";
    // }

    // else{
    //     cout<<"You cannot vote";
    // }

    // int index = 0;
    // while(index<34)
    // {
    //     cout<<"We're at index numbmer "<<index<<endl;
    //     index = index + 1;
    // }

    // do
    // {
    //     cout << "We are at index number " << index << endl;
    //     index = index + 1;
    // } while (index < 33);

    // for (int i = 1; i <= 34; i++)
    // {
    //     cout<<"The value of i is "<<i<<endl;
    // }

    // int a, b;
    // cout<<"Enter first number: "<<endl;
    // cin>>a;

    // cout<<"Enter Second number: "<<endl;
    // cin>>b;
    // cout<<"The function returned: "<<add(a,b);
    
    // int arr[] = {1,2,3};
    // int marks[6];

    // for(int i=1; i<6; i++)
    // {
    //     cout<<"Enter the marks of "<<i<<"th student"<<endl;
    //     cin>>marks[i];
    // }

    // for(int i=1; i<6; i++)
    // {
    //     cout<<"Marks of "<<i<<"th student is "<<marks[i]<<endl;
    // }

    // int arr2d[2][3] = {  {1,2,3},
    //                      {4,5,6}};

    // for (int i = 0; i < 2; i++)
    // {
    //     for (int j = 0; j < 3; j++)
    //     {
    //         cout<<"The value at "<<i<<","<<j<<" is "<<arr2d[i][j]<<endl;
    //     }
    // }

    // int arr2d[2][3] = {  {1,2,3}, {4,5,6}};

    // for( int i=0; i<2; i++)
    // {
    //     for(int j =0; j<3; j++)
    //     {
    //         cout<<"The value at "<<i<<","<<j<<" is "<<arr2d[i][j]<<endl;
    //     }
    // }

    // int a =343;
    // float b = 87.94;
    // cout<<(float) a/34<<endl;

    // cout<<(int) b; ---

    // string name = "harry";
    // cout<<"The name is "<<name<<endl;
    // cout<<"The length of name is "<<name.length()<<endl;
    // cout<<"The name is "<<name.substr(1,155)<<endl;
    // cout<<"The name is "<<name.substr(2,2); ----

    // float a = 34.34;
    // float* ptra;
    // ptra = &a;
    // cout<<"The value of a is "<<a<<endl;
    // cout<<"The value of a is "<<*ptra<<endl;
    // cout<<"The address of a is "<<&a<<endl;
    // cout<<"The address of a is "<<ptra<<endl;

    // Employee har("Harry constructor", 344, 324432);
    // har.name = "harry";
    // har.salary = 100;
    // har.printDetails();
    // har.getSecretPassword();
    // cout<<har.secretPassword;
    // cout<<"The name of our first employee is "<< har.name << " and his salary is "<<har.salary<<" Dollars"<<endl;

    // return 0;

    // Reverse a String Using Stack
    // string str = "Hello, World!";
    // reverseString(str);
    // return 0;

    int num;
    cout << "Enter a number: ";
    cin >> num;
    cout << "Factorial of " << num << " is " << factorial(num) << endl;
    return 0;

}