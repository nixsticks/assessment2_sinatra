SELECT wizards.name, SUM(powers.damage) as total_damage
FROM wizards
JOIN powers
ON powers.wizard_id = wizards.id
ORDER BY total_damage;