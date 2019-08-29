void main()
{
String a="2";
String b="3";
int c = add(a,b);
print('sum is $c');
}

int add(int x,int y)
{
int num = int.parse(x);
int num2 = int.parse(y);
int sum = num+num2;
return sum;
}

