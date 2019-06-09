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
