!classDefinition: #NumeroTest category: 'Numeros-Parte2-Ejercicio'!
TestCase subclass: #NumeroTest
	instanceVariableNames: 'zero one two four oneFifth oneHalf five twoFifth twoTwentyfifth fiveHalfs three eight negativeOne negativeTwo'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!NumeroTest methodsFor: 'tests' stamp: 'ip 10/3/2022 15:44:53'!
setUp

	zero := Entero with: 0.
	one := Entero with: 1.
	two := Entero with: 2.
	three:= Entero with: 3.
	four := Entero with: 4.
	five := Entero with: 5.
	eight := Entero with: 8.
	negativeOne := Entero with: -1.
	negativeTwo := Entero with: -2.
	
	oneHalf := one / two.
	oneFifth := one / five.
	twoFifth := two / five.
	twoTwentyfifth := two / (Entero with: 25).
	fiveHalfs := five / two.
	! !

!NumeroTest methodsFor: 'tests' stamp: 'LL 9/13/2020 16:17:50'!
test01isZeroReturnsTrueWhenAskToZero

	self assert: zero isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'LL 9/13/2020 16:17:58'!
test02isZeroReturnsFalseWhenAskToOthersButZero

	self deny: one isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:13'!
test03isOneReturnsTrueWhenAskToOne

	self assert: one isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 20:13'!
test04isOneReturnsFalseWhenAskToOtherThanOne

	self deny: zero isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:39:57'!
test05EnteroAddsWithEnteroCorrectly

	self assert: two equals: one + one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:40:10'!
test06EnteroMultipliesWithEnteroCorrectly

	self assert: four equals: two * two! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:40:22'!
test07EnteroDividesEnteroCorrectly

	self assert: one equals: two / two! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:40:57'!
test08FraccionAddsWithFraccionCorrectly
"
    La suma de fracciones es:
	 
	a/b + c/d = (a.d + c.b) / (b.d)
	 
	SI ESTAN PENSANDO EN LA REDUCCION DE FRACCIONES NO SE PREOCUPEN!!
	TODAVIA NO SE ESTA TESTEANDO ESE CASO
"
	| sevenTenths |

	sevenTenths := (Entero with: 7) / (Entero with: 10).

	self assert: sevenTenths equals: oneFifth + oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:41:20'!
test09FraccionMultipliesWithFraccionCorrectly
"
    La multiplicacion de fracciones es:
	 
	(a/b) * (c/d) = (a.c) / (b.d)
"

	self assert: twoTwentyfifth equals: oneFifth * twoFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:41:34'!
test10FraccionDividesFraccionCorrectly
"
    La division de fracciones es:
	 
	(a/b) / (c/d) = (a.d) / (b.c)
"

	self assert: fiveHalfs equals: oneHalf / oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:41:58'!
test11EnteroAddsFraccionCorrectly
"
	Ahora empieza la diversion!!
"

	self assert: (Entero with: 6) / (Entero with: 5) equals: one + oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:42:29'!
test12FraccionAddsEnteroCorrectly

	self assert: (Entero with: 6) / (Entero with: 5) equals: oneFifth + one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:16'!
test13EnteroMultipliesFraccionCorrectly

	self assert: twoFifth equals: two * oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:27'!
test14FraccionMultipliesEnteroCorrectly

	self assert: twoFifth equals: oneFifth * two! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:40'!
test15EnteroDividesFraccionCorrectly

	self assert: fiveHalfs equals: one / twoFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:43:58'!
test16FraccionDividesEnteroCorrectly

	self assert: twoTwentyfifth equals: twoFifth / five! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:38'!
test17AFraccionCanBeEqualToAnEntero

	self assert: two equals: four / two! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:39'!
test18AparentFraccionesAreEqual

	self assert: oneHalf equals: two / four! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:44:53'!
test19AddingFraccionesCanReturnAnEntero

	self assert: one equals: oneHalf + oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:45:13'!
test20MultiplyingFraccionesCanReturnAnEntero

	self assert: one equals: (two/five) * (five/two)! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:45:27'!
