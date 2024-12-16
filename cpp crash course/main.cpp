#include <iostream>
#include <string>
using namespace std;

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

    int index = 0;
    while(index<34)
    {
        cout<<"We're at index numbmer "<<index<<endl;
        index = index + 1;
    }

    do
    {
        cout << "We are at index number " << index << endl;
        index = index + 1;
    } while (index < 33);

    for (int i = 1; i <= 34; i++)
    {
        cout<<"The value of i is "<<i<<endl;
    }
}