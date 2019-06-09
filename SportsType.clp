;location
;equipment
;team
;license
;pace

(defrule a1
    (location indoor)
    (equipment yes)
    (team yes)
    (license yes)

    =>

    (assert(sportsType extreme))
)

(defrule a2
    (location indoor)
    (equipment yes)
    (team yes)
    (license no)
    (pace fast)

    =>

    (assert(sportsType extreme))
)

(defrule a3
    (location indoor)
    (equipment yes)
    (team yes)
    (license no)
    (pace slow)

    =>

    (assert(sportsType nonExtreme))
)

(defrule a4
    (location indoor)
    (equipment yes)
    (team no)
    (license yes)
    (pace fast)

    =>

    (assert(sportsType extreme))
)

(defrule a5
    (location indoor)
    (equipment yes)
    (team no)
    (license yes)
    (pace slow)

    =>

    (assert(sportsType nonExtreme))
)

(defrule a6
    (location indoor)
    (equipment yes)
    (team no)
    (license no)

    =>

    (assert(sportsType nonExtreme))
)

(defrule a7
    (location indoor)
    (equipment no)
    (team yes)
    (license yes)

    =>

    (assert(sportsType extreme))
)

(defrule a8
    (location indoor)
    (equipment no)
    (team yes)
    (license no)

    =>

    (assert(sportsType nonExtreme))
)

(defrule a9
    (location indoor)
    (equipment no)
    (team no)

    =>

    (assert(sportsType nonExtreme))
)

(defrule a10
    (location outdoor)
    (equipment yes)
    (team yes)

    =>

    (assert(sportsType extreme))
)

(defrule a11
    (location outdoor)
    (equipment yes)
    (team no)
    (license yes)

    =>

    (assert(sportsType extreme))
)

(defrule a12
    (location outdoor)
    (team no)
    (license no)

    =>

    (assert(sportsType nonExtreme))
)

(defrule a13
    (location outdoor)
    (equipment no)
    (license yes)

    =>

    (assert(sportsType extreme))
)

(defrule a14
    (location outdoor)
    (equipment no)
    (team yes)
    (license no)

    =>

    (assert(sportsType nonExtreme))
)
