(defrule travBudg
    (budget ?budget)
    (duration ?duration)

    =>

    (if (< ?budget 3000)
        then
        (if (< ?duration 7)
            then
            (assert(travelBudget shortCheap))
            (assert(length short))

            else
            (assert(travelBudget longCheap))
            (assert(length long))
        )

        else
        (if (< ?duration 7)
            then
            (assert(travelBudget shortExp))
            (assert(length short))

            else
            (assert(travelBudget longExp))
            (assert(length long))
        )
    )
)

(defrule smallFamily
    (who family)
    (size ?size)
    (test (< ?size 6))

    =>

    (assert(groupType smallFamily))
)

(defrule smallFriends
    (who friends)
    (size ?size)
    (test (< ?size 6))

    =>

    (assert(groupType smallFriends))
)

(defrule mediumFamily
    (who family)
    (size ?size)
    (test (> ?size 5))
    (test (< ?size 11))

    =>

    (assert(groupType mediumFamily))
)

(defrule mediumFriends
    (who friends)
    (size ?size)
    (test (> ?size 5))
    (test (< ?size 11))

    =>

    (assert(groupType mediumFriends))
)

(defrule largeFamily
    (who family)
    (size ?size)
    (test (> ?size 10))

    =>

    (assert(groupType largeFamily))
)

(defrule largeFriends
    (who friends)
    (size ?size)
    (test (> ?size 10))

    =>

    (assert(groupType largeFriends))
)

(defrule isolate
    (declare(salience 5))
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

    (bind ?suggest (+ (mod (random) 4) 1))
    (retract ?destAdd)
    (assert(suggest ?suggest))
)

(defrule outputIntroLeisure
    (declare(salience 3))
    (triptype isleisure)
    (leisureType ?leisureType)

    =>

    (printout t "We suggest that you go on a " ?leisureType " trip at any of the following locations" crlf)
)



(defrule makeSuggestionLong
    (declare(salience 2))
    (length long)
    ?destAdd <- (destination ?)

    =>

    (bind ?suggest (+ (mod (random) 2) 1))
    (retract ?destAdd)
    (assert(suggest ?suggest))
)

(defrule suggestShort
    (declare(salience 1))
    (length short)
    (suggest ?suggest)
    (place ? ?country ?location ?suggest ?)

    =>

    (printout t ?location " in " ?country crlf)
)

(defrule suggestLong
    (declare(salience 1))
    (length long)
    (suggest ?suggest)
    (place ? ?country ?location ? ?suggest)

    =>

    (printout t ?location " in " ?country crlf)
)

(defrule b1
    (walkaround yes)
    (spend yes)
    (photos yes)
    (culture yes)

    =>

    (assert(leisureType error))
)

(defrule b2
    (walkaround yes)
    (spend yes)
    (photos yes)
    (culture no)

    =>

    (assert(leisureType Food))
)

(defrule b3
    (walkaround yes)
    (spend yes)
    (photos no)

    =>

    (assert(leisureType Shopping))
)

(defrule b4
    (walkaround yes)
    (spend no)
    (photos yes)

    =>

    (assert(leisureType Sightseeing))
)

(defrule b5
    (walkaround yes)
    (spend no)
    (photos no)
    (culture yes)

    =>

    (assert(leisureType Education))
)

(defrule b6
    (walkaround yes)
    (spend no)
    (photos no)
    (culture no)

    =>

    (assert(leisureType Sightseeing))
)

(defrule b7
    (walkaround no)
    (spend yes)
    (photos yes)

    =>

    (assert(leisureType Food))
)

(defrule b8
    (walkaround no)
    (spend yes)
    (photos no)
    (culture yes)

    =>

    (assert(leisureType Education))
)

(defrule b9
    (walkaround no)
    (spend yes)
    (photos no)
    (culture no)

    =>

    (assert(leisureType Food))
)

(defrule b10
    (walkaround no)
    (spend no)
    (photos yes)

    =>

    (assert(leisureType Sightseeing))
)

(defrule b11
    (walkaround no)
    (spend no)
    (photos no)
    (culture yes)

    =>

    (assert(leisureType Education))
)

(defrule b12
    (walkaround no)
    (spend no)
    (photos no)
    (culture no)

    =>

    (assert(leisureType error))
)

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

