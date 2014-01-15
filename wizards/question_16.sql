SELECT wizards.name
FROM wizards
WHERE wizards.id NOT IN (SELECT wizard_id FROM powers);