SELECT wizards.id, wizards.name, wizards.age, powers.name, powers.damage
FROM wizards
JOIN powers
ON powers.wizard_id = wizards.id
WHERE powers.name LIKE "%l%";