(defrule Shopping1
    (leisureType Shopping)
    (groupType smallFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination SF1))
)

(defrule Shopping2
    (leisureType Shopping)
    (groupType smallFamily)
    (travelBudget longCheap)

    =>

    (assert(destination SF1))
)

(defrule Shopping3
    (leisureType Shopping)
    (groupType smallFamily)
    (travelBudget shortExp)

    =>

    (assert(destination SF2))
)

(defrule Shopping4
    (leisureType Shopping)
    (groupType smallFamily)
    (travelBudget longExp)

    =>

    (assert(destination SF2))
)

(defrule Shopping5
    (leisureType Shopping)
    (groupType mediumFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination SF2))
)

(defrule Shopping6
    (leisureType Shopping)
    (groupType mediumFamily)
    (travelBudget longCheap)

    =>

    (assert(destination SF2))
)

(defrule Shopping7
    (leisureType Shopping)
    (groupType mediumFamily)
    (travelBudget shortExp)

    =>

    (assert(destination SF3))
)

(defrule Shopping8
    (leisureType Shopping)
    (groupType mediumFamily)
    (travelBudget longExp)

    =>

    (assert(destination SF3))
)

(defrule Shopping9
    (leisureType Shopping)
    (groupType largeFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination SF3))
)

(defrule Shopping10
    (leisureType Shopping)
    (groupType largeFamily)
    (travelBudget longCheap)

    =>

    (assert(destination SF3))
)

(defrule Shopping11
    (leisureType Shopping)
    (groupType largeFamily)
    (travelBudget shortExp)

    =>

    (assert(destination SF4))
)

(defrule Shopping12
    (leisureType Shopping)
    (groupType largeFamily)
    (travelBudget longExp)

    =>

    (assert(destination SF4))
)

(defrule Shopping13
    (leisureType Shopping)
    (groupType smallFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination SR1))
)

(defrule Shopping14
    (leisureType Shopping)
    (groupType smallFriends)
    (travelBudget longCheap)

    =>

    (assert(destination SR1))
)

(defrule Shopping15
    (leisureType Shopping)
    (groupType smallFriends)
    (travelBudget shortExp)

    =>

    (assert(destination SR2))
)

(defrule Shopping16
    (leisureType Shopping)
    (groupType smallFriends)
    (travelBudget longExp)

    =>

    (assert(destination SR2))
)

(defrule Shopping17
    (leisureType Shopping)
    (groupType mediumFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination SR2))
)

(defrule Shopping18
    (leisureType Shopping)
    (groupType mediumFriends)
    (travelBudget longCheap)

    =>

    (assert(destination SR2))
)

(defrule Shopping19
    (leisureType Shopping)
    (groupType mediumFriends)
    (travelBudget shortExp)

    =>

    (assert(destination SR3))
)

(defrule Shopping20
    (leisureType Shopping)
    (groupType mediumFriends)
    (travelBudget longExp)

    =>

    (assert(destination SR3))
)

(defrule Shopping21
    (leisureType Shopping)
    (groupType largeFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination SR3))
)

(defrule Shopping22
    (leisureType Shopping)
    (groupType largeFriends)
    (travelBudget longCheap)

    =>

    (assert(destination SR3))
)

(defrule Shopping23
    (leisureType Shopping)
    (groupType largeFriends)
    (travelBudget shortExp)

    =>

    (assert(destination SR4))
)

(defrule Shopping24
    (leisureType Shopping)
    (groupType largeFriends)
    (travelBudget longExp)

    =>

    (assert(destination SR4))
)

(defrule Food1
    (leisureType Food)
    (groupType smallFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination FF1))
)

(defrule Food2
    (leisureType Food)
    (groupType smallFamily)
    (travelBudget longCheap)

    =>

    (assert(destination FF1))
)

(defrule Food3
    (leisureType Food)
    (groupType smallFamily)
    (travelBudget shortExp)

    =>

    (assert(destination FF2))
)

(defrule Food4
    (leisureType Food)
    (groupType smallFamily)
    (travelBudget longExp)

    =>

    (assert(destination FF2))
)

(defrule Food5
    (leisureType Food)
    (groupType mediumFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination FF2))
)

(defrule Food6
    (leisureType Food)
    (groupType mediumFamily)
    (travelBudget longCheap)

    =>

    (assert(destination FF2))
)