test21DividingFraccionesCanReturnAnEntero

	self assert: one equals: oneHalf / oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:45:40'!
test22DividingEnterosCanReturnAFraccion

	self assert: oneHalf equals: two / four! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:50:17'!
test23CanNotDivideEnteroByZero

	self 
		should: [ one / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: Numero canNotDivideByZeroErrorDescription equals: anError messageText ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:50:32'!
test24CanNotDivideFraccionByZero

	self 
		should: [ oneHalf / zero ]
		raise: Error
		withExceptionDo: [ :anError | self assert: Numero canNotDivideByZeroErrorDescription equals: anError messageText ]
	! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test25AFraccionCanNotBeZero

	self deny: oneHalf isZero! !

!NumeroTest methodsFor: 'tests' stamp: 'HernanWilkinson 5/7/2016 22:50'!
test26AFraccionCanNotBeOne

	self deny: oneHalf isOne! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:46:21'!
test27EnteroSubstractsEnteroCorrectly

	self assert: two equals: three - one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:46:36'!
test28FraccionSubstractsFraccionCorrectly
	
	self assert: oneFifth equals: twoFifth - oneFifth! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:46:50'!
test29EnteroSubstractsFraccionCorrectly

	self assert: oneHalf equals: one - oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:47:11'!
test30FraccionSubstractsEnteroCorrectly

	| sixFifth |
	
	sixFifth := (Entero with: 6) / (Entero with: 5).
	
	self assert: oneFifth equals: sixFifth - one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:47:25'!
test31SubstractingFraccionesCanReturnAnEntero

	| threeHalfs |
	
	threeHalfs := (Entero with: 3) / (Entero with: 2).
	
	self assert: one equals: threeHalfs - oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:47:44'!
test32SubstractingSameEnterosReturnsZero

	self assert: zero equals: one - one! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:47:59'!
test33SubstractingSameFraccionesReturnsZero

	self assert: zero equals: oneHalf - oneHalf! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:48:16'!
test34SubstractingAHigherValueToANumberReturnsANegativeNumber

	| negativeThreeHalfs |
	
	negativeThreeHalfs := (Entero with: -3) / (Entero with: 2).	

	self assert: negativeThreeHalfs equals: one - fiveHalfs! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:48:45'!
test35FibonacciZeroIsOne

	self assert: one equals: zero fibonacci! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:48:58'!
test36FibonacciOneIsOne

	self assert: one equals: one fibonacci! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:52:24'!
test37FibonacciEnteroReturnsAddingPreviousTwoFibonacciEnteros

	self assert: five equals: four fibonacci.
	self assert: three equals: three fibonacci. 
	self assert: five fibonacci equals: four fibonacci + three fibonacci! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:52:40'!
test38FibonacciNotDefinedForNegativeNumbers

	self 
		should: [negativeOne fibonacci]
		raise: Error
		withExceptionDo: [ :anError | self assert: Entero negativeFibonacciErrorDescription equals: anError messageText ]! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:52:17'!
test39NegationOfEnteroIsCorrect

	self assert: negativeTwo equals: two negated
		! !

!NumeroTest methodsFor: 'tests' stamp: 'JS 5/5/2022 03:53:27'!
test40NegationOfFraccionIsCorrect

	self assert: negativeOne / two equals: oneHalf negated ! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:11'!
test41SignIsCorrectlyAssignedToFractionWithTwoNegatives

	self assert: oneHalf equals: (negativeOne / negativeTwo)! !

!NumeroTest methodsFor: 'tests' stamp: 'NR 9/23/2018 23:50:17'!
test42SignIsCorrectlyAssignedToFractionWithNegativeDivisor

	self assert: oneHalf negated equals: (one / negativeTwo)! !


!classDefinition: #Numero category: 'Numeros-Parte2-Ejercicio'!
Object subclass: #Numero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Numero methodsFor: 'arithmetic with entero' stamp: 'ip 10/3/2022 12:15:26'!
additionWithEntero: anAdder
	self subclassResponsibility .! !

!Numero methodsFor: 'arithmetic with entero' stamp: 'ip 10/3/2022 12:15:22'!
divisionWithEntero: anAdder
	self subclassResponsibility .! !

!Numero methodsFor: 'arithmetic with entero' stamp: 'ip 10/3/2022 12:15:36'!
multiplicationWithEntero: anAdder

	self subclassResponsibility .! !


!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:48'!
* aMultiplier

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:49'!
+ anAdder

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'NR 9/23/2018 22:21:28'!
- aSubtrahend

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'HernanWilkinson 5/7/2016 22:49'!
/ aDivisor

	self subclassResponsibility ! !

!Numero methodsFor: 'arithmetic operations' stamp: 'NR 9/23/2018 23:37:13'!
negated
	
	^self * (Entero with: -1)! !


!Numero methodsFor: 'testing' stamp: 'NR 9/23/2018 23:36:49'!
isNegative

	self subclassResponsibility ! !

!Numero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:49'!
isOne

	self subclassResponsibility ! !

!Numero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:49'!
isZero

	self subclassResponsibility ! !


!Numero methodsFor: 'arithmetic with fraccion' stamp: 'ip 10/3/2022 12:15:30'!
additionWithFraccion: anAdder
	self subclassResponsibility .! !

!Numero methodsFor: 'arithmetic with fraccion' stamp: 'ip 10/3/2022 12:15:19'!
divisionWithFraccion: anAdder
	self subclassResponsibility .! !

!Numero methodsFor: 'arithmetic with fraccion' stamp: 'ip 10/3/2022 12:15:40'!
multiplicationWithFraccion: anAdder

	self subclassResponsibility .! !


!Numero methodsFor: 'private' stamp: 'HernanWilkinson 5/7/2016 22:48'!
invalidNumberType

	self error: self class invalidNumberTypeErrorDescription! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Numero class' category: 'Numeros-Parte2-Ejercicio'!
Numero class
	instanceVariableNames: ''!

!Numero class methodsFor: 'error descriptions' stamp: 'NR 5/7/2020 17:47:38'!
canNotDivideByZeroErrorDescription

	^'No se puede Dividir por Cero'! !

!Numero class methodsFor: 'error descriptions' stamp: 'NR 5/7/2020 17:46:56'!
invalidNumberTypeErrorDescription
	^ 'Tipo de N?mero Inv?lido'! !


!classDefinition: #Entero category: 'Numeros-Parte2-Ejercicio'!
Numero subclass: #Entero
	instanceVariableNames: 'value'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Entero methodsFor: 'arithmetic operations' stamp: 'ip 10/3/2022 12:13:04'!
* aMultiplier 

	 ^aMultiplier multiplicationWithEntero: self
	! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ip 10/3/2022 11:53:35'!
+ anAdder 

	^anAdder additionWithEntero: self.
	
! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ip 10/3/2022 12:28:38'!
- aSubtrahend 	
	^aSubtrahend subtractionWithEntero: self.
	
	! !

!Entero methodsFor: 'arithmetic operations' stamp: 'ip 10/3/2022 12:00:53'!
/ aDivisor 

	^aDivisor divisionWithEntero: self.! !


!Entero methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 21:01'!
= anObject

	^(anObject isKindOf: self class) and: [ value = anObject integerValue ]! !

!Entero methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:17'!
hash

	^value hash! !


!Entero methodsFor: 'initialization' stamp: 'JS 5/5/2022 03:55:37'!
initializeWith: aValue 
	
	value := aValue! !


!Entero methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:02'!
integerValue

	"Usamos integerValue en vez de value para que no haya problemas con el mensaje value implementado en Object - Hernan"
	
	^value! !


!Entero methodsFor: 'printing' stamp: 'HAW 9/24/2018 08:53:19'!
printOn: aStream

	aStream print: value ! !


!Entero methodsFor: 'testing' stamp: 'NR 9/23/2018 22:17:55'!
isNegative
	
	^value < 0! !

!Entero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 20:14'!
isOne
	
	^value = 1! !

!Entero methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 20:12'!
isZero
	
	^value = 0! !


!Entero methodsFor: 'arithmetic with fraccion' stamp: 'ip 10/3/2022 11:55:24'!
additionWithFraccion: anAdder

	^ self + anAdder.! !

!Entero methodsFor: 'arithmetic with fraccion' stamp: 'ip 10/3/2022 12:31:53'!
divisionWithFraccion: aDivisor
	^ Fraccion with: aDivisor numerator over: (aDivisor denominator * self value).
	! !

!Entero methodsFor: 'arithmetic with fraccion' stamp: 'ip 10/3/2022 12:08:56'!
multiplicationWithFraccion: aMultiplier

	^self * aMultiplier .! !

!Entero methodsFor: 'arithmetic with fraccion' stamp: 'ip 10/3/2022 12:34:43'!
subtractionWithFraccion: aSubtrahend

	^(self - aSubtrahend )negated.! !


!Entero methodsFor: 'arithmetic with entero' stamp: 'ip 10/3/2022 11:54:03'!
additionWithEntero: anAdder

	^ self class with: value + anAdder integerValue.! !

!Entero methodsFor: 'arithmetic with entero' stamp: 'ip 10/3/2022 11:55:34'!
divisionWithEntero: aDivisor

	^Fraccion with: aDivisor over: self.! !

!Entero methodsFor: 'arithmetic with entero' stamp: 'ip 10/3/2022 12:12:38'!
multiplicationWithEntero: aMultiplier

	^self class with: value * aMultiplier integerValue.! !

!Entero methodsFor: 'arithmetic with entero' stamp: 'ip 10/3/2022 12:27:52'!
subtractionWithEntero: aSubtrahend

	^ self class with: aSubtrahend integerValue - value.! !


!Entero methodsFor: 'arithmetic operations - private' stamp: 'HernanWilkinson 5/7/2016 21:55'!
// aDivisor 
	
	^self class with: value // aDivisor integerValue! !

!Entero methodsFor: 'arithmetic operations - private' stamp: 'HernanWilkinson 5/7/2016 21:00'!
greatestCommonDivisorWith: anEntero 
	
	^self class with: (value gcd: anEntero integerValue)! !


!Entero methodsFor: 'fibonacci' stamp: 'ip 10/3/2022 15:30:53'!
fibonacci

	^ self fibonacciValue.
	
	! !

!Entero methodsFor: 'fibonacci' stamp: 'ip 10/3/2022 14:39:28'!
fibonacciValue

	self subclassResponsibility.
	
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Entero class' category: 'Numeros-Parte2-Ejercicio'!
Entero class
	instanceVariableNames: ''!

!Entero class methodsFor: 'instance creation' stamp: 'NR 4/8/2019 02:57:57'!
negativeFibonacciErrorDescription
	^ ' Fibonacci no est? definido aqu? para Enteros Negativos'! !

!Entero class methodsFor: 'instance creation' stamp: 'ip 10/3/2022 15:48:15'!
with: aValue 
	
	"Esta verificacion esta puesta por si se equivocan y quieren crear un Entero pasando otra cosa que un Integer - Hernan"
	^(Entero subclasses detect: [ :aSubclass | aSubclass enteroIsOfThisSubclass: aValue ] ifNone: [  self error: 'aValue debe ser anInteger' ]) new initializeWith: aValue.! !


!Entero class methodsFor: 'private' stamp: 'ip 10/3/2022 15:34:33'!
enteroIsOfThisSubclass: aValue

	self subclassResponsibility .! !


!classDefinition: #Cero category: 'Numeros-Parte2-Ejercicio'!
Entero subclass: #Cero
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Cero methodsFor: 'fibonacci' stamp: 'ip 10/3/2022 14:39:28'!
fibonacciValue

	^Entero with: 1.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Cero class' category: 'Numeros-Parte2-Ejercicio'!
Cero class
	instanceVariableNames: ''!

!Cero class methodsFor: 'private' stamp: 'ip 10/3/2022 15:32:31'!
enteroIsOfThisSubclass: anEntero

	^anEntero = 0.! !


!classDefinition: #Negativos category: 'Numeros-Parte2-Ejercicio'!
Entero subclass: #Negativos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Negativos methodsFor: 'fibonacci' stamp: 'ip 10/3/2022 14:39:28'!
fibonacciValue

	^self error: Entero negativeFibonacciErrorDescription.
	
	! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Negativos class' category: 'Numeros-Parte2-Ejercicio'!
Negativos class
	instanceVariableNames: ''!

!Negativos class methodsFor: 'private' stamp: 'ip 10/3/2022 15:32:36'!
enteroIsOfThisSubclass: anEntero

	^anEntero < 0.! !


!classDefinition: #Positivos category: 'Numeros-Parte2-Ejercicio'!
Entero subclass: #Positivos
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Positivos methodsFor: 'fibonacci' stamp: 'ip 10/3/2022 15:31:10'!
fibonacciValue
	| one two |
	one := Entero with: 1.
	two := Entero with: 2.
	^(self - one) fibonacci + (self - two) fibonacci.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Positivos class' category: 'Numeros-Parte2-Ejercicio'!
Positivos class
	instanceVariableNames: ''!

!Positivos class methodsFor: 'private' stamp: 'ip 10/3/2022 15:32:44'!
enteroIsOfThisSubclass: anEntero

	^anEntero value > 1.! !


!classDefinition: #Uno category: 'Numeros-Parte2-Ejercicio'!
Entero subclass: #Uno
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Uno methodsFor: 'fibonacci' stamp: 'ip 10/3/2022 15:18:10'!
fibonacciValue

	^Entero with: 1.! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Uno class' category: 'Numeros-Parte2-Ejercicio'!
Uno class
	instanceVariableNames: ''!

!Uno class methodsFor: 'private' stamp: 'ip 10/3/2022 15:32:40'!
enteroIsOfThisSubclass: anEntero

	^anEntero = 1.! !


!classDefinition: #Fraccion category: 'Numeros-Parte2-Ejercicio'!
Numero subclass: #Fraccion
	instanceVariableNames: 'numerator denominator'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'Numeros-Parte2-Ejercicio'!

!Fraccion methodsFor: 'arithmetic operations' stamp: 'ip 10/3/2022 12:10:04'!
* aMultiplier
	
	^aMultiplier multiplicationWithFraccion: self. ! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'ip 10/3/2022 12:21:43'!
+ anAdder 

	^anAdder additionWithFraccion: self.! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'ip 10/3/2022 12:21:29'!
- aSubtrahend 

	^aSubtrahend subtractionWithFraccion: self.
	
! !

!Fraccion methodsFor: 'arithmetic operations' stamp: 'ip 10/3/2022 12:06:00'!
/ aDivisor 
	
	^aDivisor divisionWithFraccion: self.
! !


!Fraccion methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:42'!
= anObject

	^(anObject isKindOf: self class) and: [ (numerator * anObject denominator) = (denominator * anObject numerator) ]! !

!Fraccion methodsFor: 'comparing' stamp: 'HernanWilkinson 5/7/2016 20:50'!
hash

	^(numerator hash / denominator hash) hash! !


!Fraccion methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:56'!
denominator

	^ denominator! !

!Fraccion methodsFor: 'accessing' stamp: 'HernanWilkinson 5/7/2016 21:56'!
numerator

	^ numerator! !


!Fraccion methodsFor: 'initialization' stamp: 'HernanWilkinson 5/7/2016 22:54'!
initializeWith: aNumerator over: aDenominator

	"Estas precondiciones estan por si se comenten errores en la implementacion - Hernan"
	aNumerator isZero ifTrue: [ self error: 'una fraccion no puede ser cero' ].
	aDenominator isOne ifTrue: [ self error: 'una fraccion no puede tener denominador 1 porque sino es un entero' ].
	
	numerator := aNumerator.
	denominator := aDenominator ! !


!Fraccion methodsFor: 'testing' stamp: 'NR 9/23/2018 23:41:38'!
isNegative
	
	^numerator < 0! !

!Fraccion methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:51'!
isOne
	
	^false! !

!Fraccion methodsFor: 'testing' stamp: 'HernanWilkinson 5/7/2016 22:51'!
isZero
	
	^false! !


!Fraccion methodsFor: 'printing' stamp: 'HAW 9/24/2018 08:54:46'!
printOn: aStream

	aStream 
		print: numerator;
		nextPut: $/;
		print: denominator ! !


!Fraccion methodsFor: 'arithmetic with entero' stamp: 'ip 10/3/2022 12:35:39'!
additionWithEntero: anAdder

	 |newNumerator|

	newNumerator := self numerator + (anAdder value * (self denominator)).

	^  Fraccion with: newNumerator over: self denominator.
	! !

!Fraccion methodsFor: 'arithmetic with entero' stamp: 'ip 10/3/2022 11:58:53'!
divisionWithEntero: aDivisor

	|newNumerator|
	
	newNumerator := aDivisor value * self denominator .
	^Fraccion with: newNumerator over: self numerator .
	! !

!Fraccion methodsFor: 'arithmetic with entero' stamp: 'ip 10/3/2022 12:13:42'!
multiplicationWithEntero: aMultiplier

	| newNumerator |
	newNumerator := numerator * aMultiplier value.
	^Fraccion with: newNumerator over: denominator.! !

!Fraccion methodsFor: 'arithmetic with entero' stamp: 'ip 10/3/2022 12:35:24'!
subtractionWithEntero: aSubtrahend
	
	^aSubtrahend + (Fraccion with: numerator negated over: denominator)! !


!Fraccion methodsFor: 'arithmetic with fraccion' stamp: 'ip 10/3/2022 12:36:10'!
additionWithFraccion: anAdder

	| newDenominator newNumerator |
	
	newNumerator := (numerator * anAdder denominator) + (denominator * anAdder numerator).
	newDenominator := denominator * anAdder denominator.
	
	^newNumerator / newDenominator ! !

!Fraccion methodsFor: 'arithmetic with fraccion' stamp: 'ip 10/3/2022 12:05:29'!
divisionWithFraccion: aDivisor

	^(denominator * aDivisor numerator ) / (numerator * aDivisor denominator ).
	! !

!Fraccion methodsFor: 'arithmetic with fraccion' stamp: 'ip 10/3/2022 12:09:29'!
multiplicationWithFraccion: aMultiplier

	^(numerator * aMultiplier numerator) / (denominator * aMultiplier denominator).! !

!Fraccion methodsFor: 'arithmetic with fraccion' stamp: 'ip 10/3/2022 12:20:38'!
subtractionWithFraccion: aSubtrahend

	| newNumerator newDenominator |
	newNumerator := (aSubtrahend numerator * denominator) - (aSubtrahend denominator * numerator).
	newDenominator := denominator * aSubtrahend denominator.
	
	^newNumerator / newDenominator ! !

"-- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- "!

!classDefinition: 'Fraccion class' category: 'Numeros-Parte2-Ejercicio'!
Fraccion class
	instanceVariableNames: ''!

!Fraccion class methodsFor: 'intance creation' stamp: 'ip 9/29/2022 18:14:31'!
with: aDividend over: aDivisor

	| greatestCommonDivisor numerator denominator |
	
	aDivisor isZero ifTrue: [ self error: self canNotDivideByZeroErrorDescription ].
	aDividend isZero ifTrue: [ ^aDividend ].
	
	aDivisor isNegative ifTrue:[ ^aDividend negated / aDivisor negated].
	
	greatestCommonDivisor := aDividend greatestCommonDivisorWith: aDivisor. 
	numerator := aDividend // greatestCommonDivisor.
	denominator := aDivisor // greatestCommonDivisor.
	
	denominator isOne ifTrue: [ ^numerator ].

	^self new initializeWith: numerator over: denominator
	! !
