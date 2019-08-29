void main(){
Student details = new Student(name:'preethi',age:21,branch:'cs',usn:'4gh16cs039');
details.pstudent();
}




class Student{
String name;
int age;
String branch;
String usn;

Student({this.name,this.age,this.branch,this.usn});
void pstudent(){
print("student name is ${this.name} of age is ${this.age}");
}
}

