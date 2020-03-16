require('minitest/autorun')
require('minitest/reporters')

require_relative('../codeclan_student.rb')

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestCodeclanStudent < Minitest::Test

  def setup
    @student = Student.new("Evgeny", "G18")
  end

  def test_student_name
    assert_equal("Evgeny", @student.student_name)
  end

  def test_student_cohort
    assert_equal("G18", @student.cohort)
  end

  def test_set_student_name
    assert_equal("Alex", @student.set_student_name("Alex"))
  end

  def test_set_cohort
    assert_equal("G19", @student.set_cohort("G19"))
  end

  def test_talk
    assert_equal("I can talk!", @student.talk)
  end

  def test_say_favourite_language
    assert_equal("I love JavaScript", @student.say_favourite_language("JavaScript"))
  end 


end


=begin
Part A
For this part we want you to make a class that represents a CodeClan student.

Create a class called Student that takes in a name (String) and a cohort
(string - e.g “E18”, “G6”, etc) when an new instance is created.

Create a couple of Getter methods, one that returns the name property and
one that returns the cohort property of the student.


Add in Setter methods to update the students name and what cohort they are in.


Create a method that gets the student to talk (eg. Returns “I can talk!).
Create a method that takes in a students favourite programming language and
returns it as part of a string
(eg. student1.say_favourite_language("Ruby") -> “I love Ruby”).
=end
