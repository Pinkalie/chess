Class {
	#name : 'MyChessGameTest',
	#superclass : 'TestCase',
	#category : 'Myg-Chess-Tests',
	#package : 'Myg-Chess-Tests'
}

{ #category : 'tests' }
MyChessGameTest >> testNextPlayer [

    | game |

    game := MyChessGame freshGame.

    self assert: game currentPlayer isWhite.

    game nextPlayer.
    self deny: game currentPlayer isWhite.

    game nextPlayer.
    self assert: game currentPlayer isWhite
]