(defrule Food7
    (leisureType Food)
    (groupType mediumFamily)
    (travelBudget shortExp)

    =>

    (assert(destination FF3))
)

(defrule Food8
    (leisureType Food)
    (groupType mediumFamily)
    (travelBudget longExp)

    =>

    (assert(destination FF3))
)

(defrule Food9
    (leisureType Food)
    (groupType largeFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination FF3))
)

(defrule Food10
    (leisureType Food)
    (groupType largeFamily)
    (travelBudget longCheap)

    =>

    (assert(destination FF3))
)

(defrule Food11
    (leisureType Food)
    (groupType largeFamily)
    (travelBudget shortExp)

    =>

    (assert(destination FF4))
)

(defrule Food12
    (leisureType Food)
    (groupType largeFamily)
    (travelBudget longExp)

    =>

    (assert(destination FF4))
)

(defrule Food13
    (leisureType Food)
    (groupType smallFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination FR1))
)

(defrule Food14
    (leisureType Food)
    (groupType smallFriends)
    (travelBudget longCheap)

    =>

    (assert(destination FR1))
)

(defrule Food15
    (leisureType Food)
    (groupType smallFriends)
    (travelBudget shortExp)

    =>

    (assert(destination FR2))
)

(defrule Food16
    (leisureType Food)
    (groupType smallFriends)
    (travelBudget longExp)

    =>

    (assert(destination FR2))
)

(defrule Food17
    (leisureType Food)
    (groupType mediumFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination FR2))
)

(defrule Food18
    (leisureType Food)
    (groupType mediumFriends)
    (travelBudget longCheap)

    =>

    (assert(destination FR2))
)

(defrule Food19
    (leisureType Food)
    (groupType mediumFriends)
    (travelBudget shortExp)

    =>

    (assert(destination FR3))
)

(defrule Food20
    (leisureType Food)
    (groupType mediumFriends)
    (travelBudget longExp)

    =>

    (assert(destination FR3))
)

(defrule Food21
    (leisureType Food)
    (groupType largeFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination FR3))
)

(defrule Food22
    (leisureType Food)
    (groupType largeFriends)
    (travelBudget longCheap)

    =>

    (assert(destination FR3))
)

(defrule Food23
    (leisureType Food)
    (groupType largeFriends)
    (travelBudget shortExp)

    =>

    (assert(destination FR4))
)

(defrule Food24
    (leisureType Food)
    (groupType largeFriends)
    (travelBudget longExp)

    =>

    (assert(destination FR4))
)

(defrule Sightseeing1
    (leisureType Sightseeing)
    (groupType smallFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination GF1))
)

(defrule Sightseeing2
    (leisureType Sightseeing)
    (groupType smallFamily)
    (travelBudget longCheap)

    =>

    (assert(destination GF1))
)

(defrule Sightseeing3
    (leisureType Sightseeing)
    (groupType smallFamily)
    (travelBudget shortExp)

    =>

    (assert(destination GF2))
)

(defrule Sightseeing4
    (leisureType Sightseeing)
    (groupType smallFamily)
    (travelBudget longExp)

    =>

    (assert(destination GF2))
)

(defrule Sightseeing5
    (leisureType Sightseeing)
    (groupType mediumFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination GF2))
)

(defrule Sightseeing6
    (leisureType Sightseeing)
    (groupType mediumFamily)
    (travelBudget longCheap)

    =>

    (assert(destination GF2))
)

(defrule Sightseeing7
    (leisureType Sightseeing)
    (groupType mediumFamily)
    (travelBudget shortExp)

    =>

    (assert(destination GF3))
)

(defrule Sightseeing8
    (leisureType Sightseeing)
    (groupType mediumFamily)
    (travelBudget longExp)

    =>

    (assert(destination GF3))
)

(defrule Sightseeing9
    (leisureType Sightseeing)
    (groupType largeFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination GF3))
)

(defrule Sightseeing10
    (leisureType Sightseeing)
    (groupType largeFamily)
    (travelBudget longCheap)

    =>

    (assert(destination GF3))
)

(defrule Sightseeing11
    (leisureType Sightseeing)
    (groupType largeFamily)
    (travelBudget shortExp)

    =>

    (assert(destination GF4))
)

