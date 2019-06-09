(defrule Business1
    (triptype isbusiness)
    (groupType smallFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination B1))
)

(defrule Business2
    (triptype isbusiness)
    (groupType smallFriends)
    (travelBudget longCheap)

    =>

    (assert(destination B1))
)

(defrule Business3
    (triptype isbusiness)
    (groupType smallFriends)
    (travelBudget shortExp)

    =>

    (assert(destination B2))
)

(defrule Business4
    (triptype isbusiness)
    (groupType smallFriends)
    (travelBudget longExp)

    =>

    (assert(destination B2))
)

(defrule Business5
    (triptype isbusiness)
    (groupType mediumFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination B2))
)

(defrule Business6
    (triptype isbusiness)
    (groupType mediumFriends)
    (travelBudget longCheap)

    =>

    (assert(destination B2))
)

(defrule Business7
    (triptype isbusiness)
    (groupType mediumFriends)
    (travelBudget shortExp)

    =>

    (assert(destination B3))
)

(defrule Business8
    (triptype isbusiness)
    (groupType mediumFriends)
    (travelBudget longExp)

    =>

    (assert(destination B3))
)

(defrule Business9
    (triptype isbusiness)
    (groupType largeFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination B3))
)

(defrule Business10
    (triptype isbusiness)
    (groupType largeFriends)
    (travelBudget longCheap)

    =>

    (assert(destination B3))
)

(defrule Business11
    (triptype isbusiness)
    (groupType largeFriends)
    (travelBudget shortExp)

    =>

    (assert(destination B4))
)

(defrule Business12
    (triptype isbusiness)
    (groupType largeFriends)
    (travelBudget longExp)

    =>

    (assert(destination B4))
)
