Logical:        Human
Id:             human-being-logical-model
Title:          "Human Being"
Description:    "A member of the Homo sapiens species."
* name 0..* SU HumanName "Name(s) of the human" "The names by which the human is or has been known"
* birthDate 0..1 SU dateTime "The date of birth, if known"
    "The date on which the person was born. Approximations may be used if exact date is unknown."
* deceased[x] 0..1 SU boolean or dateTime or Age "Indication if the human is deceased"
    "An indication if the human has died. Boolean should not be used if date or age at death are known."
* family 0..1 BackboneElement "Familie" "Members of the human's immediate family."
  * mother 0..2 FamilyMember "Mutter" "Biologische Mutter, derzeitige Adoptivmutter oder beides."
  * father 0..2 FamilyMember "Biologischer Vater, derzeitiger Adoptivvater oder beides."
  * sibling 0..* FamilyMember "Geschwister" "Andere Kinder der Mutter und/oder des Vaters des Menschen."

Logical:        FamilyMember
Id:             family-member
Title:          "Family Member"
Description:    "A reference to a family member (not necessarily biologically related)."
* human 1..1 SU Reference(Human) "Family member" "A reference to the human family member"
* biological 0..1 boolean "Biologically related?"
    "A family member may not be biologically related due to adoption, blended families, etc."