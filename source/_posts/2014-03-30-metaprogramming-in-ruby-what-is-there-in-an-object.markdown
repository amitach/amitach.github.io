---
layout: post
title: "Metaprogramming in Ruby: What is there in an Object"
date: 2014-03-30 01:33:08 +0530
comments: true
categories: [Ruby, Metaprogramming, Metaprogramming in Ruby, Object, Open Classes, Ruby variables] 
---
Before we dive into details of Metaprogramming lets first see what is really there in an Object,
observe the following piece of code.

``` ruby A simple object with an instance variable 
 class A
  def method
   @v = 1
  end
 end 
 a = A.new
 a.class # => A
```
<p>
    The above piece of code primarily has three things
    <ol style="margin-left:30px">
        <li>Instance Variable</li>
        <li>Method</li>
        <li>Class</li>
    </ol>
    <strong>Let's look at each one of them closely now</strong>
    <ul style="margin-left:30px">
        <li><h4>Instance Variable:</h4>
            An instance variable has a name beginning with @ and its scope is confined to whatever object self refers to.
            <p> Objects contain instance variables, Ruby provides a method <span class ="quotes" > Object#instance_variables()</span> to peek at them.
            In the above example we have just one instance variable</p>
``` ruby Instance Variables for the above piece of code 
 a.method  
 a.instance_variables # => [:@v] 
```
        <p>Unlike in static languages like Java, in Ruby there is no connection between an object's class and its instance variables.
Instance Variables come into existence whenever you assign them a value. Important thing to understand is that you can have objects of the <span class='quotes'>"same"</span> class that carry different sets of instance variables</p>

Look at the following code
``` ruby Different instance variables per object
 class A  
   def method  
     @v = 1  
   end  
   def new_method  
     @c = 2  
   end  
 end  
 a = A.new  
 a.method  
 a.instance_variables #=> [:@v]  
 b = A.new  
 b.new_method  
 b.instance_variables #=> [:@c]  
```
Observe that if we hadn't called <span class='quotes'>a.method()</span> or <span class='quotes'> b.new_method() </span> objects a or b would not have any instance variables.
That gives a basic idea of what instance variables are. Now let's move onto methods.
        </li>
        <br/>
        <li><h4>Method:</h4>
            Besides having instance variables objects have methods

You can see an objects methods by calling <span class="quotes">Object#methods()</span>. Most of the methods will be the methods inherited from Object so this list of methods will be quite long.

We can use <span class="quotes"> Array#grep()</span> to find the method we are looking for

``` ruby Objects have methods and can be searched using grep
     a.methods.grep(/new_/) #=> [:new_method] 
```
Methods are analogous to functions in C or methods in Java so let's not deep dive into them.

        </li>
        <br/>
        <li><h4>Class:</h4>
Yes, classes are nothing but objects in ruby and since a class is an object, everything that applies to an object also applies to a class.

Classes like any object have their own class, called <span class="quotes"> Class </span>
<br/>
<ul>
<li>The method of an object are the instance methods of its class.</li> 
<li>Methods of a class are the instance methods of <span class="quotes"> Class</span>.</li>
</ul>
<br/>
Read that again
<br/>
<br/>
Following is an example that shows that String's class is Class
``` ruby String's class
    head :001 > String.class
 => Class
```
        </li>
    </ul>

That should clear the basics of what all an object has. Next post will be about the object model.
</p>
