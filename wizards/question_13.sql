SELECT wizards.id, wizards.name, wizards.age, SUM(powers.damage) as total_damage
FROM wizards
JOIN powers
ON powers.wizard_id = wizards.id
HAVING total_damage > 10;