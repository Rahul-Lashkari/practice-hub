#include <iostream>
#include <string>
using namespace std;

// f(x) = x^2 + 2
int add(int a, int b)
{
    int c;
    c = a+b;
    return c;
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

    // ---
    //     int arr[] = {1, 3, 6};
    // // Array Index   0  1  2
    //     // cout<<arr[1];
    //     int marks[6];

    //     for (int i = 0; i < 6; i++)
    //     {
    //         cout<<"Enter the marks of "<<i<<"th student"<<endl;
    //         cin>>marks[i];
    //     }

    //     for (int i = 0; i < 6; i++)
    //     {
    //         cout<<"Marks of "<<i<<"th student is "<<marks[i]<<endl;
    //     }

    // int arr2d[2][3] = {  {1,2,3},
    //                      {4,5,6}};

    // for (int i = 0; i < 2; i++)
    // {
    //     for (int j = 0; j < 3; j++)
    //     {
    //         cout<<"The value at "<<i<<","<<j<<" is "<<arr2d[i][j]<<endl;
    //     }
    // }
    
    int arr[] = {1,2,3};
    int marks[6];

    for(int i=1; i<6; i++)
    {
        cout<<"Enter the marks of "<<i<<"th student"<<endl;
        cin>>marks[i];
    }

    for(int i=1; i<6; i++)
    {
        cout<<"Marks of "<<i<<"th student is "<<marks[i]<<endl;
    }
}