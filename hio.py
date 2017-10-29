/math.hio/.use()
/terminal.hio/.use(inn(), out())

GuessingGame(name, date).set(
	_name.set(name)
	,
	_date.set(date)
	,
	_actual.set(rand(1, 10))
	,
	_winner.set("")
	,	
	gameNum.set(0)
	,
	play().set(
		keepGoing.set(1)
		loop(keepGoing).set(
			guess.set('pick a number'.inn().num())
			# _actual.equal(guess).iff(
			# 	'correct!'.out()
			# 	gameNum.plus(1)
			# 	_winner.set('guesser')
			# 	, 	
			# 	actual.equal(guess).nott().elsif(
			# 		'false'.out()
			# 		_winner.set('hider')
			# 		keepGoing.set(0)
			# 	)
			# )

			iff(_actual.equal(guess) actual.equal(guess).nott(),
				terminal.out('correct!')
				gameNum.plus(1)
				_winner.set('guesser')
				,
				terminal.out('incorrect!')
				_winner.set('hider')
				keepGoing.set(0)
			)

			keepGoing.equal(0).iff(
				whileKeepGoing().run()
			)
		).run()
	)		
)

evalFirstTrue(
	iff(greater(3,2),console.out('greater')),
	iff(lesser(3,2),console.out('lesser')),
	iff(1,'neither') # essentially an else statement
).run()

keepGoing.set(1)
whilee(keepGoing

 

main().set(
	game1.set(GuessingGame('the first game', 'September 22nd'))
	game1_name.out()
	game1_date.out()
	game1.play()
	game2.set(GuessingGame('the second game', 'October 1st'))
	game3.set(GuessingGame('the third game', 'October 14th'))
	games.set([game1_winner, game2_winner, game3_winner])
	games.each(i, i.out())
)

main().run()





'''
the Hio programming language
stylized as H.i(o)

.use()
.set() >>>> 1 arg for variables, 2 args for functions, class?
.run()
.in()
.out()
evalFirstTrue(if(), if(), if(), etc).run()
.plus()
.minus()
.not()
.set?(), .both?(), .either?(), .exist?() - all return 1 or 0
.getClass()

number, "string"
aVariable, anInstance_variableIsThis
[[array], [associated=array]]
aFunction(args), built-in function--> aFunctionH(args)
ThisIsAClass()
/file/
# single-line comment, ### multi-line comment ###
 
