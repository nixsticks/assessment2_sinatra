SELECT wizards.id, wizards.name, powers.name, powers.damage
FROM wizards
JOIN wizards_powers
ON wizards_powers.wizard_id = wizards.id
JOIN powers
ON wizards_powers.power_id = powers.id
WHERE wizards.id = 1
AND powers.damage > 5
GROUP BY powers.id;