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

  module Knowledge
    def program
      puts "I know how to program"
    end

    def sale
      puts "I know how to sale"
    end
  end

  class Person
    def initialize(name)
      @name = name
    end
  end

  class Engineer < Person
    include Knowledge
  end

  jason = Engineer.new("Jason")
  jason.sale
  ```

3. 請說明 class variable 和 instance variable 之間的差別
  ```ruby
  class variable：類別變數在變數前加@@，可放在類別方法與實例方法內使用，用來紀錄資料
  instance variable：實例變數在變數前加@，得放在實例方法內紀錄資料
  ```

4. 請說明 class method 和 instance method 之間的差別
  ```ruby
  class method：類別方法透過new用來產生物件
  instance method：實例方法放在類別方法內，透過類別方法產生物件執行實例方法的內容
  ```

5. 如果今天我為一個叫 User 的 class 產生一個新物件的方式是:
  ```ruby
  User.new("Bob", "male", "Engineer")
  ```
請寫出 User class 的 initialize method
  ```ruby
  class User
    attr_accessor :name :gender :job
    def initialize(name, gender, job)
      @name = name
      @gender = gender
      @job = job
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

    # B.  一個 class 裡，instance method 裡，self代表被呼叫的greet物件
    def greet
      puts "Hello, #{self}"
    end
  end
  ```

7. attr_accessor 的功能是什麼，它和 attr_reader、attr_writer 之間的差別是什麼？
  ```ruby
  attr_accessor：可將實例變數直接設定與讀取使用不須透過getter method、setter method
  attr_reader：只能讀取實例變數
  attr_writer：只能設定實例變數
  ```

8. 請說明 public 和 private method 之間的不同
  ```ruby
  public method：所有的非private的實例方法皆是public method，外部都可呼叫使用
  private method：無法直接執行，須透過類別方法內的實例方法呼叫執行private method，較常變動的資料會放在private method
  ```

9. 請說明 Inheritance 和 Module 之間的差別，它們分別是用於哪些情況？ 請舉例說明
  ```ruby
  Inheritance：一個class只能繼承一個父類別方法內的資料與屬性，但一個class內可以呼叫許多Module
  Module：模組無法單獨被new出來使用，須依靠類別方法使用
  ```

10. 若今天有一個 class 有 include 一個 module，他的 parent class 和 sub class 是否可以使用該 module 裡的 method?
  ```ruby
  父類別無法繼承子類別module method，子類別可繼承父類別module method
  ```

11. 請間單說明什麼是 Relational Database，什麼是 SQL
  ```ruby
  Relational Database：將資料透過資料表紀錄在資料庫中，有一對一、一對多、多對多的關聯性，透過foreign key將資料表的關係相連結
  SQL：是資料庫語言，分成Insert新增、Select讀取、Update更新、Delete刪除的指令(CRUD)操作資料表
  ```
