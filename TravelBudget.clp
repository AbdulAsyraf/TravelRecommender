(defrule shortCheap
    (duration ?time)
    (budget ?budget)
    (not(test(> ?time 1)))
    (test (<= ?budget 3000))

    =>

    (assert(travelBudget shortCheap))
)

(defrule shortExp
    (duration ?time)
    (budget ?budget)
    (not(test(> ?time 1)))
    (test (> ?budget 3000))

    =>

    (assert(travelBudget shortExp))
)

(defrule longCheap
    (duration ?time)
    (budget ?budget)
    (test(> ?time 1))
    (test (<= ?budget 3000))

    =>

    (assert(travelBudget longCheap))
)

(defrule longExp
    (duration ?time)
    (budget ?budget)
    (test(> ?time 1))
    (test (> ?budget 3000))

    =>

    (assert(travelBudget longExp))
)
