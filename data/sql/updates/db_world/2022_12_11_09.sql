-- DB update 2022_12_11_08 -> 2022_12_11_09
--
UPDATE `creature_template` SET `AIName` = 'SmartAI', `ScriptName` = '' WHERE (`entry` = 20061);
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|1|64|1024 WHERE `entry` = 18044;

DELETE FROM `creature` WHERE `id1`=20061;
DELETE FROM `creature_template_movement` WHERE `CreatureId`=20061;
INSERT INTO `creature_template_movement` (`CreatureId`, `Ground`, `Swim`, `Flight`, `Rooted`) VALUES
(20061, 1, 1, 0, 1);
UPDATE `creature_template` SET `AIName`='SmartAI' WHERE `entry` IN (20061); 
DELETE FROM `smart_scripts` WHERE `entryorguid`=20061 AND `source_type`=0;
DELETE FROM `smart_scripts` WHERE `entryorguid`=2006100 AND `source_type`=9;
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(20061,0,0,0,54,0,100,0,0,0,0,0,0,80,2006100,2,0,0,0,0,1,0,0,0,0,0,0,0,0,"Frostbite Invisible Stalker - Just summoned - Action list"),
(2006100,9,0,0,0,0,100,0,0,0,0,0,0,11,34872,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Frostbite Invisible Stalker - Action list - cast spell"),
(2006100,9,1,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,3.15,"Frostbite Invisible Stalker - Action list - Set Orientation"),
(2006100,9,2,0,0,0,100,0,1000,1000,0,0,0,11,34740,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Frostbite Invisible Stalker - Action list - cast spell"),
(2006100,9,3,0,0,0,100,0,0,0,0,0,0,11,34746,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Frostbite Invisible Stalker - Action list - cast spell"),
(2006100,9,4,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,2.3624,"Frostbite Invisible Stalker - Action list - Set Orientation"),
(2006100,9,5,0,0,0,100,0,1000,1000,0,0,0,11,34740,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Frostbite Invisible Stalker - Action list - cast spell"),
(2006100,9,6,0,0,0,100,0,0,0,0,0,0,11,34746,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Frostbite Invisible Stalker - Action list - cast spell"),
(2006100,9,7,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,1.575,"Frostbite Invisible Stalker - Action list - Set Orientation"),
(2006100,9,8,0,0,0,100,0,1000,1000,0,0,0,11,34740,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Frostbite Invisible Stalker - Action list - cast spell"),
(2006100,9,9,0,0,0,100,0,0,0,0,0,0,11,34746,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Frostbite Invisible Stalker - Action list - cast spell"),
(2006100,9,10,0,0,0,100,0,0,0,0,0,0,66,0,0,0,0,0,0,8,0,0,0,0,0,0,0,0.7875,"Frostbite Invisible Stalker - Action list - Set Orientation"),
(2006100,9,11,0,0,0,100,0,1000,1000,0,0,0,11,34740,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Frostbite Invisible Stalker - Action list - cast spell"),
(2006100,9,12,0,0,0,100,0,0,0,0,0,0,11,34746,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Frostbite Invisible Stalker - Action list - cast spell"),
(2006100,9,13,0,0,0,100,0,1000,1000,0,0,0,11,34779,0,0,0,0,0,1,0,0,0,0,0,0,0,0,"Frostbite Invisible Stalker - Just Action list - cast spell");

DELETE FROM `spell_script_names` WHERE `ScriptName` ='spell_freezing_circle';
INSERT INTO `spell_script_names` (`spell_id`, `ScriptName`) VALUES 
(34779,'spell_freezing_circle');

DELETE FROM `smart_scripts` WHERE (`entryorguid` = 18088) AND (`source_type` = 0) AND (`id` IN (0, 1, 2));
INSERT INTO `smart_scripts` (`entryorguid`, `source_type`, `id`, `link`, `event_type`, `event_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `event_param5`, `action_type`, `action_param1`, `action_param2`, `action_param3`, `action_param4`, `action_param5`, `action_param6`, `target_type`, `target_param1`, `target_param2`, `target_param3`, `target_param4`, `target_x`, `target_y`, `target_z`, `target_o`, `comment`) VALUES
(18088, 0, 0, 0, 0, 0, 100, 0, 0, 0, 2400, 3800, 0, 11, 34447, 64, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodscale Enchantress - In Combat - Cast \'Arcane Missiles\''),
(18088, 0, 1, 2, 0, 0, 100, 0, 6000, 8000, 16000, 22000, 0, 11, 33245, 35, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodscale Enchantress - In Combat - Cast \'Ice Barrier\''),
(18088, 0, 2, 0, 61, 0, 100, 0, 0, 0, 0, 0, 0, 11, 34787, 1, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'Bloodscale Enchantress - In Combat - Cast \'Freezing Circle\'');
