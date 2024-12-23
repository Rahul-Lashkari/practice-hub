#include <iostream>
#include <string>
#include <stack>
#include <limits>
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

bool isPrime(int n) {
    if (n <= 1) return false;
    for (int i = 2; i <= n / 2; ++i) {
        if (n % i == 0) return false;
    }
    return true;
}

class BankAccount {
private:
    string owner;
    double balance;

public:
    BankAccount(string name, double initialBalance) {
        owner = name;
        balance = initialBalance;
    }

    void deposit(double amount) {
        balance += amount;
        cout << "Deposited " << amount << ". New balance: " << balance << endl;
    }

    void withdraw(double amount) {
        if (amount > balance) {
            cout << "Insufficient balance!" << endl;
        } else {
            balance -= amount;
            cout << "Withdrew " << amount << ". New balance: " << balance << endl;
        }
    }

    void display() {
        cout << "Account Holder: " << owner << ", Balance: " << balance << endl;
    }
};

void findMinMax(int arr[], int size) {
    int min = numeric_limits<int>::max();
    int max = numeric_limits<int>::min();

    for (int i = 0; i < size; ++i) {
        if (arr[i] < min) min = arr[i];
        if (arr[i] > max) max = arr[i];
    }

    cout << "Minimum: " << min << ", Maximum: " << max << endl;
}

void addMatrices(int a[2][2], int b[2][2], int result[2][2]) {
    for (int i = 0; i < 2; ++i) {
        for (int j = 0; j < 2; ++j) {
            result[i][j] = a[i][j] + b[i][j];
        }
    }
}

void displayMatrix(int matrix[2][2]) {
    for (int i = 0; i < 2; ++i) {
        for (int j = 0; j < 2; ++j) {
            cout << matrix[i][j] << " ";
        }
        cout << endl;
    }
}

bool isPrime1(int num) {
    if (num <= 1) return false;
    for (int i = 2; i * i <= num; i++) {
        if (num % i == 0) return false;
    }
    return true;
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

    // int num;
    // cout << "Enter a number: ";
    // cin >> num;
    // cout << "Factorial of " << num << " is " << factorial(num) << endl;
    // return 0;

    // int num;
    // cout << "Enter a number: ";
    // cin >> num;
    // if (isPrime(num)) {
    //     cout << num << " is a prime number." << endl;
    // } else {
    //     cout << num << " is not a prime number." << endl;
    // }
    // return 0;

    // BankAccount account("John Doe", 1000.0);
    // account.display();
    // account.deposit(500.0);
    // account.withdraw(300.0);
    // account.withdraw(1500.0);
    // return 0;

    // int arr[] = {34, 78, 12, 89, 23, 45};
    // int size = sizeof(arr) / sizeof(arr[0]);
    // findMinMax(arr, size);
    // return 0;

    // int matrix1[2][2] = {{1, 2}, {3, 4}};
    // int matrix2[2][2] = {{5, 6}, {7, 8}};
    // int result[2][2];

    // addMatrices(matrix1, matrix2, result);

    // cout << "Resultant Matrix: " << endl;
    // displayMatrix(result);

    // return 0;

    // int length, width;
    // cout << "Enter length of the rectangle: ";
    // cin >> length;
    // cout << "Enter width of the rectangle: ";
    // cin >> width;

    // int area = length * width;
    // cout << "Area of the rectangle: " << area << endl;
    // return 0;

    // int num1, num2;
    // cout << "Enter the first number: ";
    // cin >> num1;
    // cout << "Enter the second number: ";
    // cin >> num2;

    // if (num1 > num2) {
    //     cout << num1 << " is larger." << endl;
    // } else if (num2 > num1) {
    //     cout << num2 << " is larger." << endl;
    // } else {
    //     cout << "Both numbers are equal." << endl;
    // }
    // return 0;

    // int n, sum = 0;
    // cout << "Enter a positive integer: ";
    // cin >> n;

    // for (int i = 1; i <= n; ++i) {
    //     sum += i;
    // }

    // cout << "Sum of first " << n << " natural numbers is: " << sum << endl;
    // return 0;

    // int number;
    // cout << "Enter a number: ";
    // cin >> number;

    // cout << "Multiplication Table of " << number << ":" << endl;
    // for (int i = 1; i <= 10; ++i) {
    //     cout << number << " x " << i << " = " << number * i << endl;
    // }

    // return 0;

    // int number;
    // cout << "Enter an integer: ";
    // cin >> number;

    // if (number % 2 == 0) {
    //     cout << number << " is even." << endl;
    // } else {
    //     cout << number << " is odd." << endl;
    // }

    // return 0;

    // int num1, num2, num3;
    // cout << "Enter three numbers: ";
    // cin >> num1 >> num2 >> num3;

    // int largest;
    // if (num1 >= num2 && num1 >= num3)
    //     largest = num1;
    // else if (num2 >= num1 && num2 >= num3)
    //     largest = num2;
    // else
    //     largest = num3;

    // cout << "The largest number is: " << largest << endl;
    // return 0;

    // int number, reverse = 0, remainder;
    // cout << "Enter an integer: ";
    // cin >> number;

    // while (number != 0) {
    //     remainder = number % 10;
    //     reverse = reverse * 10 + remainder;
    //     number /= 10;
    // }

    // cout << "Reversed number: " << reverse << endl;
    // return 0;

    // int n;
    // unsigned long long factorial = 1;

    // cout << "Enter a positive integer: ";
    // cin >> n;

    // if (n < 0) {
    //     cout << "Factorial is not defined for negative numbers." << endl;
    // } else {
    //     for (int i = 1; i <= n; ++i) {
    //         factorial *= i;
    //     }
    //     cout << "Factorial of " << n << " is: " << factorial << endl;
    // }

    // return 0;

    // int n;
    // cout << "Enter a number: ";
    // cin >> n;

    // cout << "Prime numbers up to " << n << " are: ";
    // for (int i = 2; i <= n; i++) {
    //     if (isPrime1(i)) cout << i << " ";
    // }
    // cout << endl;

    // return 0;

    int rows, cols;
    cout << "Enter number of rows and columns: ";
    cin >> rows >> cols;

    int matrix1[10][10], matrix2[10][10], result[10][10];

    cout << "Enter elements of first matrix:\n";
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            cin >> matrix1[i][j];
        }
    }

    cout << "Enter elements of second matrix:\n";
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            cin >> matrix2[i][j];
        }
    }

    // Adding matrices
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            result[i][j] = matrix1[i][j] + matrix2[i][j];
        }
    }

    cout << "Resultant Matrix:\n";
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            cout << result[i][j] << " ";
        }
        cout << endl;
    }

    return 0;

}