(defrule Sightseeing12
    (leisureType Sightseeing)
    (groupType largeFamily)
    (travelBudget longExp)

    =>

    (assert(destination GF4))
)

(defrule Sightseeing13
    (leisureType Sightseeing)
    (groupType smallFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination GR1))
)

(defrule Sightseeing14
    (leisureType Sightseeing)
    (groupType smallFriends)
    (travelBudget longCheap)

    =>

    (assert(destination GR1))
)

(defrule Sightseeing15
    (leisureType Sightseeing)
    (groupType smallFriends)
    (travelBudget shortExp)

    =>

    (assert(destination GR2))
)

(defrule Sightseeing16
    (leisureType Sightseeing)
    (groupType smallFriends)
    (travelBudget longExp)

    =>

    (assert(destination GR2))
)

(defrule Sightseeing17
    (leisureType Sightseeing)
    (groupType mediumFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination GR2))
)

(defrule Sightseeing18
    (leisureType Sightseeing)
    (groupType mediumFriends)
    (travelBudget longCheap)

    =>

    (assert(destination GR2))
)

(defrule Sightseeing19
    (leisureType Sightseeing)
    (groupType mediumFriends)
    (travelBudget shortExp)

    =>

    (assert(destination GR3))
)

(defrule Sightseeing20
    (leisureType Sightseeing)
    (groupType mediumFriends)
    (travelBudget longExp)

    =>

    (assert(destination GR3))
)

(defrule Sightseeing21
    (leisureType Sightseeing)
    (groupType largeFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination GR3))
)

(defrule Sightseeing22
    (leisureType Sightseeing)
    (groupType largeFriends)
    (travelBudget longCheap)

    =>

    (assert(destination GR3))
)

(defrule Sightseeing23
    (leisureType Sightseeing)
    (groupType largeFriends)
    (travelBudget shortExp)

    =>

    (assert(destination GR4))
)

(defrule Sightseeing24
    (leisureType Sightseeing)
    (groupType largeFriends)
    (travelBudget longExp)

    =>

    (assert(destination GR4))
)

(defrule Education1
    (leisureType Education)
    (groupType smallFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination EF1))
)

(defrule Education2
    (leisureType Education)
    (groupType smallFamily)
    (travelBudget longCheap)

    =>

    (assert(destination EF1))
)

(defrule Education3
    (leisureType Education)
    (groupType smallFamily)
    (travelBudget shortExp)

    =>

    (assert(destination EF2))
)

(defrule Education4
    (leisureType Education)
    (groupType smallFamily)
    (travelBudget longExp)

    =>

    (assert(destination EF2))
)

(defrule Education5
    (leisureType Education)
    (groupType mediumFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination EF2))
)

(defrule Education6
    (leisureType Education)
    (groupType mediumFamily)
    (travelBudget longCheap)

    =>

    (assert(destination EF2))
)

(defrule Education7
    (leisureType Education)
    (groupType mediumFamily)
    (travelBudget shortExp)

    =>

    (assert(destination EF3))
)

(defrule Education8
    (leisureType Education)
    (groupType mediumFamily)
    (travelBudget longExp)

    =>

    (assert(destination EF3))
)

(defrule Education9
    (leisureType Education)
    (groupType largeFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination EF3))
)

(defrule Education10
    (leisureType Education)
    (groupType largeFamily)
    (travelBudget longCheap)

    =>

    (assert(destination EF3))
)

(defrule Education11
    (leisureType Education)
    (groupType largeFamily)
    (travelBudget shortExp)

    =>

    (assert(destination EF4))
)

(defrule Education12
    (leisureType Education)
    (groupType largeFamily)
    (travelBudget longExp)

    =>

    (assert(destination EF4))
)

(defrule Education13
    (leisureType Education)
    (groupType smallFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination ER1))
)

(defrule Education14
    (leisureType Education)
    (groupType smallFriends)
    (travelBudget longCheap)

    =>

    (assert(destination ER1))
)

(defrule Education15
    (leisureType Education)
    (groupType smallFriends)
    (travelBudget shortExp)

    =>

    (assert(destination ER2))
)

(defrule Education16
    (leisureType Education)
    (groupType smallFriends)
    (travelBudget longExp)

    =>

    (assert(destination ER2))
)

