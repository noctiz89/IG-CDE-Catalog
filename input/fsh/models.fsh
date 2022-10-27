Logical:        Human
Id:             human-being-logical-model
Title:          "Menschliches Wesen"
Description:    "Ein Mitglied der Spezies Homo sapiens."
* name 0..* SU HumanName "Name(n) des Menschen“ „Die Namen, unter denen der Mensch bekannt ist oder war."
* birthDate 0..1 SU dateTime "Geburtsdatum, falls bekannt"
    "Das Datum, an dem die Person geboren wurde. Näherungswerte können verwendet werden, wenn das genaue Datum unbekannt ist."
* deceased[x] 0..1 SU boolean or dateTime or Age "Angabe, ob der Mensch verstorben ist."
    "Ein Hinweis, ob der Mensch gestorben ist. Der boolesche Wert sollte nicht verwendet werden, wenn Datum oder Alter des Todes bekannt sind."
* family 0..1 BackboneElement "Familie" "Mitglieder der unmittelbaren Familie des Menschen."
  * mother 0..2 FamilyMember "Mutter" "Biologische Mutter, derzeitige Adoptivmutter oder beides."
  * father 0..2 FamilyMember "Biologischer Vater, derzeitiger Adoptivvater oder beides."
  * sibling 0..* FamilyMember "Geschwister" "Andere Kinder der Mutter und/oder des Vaters des Menschen."

Logical:        FamilyMember
Id:             family-member
Title:          "Familienmitglied"
Description:    "Ein Verweis auf ein Familienmitglied (nicht unbedingt biologisch verwandt)."
* human 1..1 SU Reference(Human) "Familienmitglied" "Ein Verweis auf das menschliche Familienmitglied"
* biological 0..1 boolean "Biologisch verwandt?"
    "Ein Familienmitglied darf aufgrund von Adoption, Patchworkfamilien usw. nicht biologisch verwandt sein."