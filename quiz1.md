1. 請說明 Fixnum (整數) 和 Float (浮點數) 之間的差異
  ```ruby
  fixnum = 10
  float = 10.03
  ```

2. 今天有兩個字串：
  ```ruby
  str1 = "Hallo Welt!"
  str2 = " NTU Rails 261!"
  ```
請說明以下兩個印出字串的方式的不同處：
  ```ruby
  put "str1 + str2 :會消耗教多記憶體"
  puts str1 + str2
  put "/#/{str1/}/#/{str2/} :字串內插較省記憶體"
  puts "#{str1}#{str2}"
  ```

3. 請解釋 array 和 hash 的不同處
  ```ruby
  array = ['a', 'b', 'c']
  hash = { name: 'bob', age: 25, phone: '123456'}
  ```

4. 請用一行程式碼從 [1, "a string", 3.14, [1,2,3,4]] 這個陣列找出所有非字串的值
  ```ruby
  array = [1, "a string", 3.14, [1,2,3,4]]
  array.select
  ```

5. 請用一行程式碼把一個內容為整數 1 到 100 的陣列裡所有的值加上 2
  ```ruby
  ```

6. 請寫出以下兩行程式碼迴傳的值，並解釋他們呼叫的方法差別為何：
  ```ruby
  [1, 2, 3, 3].uniq
  結果為 [1, 2, 3]，原始陣列 [1, 2, 3, 3]
  [1, 2, 3, 3].uniq!
  結果為 [1, 2, 3]，原始陣列 [1, 2, 3]
  ```

7. 請列出兩種產出亂數的方法
  ```ruby
  [1, 2, 3, 4, 5].sample
  [1, 2, 3, 4, 5].shuffle.last
  ```

8. 以下這段程式碼：
  ```ruby
  ((1 > 3)&&(true == true))||(!!!false)
  => (false && true) || true
  => true
  ```
  會執行出什麼結果？ 請試試不用 irb 算出結果

9. 請問 binding.pry 是什麼？ 要如何使用它？


10. 下面的一段程式碼，請嘗試用其他方法把 if...else...end 簡化成一行

  ```ruby
  var = 5

  if var >= 5
    return "var is greater than or equal to 5"
  else
    return "var is less than 5"
  end

  puts var >= 5 ? "var is greater than or equal to 5" : "var is less than 5"
  ```

11. 請列出兩種不同的 hash 寫法
  ```ruby
  hash1 = { :name => 'bob', :age => 25, :phone => "123456" }
  hash2 = { name: 'bob', age: 25, phone: "123456" }
  ```
