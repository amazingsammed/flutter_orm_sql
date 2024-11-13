# SamDb
A Flutter ORM for sqlite database.

# To Start With
After using prisma in next.js, I feel like creating my own personal ORM for sqlite in flutter fully written in dart.
i am not a fun of writing raw queries all the time and putting it in function to be utilized in my flutter application.

# Note
It is in it's *initial stage*, do not expect much now.

# Main idea behind
 * write your own custom schema in dart;
 * use `dart run` to generate the schema file
 * initial your database based any query started
 * enjoy your coding

# Main query style to be implemented

```dart
SamDB database = SamDB(......);

databe.user.findMany();

database.user.where(name,isEqualTo: 'john').findMany();

database.user.where(name,startWith: 's').findMany();

database.user.findMany(limit: 20,orderBy: address);

```

# objective
Try hard to make all fields type safe

