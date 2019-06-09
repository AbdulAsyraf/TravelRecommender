(defrule isolate
    (declare(salience 3))
    (destination ?destination)
    ;?counterAdd <- (counter ?counter)
    ?f <- (place ?label ? ? ? ?)
    ;(not(test(= (str-compare ?label "stop") 0)))

    =>

    (if (not(= (str-compare ?destination ?label) 0))
        then
        (retract ?f)
    )
)

(defrule makeSuggestionShort
    (declare(salience 2))
    (length short)
    ?destAdd <- (destination ?)

    =>

    (bind ?suggest (+ (mod (random) 2) 1))
    (retract ?destAdd)
    (assert(suggest ?suggest))
)

(defrule makeSuggestionLong
    (declare(salience 2))
    (length long)
    ?destAdd <- (destination ?)

    =>

    (bind ?suggest (+ (mod (random) 4) 1))
    (retract ?destAdd)
    (assert(suggest ?suggest))
)

(defrule suggestShort
    (declare(salience 1))
    (length short)
    (suggest ?suggest)
    (place ? ?country ?location ?suggest ?)

    =>

    (printout t ?country "    " ?location crlf)
)

(defrule suggestLong
    (declare(salience 1))
    (length long)
    (suggest ?suggest)
    (place ? ?country ?location ? ?suggest)

    =>

    (printout t ?country "    " ?location crlf)
)