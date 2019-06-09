(deffacts startup (welcome))

(defrule WelcomeMessage
	(declare (salience 1000))
	(welcome)
=>
	(printout t "--Travel Recommender System--" crlf)
	(printout t "Instructions: Reply to the questions with either of the answers specified in []. " crlf))


(deffunction ask-question (?question ?fact $?allowed-values)
   (printout t ?question crlf)
   (bind ?answer (read))
   (if (stringp ?answer) 
       then (bind ?answer (lowcase ?answer)))
   (while (not (member ?answer ?allowed-values)) do
	(printout t "Invalid input. Try again." crlf)
      (printout t ?question crlf)
      (bind ?answer (read))
      (if (stringp ?answer) 
          then (bind ?answer (lowcase ?answer))))
	(if(and(or(eq isbusiness ?fact)(eq isleisure ?fact)(eq issport ?fact))(eq yes ?answer))
		then (assert (triptype ?fact)))
	(if(or(eq friends ?answer)(eq family ?answer))
		then (assert (who ?answer)))
	(if(or(eq indoor ?answer)(eq outdoor ?answer))
		then (assert (location ?answer)))
	(if(or(eq fast ?answer)(eq slow ?answer))
		then (assert (pace ?answer)))
	(if(eq walkaround ?fact)
		then (assert (walkaround ?answer)))
	(if(eq spend ?fact)
		then (assert (spend ?answer)))
	(if(eq photos ?fact)
		then (assert (photos ?answer)))
	(if(eq culture ?fact)
		then (assert (culture ?answer)))
	(if(eq equipment ?fact)
		then (assert (equipment ?answer)))
	(if(eq team ?fact)
		then (assert (team ?answer)))
	(if(eq license ?fact)
		then (assert (license ?answer))))


(deffunction ask-question-integer (?question ?fact)
   (printout t ?question crlf)
   (bind ?answer (read))
   (if (integerp ?answer) 
       then 
		(if (eq size ?fact)
			then (assert (size ?answer)))
			(if (eq duration ?fact) 
				then (assert (duration ?answer)))
					(if (eq budget ?fact)
						then (assert (budget ?answer))))
   (while (not (integerp ?answer)) do
	(printout t "Invalid input. Try again." crlf)
      (printout t ?question crlf)
      (bind ?answer (read))
      (if (integerp ?answer) 
          then 
		(if (eq size ?fact)
			then (assert (size ?answer)))
			(if (eq duration ?fact) 
				then (assert (duration ?answer)))
					(if (eq budget ?fact)
						then (assert (budget ?answer))))))


(defrule isitbusiness 
	(declare (salience 900))
=>
(ask-question "Q: Is this a business trip? [yes/no]" isbusiness yes no))

(defrule isitleisure 
	(declare (salience 800))
	(not (triptype isbusiness))
=>
(ask-question "Q: Is this a leisure trip? [yes/no]" isleisure yes no))

(defrule isitsport 
	(declare (salience 700))
	(not (triptype isbusiness))
	(not (triptype isleisure))
=>
(ask-question "Q: Is this a sports trip? [yes/no]" issport yes no))

(defrule business
 	(triptype isbusiness)
=>
	(assert (who friends))
	(ask-question-integer "Q: How many participants will there be?[(integers)]" size)
	(ask-question-integer "Q: How long is the trip?(in days) [(integers)]" duration)
	(ask-question-integer "Q: How much is your budget?(per person in MYR) [(integers)]" budget))


(defrule leisure 
	(triptype isleisure)
=>
	(ask-question "Q: Who is invloved in the trip? [friends/family]" who friends family)
	(ask-question-integer "Q: How many participants will there be? [(integers)]" size)
	(ask-question-integer "Q: How long is the trip?(in days) [(integers)]" duration)
	(ask-question-integer "Q: How much is your budget?(per person in MYR) [(integers)]" budget)
	(ask-question "Q: Do you like to walkaround?[yes/no]" walkaround yes no)
	(ask-question "Q: Are you looking to spend money?[yes/no]" spend yes no)
	(ask-question "Q: Do you like to take photos?[yes/no]" photos yes no)
	(ask-question "Q: Are you interested with exploring cultures?[yes/no]" culture yes no))

(defrule sports 
	(triptype issport)
=>
	(ask-question "Q: Who is invloved in the trip? [friends/family]" who friends family)
	(ask-question-integer "Q: How many participants will there be? [(integers)]" size )
	(ask-question-integer "Q: How long is the trip?(in days) [(integers)]" duration )
	(ask-question-integer "Q: How much is your budget?(per person in MYR) [(integers)]" budget )
	(ask-question "Q: Do you prefer indoor sports or outdoor sports? [indoor/outdoor]" location indoor outdoor )
	(ask-question "Q: Do you prefer the sports activities to involve equipments? [yes/no]" equipment yes no )
	(ask-question "Q: Do you prefer sports with teamwork? [yes/no]" team yes no)
	(ask-question "Q: Do you prefer sports that requires professional license? [yes/no]" license yes no )
	(ask-question "Q: Do you prefer fast-paced sports or slow-paced sports? [fast/slow]" pace fast slow))

