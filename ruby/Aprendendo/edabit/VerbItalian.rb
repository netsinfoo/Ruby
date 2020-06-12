require "test/unit/assertions"
include Test::Unit
def conjugate(verb, pronoun)
root = verb[0..-4]
conj={"Io"=>"o", "Tu"=>"i", "Egli"=>"a", "Noi"=>"iamo", "Voi"=>"ate", "Essi"=>"ano"}
pronoune = conj.keys[pronoun - 1]
if root[-1] == "c" || root[-1] == "g"
	ans = pronoune +" "+ root+"h"+conj[pronoune]
	elsif root[-1] == "i"
	if pronoune == "Tu" || pronoune == "Noi"
	ans = pronoune +" "+ verb[0..-5]+conj[pronoune]
	else
	ans = pronoune +" "+ root +conj[pronoune]
	end
else
	ans = pronoune +" "+ root +conj[pronoune]
end
 
return ans
end

Test.assert_equal(conjugate("edabittare", 4), "Noi edabittiamo", "We edabit")

Test.assert_equal(conjugate("programmare", 5), "Voi programmate", "You code")

Test.assert_equals(conjugate("iniziare", 2), "Tu inizi", "You start")

Test.assert_equals(conjugate("mancare", 4), "Noi manchiamo", "We miss")

Test.assert_equals(conjugate("parlare", 1), "Io parlo", "I speak")

Test.assert_equals(conjugate("sognare", 3), "Egli sogna", "He dreams")

Test.assert_equals(conjugate("negare", 2), "Tu neghi", "You deny")

Test.assert_equals(conjugate("insegnare", 5), "Voi insegnate", "You teach")

Test.assert_equals(conjugate("tagliare", 4), "Noi tagliamo", "We cut")

Test.assert_equals(conjugate("nuotare", 1), "Io nuoto", "I swim")

Test.assert_equals(conjugate("cambiare", 3), "Egli cambia", "He changes")
