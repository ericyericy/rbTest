1. 請用簡單的方式敘述以下每一行程式碼：
  ```ruby
  # 變數a = 1
  a = 1

  # 實例變數a = 2
  @a = 2

  # 類別變數a = 5
  @@a = 5

  # 使用User類別名稱建立user物件
  user = User.new

  # 獲取user物件內的name資料
  user.name

  # 設定user物件內的name為Joe
  user.name = "Joe"
  ```

2. 什麼是 module? 請寫一段程式碼說明一個 class 要如何使用一個 module 裡面的 method?
  ```ruby
  module不是class，不能new出物件，只能被include到class內使用

  class Person
    def initialize(name)
      @name = name
    end
  end

  class Engineer < Person
    include Knowledge
  end

  為什麼module要放最頂端？
  module Knowledge
    def program
      puts "I know how to program"
    end

    def sale
      puts "I know how to sale"
    end
  end

  jason = Engineer.new("Jason")
  jason.sale
  ```

3. 請說明 class variable 和 instance variable 之間的差別
```ruby

```

4. 請說明 class method 和 instance method 之間的差別

5. 如果今天我為一個叫 User 的 class 產生一個新物件的方式是:
  ```ruby
  User.new("Bob", "male", "Engineer")
  ```
請寫出 User class 的 initialize method
  ```ruby
  class User
    def initialize(name, sex, occupation)
      @name = name
      @sex = sex
      @occupation = occupation
    end
  end
  ```

6. 在：
  A.  一個 class 裡，method 外面
  B.  一個 class 裡，instance method 裡
  self 分別是指向什麼?
  ```ruby
  class Person
    attr_accessor :name

    # A.  一個 class 裡，method 外面，self代表class自己(Person)
    puts self

    def initialize(name)
      @name = name
    end

    def self.talk
      puts "talk ....."
    end

    # A.  一個 class 裡，instance method 裡，self代表被呼叫的greet物件
    def greet
      puts "Hello, #{self}"
    end
  end
  ```

7. attr_accessor 的功能是什麼，它和 attr_reader、attr_writer 之間的差別是什麼？
  

8. 請說明 public 和 private method 之間的不同

9. 請說明 Inheritance 和 Module 之間的差別，它們分別是用於哪些情況？ 請舉例說明

10. 若今天有一個 class 有 include 一個 module，他的 parent class 和 sub class 是否可以使用該 module 裡的 method?

11. 請間單說明什麼是 Relational Database，什麼是 SQL
