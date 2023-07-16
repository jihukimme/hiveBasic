# todo_hive

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.
and how to use flutter hive. 

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.




## Hive를 사용하는 이유

  - 데이터를 캐시에 저장하면, 앱을 끌 때 데이터가 날아간다 ..> 데이터베이스를 사용하는 이유

  - Hive 는 key-value 기반의 Database 로 가볍고, 간편하다. 물론 경우에 따라 다른 형태의 Database 를 사용하겠지만 모바일 앱에서 사용하기에는 무리없이 사용 할 수 있어 보인다.

  - Flutter app 뿐만 아니라, Desktop, browser 에서 사용할 수 있다.

  - 성능이 우수하고 빠르다.
  - 간단하고 강력한 API 지원
  - 강력한 암호화 기능이 기본적으로 적용  
  - Native 의 의존성이 없다.



### Package 설치

      dependencies:
          hive: ^[version]
          hive_flutter: ^[version]

      dev_dependencies:
          hive_generator: ^[version]
          build_runner: ^[version]

  위의 package 들을 pubspec.yaml 에 추가


### initalize

    import 'package:hive_flutter/hive_flutter.dart';

    await Hive.initFlutter();

  main.dart에 초기화 해주어야 한다.


    await Hive.openBox('myBox');
    final box = Hive.box('myBox');

  경우에 따라 여러개의 Box생성 가능.





## 사용법

### Read


    final box = Hive.box('myBox');

    String name = box.get('name');

    DateTime birthday = box.get('birthday');



### Write


    final box = Hive.box('myBox');

    box.put('name', 'Paul');

    box.put('friends', ['Dave', 'Simon', 'Lisa']);

    box.put(123, 'test');

    box.putAll({'key1': 'value1', 42: 'life'});



### Custom Object 작성

    import 'package:hive/hive.dart';

    part 'person.g.dart';

    @HiveType(typeId: 0)
    class Person {
      @HiveField(0)
      String name;

      @HiveField(1)
      int age;

      @HiveField(2)
      List<String> friends;
  
      Person(this.name, this.age, this.friends);
    }


