class User{
  String email,pass;
  int height,weight,age;
  String gender;
  User(this.email,this.pass,this.height, this.weight, this.age ,this.gender);
  void setAge(int a)
  {
    this.age=a;
  }
  void setHeight(int h)
  {
    this.height=h;
  }
  void setWeight(int w)
  {
    this.weight=w;
  }
  int getHeight()
  {
    return this.height;
  }
  int getWeight()
  {
    return this.weight;
  }
  int getAge()
  {
    return this.age;
  }
}