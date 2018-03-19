export class UserList {
  name: string;
  age: number;
  insertionDate: Date;

  constructor(name: string, age: number, insertionDate: Date = new Date()) {
    this.name = name;
    this.age = age;
    this.insertionDate = insertionDate;
  }
}