(defrule Education17
    (leisureType Education)
    (groupType mediumFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination ER2))
)

(defrule Education18
    (leisureType Education)
    (groupType mediumFriends)
    (travelBudget longCheap)

    =>

    (assert(destination ER2))
)

(defrule Education19
    (leisureType Education)
    (groupType mediumFriends)
    (travelBudget shortExp)

    =>

    (assert(destination ER3))
)

(defrule Education20
    (leisureType Education)
    (groupType mediumFriends)
    (travelBudget longExp)

    =>

    (assert(destination ER3))
)

(defrule Education21
    (leisureType Education)
    (groupType largeFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination ER3))
)

(defrule Education22
    (leisureType Education)
    (groupType largeFriends)
    (travelBudget longCheap)

    =>

    (assert(destination ER3))
)

(defrule Education23
    (leisureType Education)
    (groupType largeFriends)
    (travelBudget shortExp)

    =>

    (assert(destination ER4))
)

(defrule Education24
    (leisureType Education)
    (groupType largeFriends)
    (travelBudget longExp)

    =>

    (assert(destination ER4))
)

(defrule Extreme1
    (sportsType extreme)
    (groupType smallFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination XF1))
)

(defrule Extreme2
    (sportsType extreme)
    (groupType smallFamily)
    (travelBudget longCheap)

    =>

    (assert(destination XF1))
)

(defrule Extreme3
    (sportsType extreme)
    (groupType smallFamily)
    (travelBudget shortExp)

    =>

    (assert(destination XF2))
)

(defrule Extreme4
    (sportsType extreme)
    (groupType smallFamily)
    (travelBudget longExp)

    =>

    (assert(destination XF2))
)

(defrule Extreme5
    (sportsType extreme)
    (groupType mediumFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination XF2))
)

(defrule Extreme6
    (sportsType extreme)
    (groupType mediumFamily)
    (travelBudget longCheap)

    =>

    (assert(destination XF2))
)

(defrule Extreme7
    (sportsType extreme)
    (groupType mediumFamily)
    (travelBudget shortExp)

    =>

    (assert(destination XF3))
)

(defrule Extreme8
    (sportsType extreme)
    (groupType mediumFamily)
    (travelBudget longExp)

    =>

    (assert(destination XF3))
)

(defrule Extreme9
    (sportsType extreme)
    (groupType largeFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination XF3))
)

(defrule Extreme10
    (sportsType extreme)
    (groupType largeFamily)
    (travelBudget longCheap)

    =>

    (assert(destination XF3))
)

(defrule Extreme11
    (sportsType extreme)
    (groupType largeFamily)
    (travelBudget shortExp)

    =>

    (assert(destination XF4))
)

(defrule Extreme12
    (sportsType extreme)
    (groupType largeFamily)
    (travelBudget longExp)

    =>

    (assert(destination XF4))
)

(defrule Extreme13
    (sportsType extreme)
    (groupType smallFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination XR1))
)

(defrule Extreme14
    (sportsType extreme)
    (groupType smallFriends)
    (travelBudget longCheap)

    =>

    (assert(destination XR1))
)

(defrule Extreme15
    (sportsType extreme)
    (groupType smallFriends)
    (travelBudget shortExp)

    =>

    (assert(destination XR2))
)

(defrule Extreme16
    (sportsType extreme)
    (groupType smallFriends)
    (travelBudget longExp)

    =>

    (assert(destination XR2))
)

(defrule Extreme17
    (sportsType extreme)
    (groupType mediumFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination XR2))
)

(defrule Extreme18
    (sportsType extreme)
    (groupType mediumFriends)
    (travelBudget longCheap)

    =>

    (assert(destination XR2))
)

(defrule Extreme19
    (sportsType extreme)
    (groupType mediumFriends)
    (travelBudget shortExp)

    =>

    (assert(destination XR3))
)

(defrule Extreme20
    (sportsType extreme)
    (groupType mediumFriends)
    (travelBudget longExp)

    =>

    (assert(destination XR3))
)

(defrule Extreme21
    (sportsType extreme)
    (groupType largeFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination XR3))
)

(defrule Extreme22
    (sportsType extreme)
    (groupType largeFriends)
    (travelBudget longCheap)

    =>

    (assert(destination XR3))
)

(defrule Extreme23
    (sportsType extreme)
    (groupType largeFriends)
    (travelBudget shortExp)

    =>

    (assert(destination XR4))
)

(defrule Extreme24
    (sportsType extreme)
    (groupType largeFriends)
    (travelBudget longExp)

    =>

    (assert(destination XR4))
)

(defrule NonExtreme1
    (sportsType nonExtreme)
    (groupType smallFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination NF1))
)

(defrule NonExtreme2
    (sportsType nonExtreme)
    (groupType smallFamily)
    (travelBudget longCheap)

    =>

    (assert(destination NF1))
)

(defrule NonExtreme3
    (sportsType nonExtreme)
    (groupType smallFamily)
    (travelBudget shortExp)

    =>

    (assert(destination NF2))
)

(defrule NonExtreme4
    (sportsType nonExtreme)
    (groupType smallFamily)
    (travelBudget longExp)

    =>

    (assert(destination NF2))
)

(defrule NonExtreme5
    (sportsType nonExtreme)
    (groupType mediumFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination NF2))
)

(defrule NonExtreme6
    (sportsType nonExtreme)
    (groupType mediumFamily)
    (travelBudget longCheap)

    =>

    (assert(destination NF2))
)

(defrule NonExtreme7
    (sportsType nonExtreme)
    (groupType mediumFamily)
    (travelBudget shortExp)

    =>

    (assert(destination NF3))
)

(defrule NonExtreme8
    (sportsType nonExtreme)
    (groupType mediumFamily)
    (travelBudget longExp)

    =>

    (assert(destination NF3))
)

(defrule NonExtreme9
    (sportsType nonExtreme)
    (groupType largeFamily)
    (travelBudget shortCheap)

    =>

    (assert(destination NF3))
)

(defrule NonExtreme10
    (sportsType nonExtreme)
    (groupType largeFamily)
    (travelBudget longCheap)

    =>

    (assert(destination NF3))
)

(defrule NonExtreme11
    (sportsType nonExtreme)
    (groupType largeFamily)
    (travelBudget shortExp)

    =>

    (assert(destination NF4))
)

(defrule NonExtreme12
    (sportsType nonExtreme)
    (groupType largeFamily)
    (travelBudget longExp)

    =>

    (assert(destination NF4))
)

(defrule NonExtreme13
    (sportsType nonExtreme)
    (groupType smallFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination NR1))
)

(defrule NonExtreme14
    (sportsType nonExtreme)
    (groupType smallFriends)
    (travelBudget longCheap)

    =>

    (assert(destination NR1))
)

(defrule NonExtreme15
    (sportsType nonExtreme)
    (groupType smallFriends)
    (travelBudget shortExp)

    =>

    (assert(destination NR2))
)

(defrule NonExtreme16
    (sportsType nonExtreme)
    (groupType smallFriends)
    (travelBudget longExp)

    =>

    (assert(destination NR2))
)

(defrule NonExtreme17
    (sportsType nonExtreme)
    (groupType mediumFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination NR2))
)

(defrule NonExtreme18
    (sportsType nonExtreme)
    (groupType mediumFriends)
    (travelBudget longCheap)

    =>

    (assert(destination NR2))
)

(defrule NonExtreme19
    (sportsType nonExtreme)
    (groupType mediumFriends)
    (travelBudget shortExp)

    =>

    (assert(destination NR3))
)

(defrule NonExtreme20
    (sportsType nonExtreme)
    (groupType mediumFriends)
    (travelBudget longExp)

    =>

    (assert(destination NR3))
)

(defrule NonExtreme21
    (sportsType nonExtreme)
    (groupType largeFriends)
    (travelBudget shortCheap)

    =>

    (assert(destination NR3))
)

(defrule NonExtreme22
    (sportsType nonExtreme)
    (groupType largeFriends)
    (travelBudget longCheap)

    =>

    (assert(destination NR3))
)

(defrule NonExtreme23
    (sportsType nonExtreme)
    (groupType largeFriends)
    (travelBudget shortExp)

    =>

    (assert(destination NR4))
)

(defrule NonExtreme24
    (sportsType nonExtreme)
    (groupType largeFriends)
    (travelBudget longExp)

    =>

    (assert(destination NR4))
)
