
-- CRY-STALL-MY-TEA PROCEDURES --

DELIMITER $$

DROP PROCEDURE IF EXISTS `crystallmyteaSelect`$$
CREATE PROCEDURE `crystallmyteaSelect`()
BEGIN
  SELECT `quote_UUID` AS `quote_uuid`
        ,`quote_Quotation` AS `quotation`
        ,`quote_Author` AS `author`
        ,`quote_Circa` AS `circa`
        ,`quote_Dated` AS `dated`
  FROM `crystallmytea_quote`
  ORDER BY RAND()
  LIMIT 0,1;
END$$

DELIMITER ;



-- CRY-STALL-MY-TEA ENDPOINT --

INSERT IGNORE INTO `swef_config_router` (`router_Context_LIKE`, `router_Endpoint_Preg_Match`, `router_Usergroup_Preg_Match`) VALUES
('www-%',   '<^cry-stall-my-tea$>', '<^(public|anon)$>');



-- CRY-STALL-MY-TEA TEMPLATE

INSERT IGNORE INTO `swef_config_template` (`template_Priority`, `template_Context_LIKE`, `template_Endpoint_Preg_Match`, `template_Needs_Script`, `template_Content_Type`, `template_Template_Backreferenced`) VALUES
(0, 'www-%',    '<^cry-stall-my-tea$>',   1,  'text/html; charset=utf-8', 'html/cry-stall-my-tea.html');



-- CRY-STALL-MY-TEA DATA --

-- Adminer 4.6.2 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

CREATE TABLE IF NOT EXISTS `crystallmytea_quote` (
  `quote_UUID` varchar(64) CHARACTER SET ascii NOT NULL,
  `quote_Author` varchar(64) NOT NULL,
  `quote_Quotation` text NOT NULL,
  `quote_Dated` varchar(64) CHARACTER SET ascii NOT NULL,
  PRIMARY KEY (`quote_UUID`),
  KEY `quote_Author` (`quote_Author`),
  KEY `quote_Dated` (`quote_Dated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT IGNORE INTO `crystallmytea_quote` (`quote_UUID`, `quote_Author`, `quote_Quotation`, `quote_Dated`) VALUES
('83ca77bd-505d-11e8-8603-001f16148bc1',    'David Hume',   'No testimony is sufficient to establish a miracle, unless the testimony be of such a kind, that its falsehood would be more miraculous than the fact which it endeavors to establish.',    '1739'),
('83d4e951-505d-11e8-8603-001f16148bc1',    'Yes, Prime Minister, Antony Jay and Jonathan Lynn',    'Bernard: Well I\'m afraid he\'s at an even greater disadvantage in understanding economics: he\'s an economist.',  '1988'),
('83e09e51-505d-11e8-8603-001f16148bc1',    'Frans de Waal',    'Economists are being indoctrinated into a cardboard version of human nature, which they hold true to such a degree that their own behavior has begun to resemble it. Psychological tests have shown that economics majors are more egoistic than the average college student. Exposure in class after class to the capitalist self-interest model apparently kills off whatever prosocial tendencies these students have to begin with. They give up trusting others, and conversely others give up trusting them.',   '2005'),
('83e76df4-505d-11e8-8603-001f16148bc1',    'Joan Robinson',    'The purpose of studying economics is not to acquire a set of ready-made answers to economic questions, but to learn how to avoid being deceived by economists.',   '1955'),
('83ee40d9-505d-11e8-8603-001f16148bc1',    'Ronald Coase', 'If economists wished to study the horse, they wouldn\'t go and look at horses. They\'d sit in their studies and say to themselves, \"What would I do if I were a horse?\"',    ''),
('83f8750d-505d-11e8-8603-001f16148bc1',    'Kenneth Boulding', 'Anyone who believes exponential growth can go on forever in a finite world is either a madman or an economist.',   ''),
('83ff458c-505d-11e8-8603-001f16148bc1',    'Kenneth Boulding', 'Private property is a means, and neither its abolition nor its unrestricted right should be an end in itself.',    ''),
('84062457-505d-11e8-8603-001f16148bc1',    'Kenneth Boulding', 'I have been gradually coming under the conviction, disturbing for a professional theorist, that there is no such thing as economics - there is only social science applied to economic problems.', ''),
('840cea39-505d-11e8-8603-001f16148bc1',    'Kenneth Boulding', 'The controversy as to whether socialism is possible has been settled by the fact that it exists, and it is a fundamental axiom of my philosophy, at any rate, that anything that exists, is possible.',    ''),
('8413c144-505d-11e8-8603-001f16148bc1',    'Kenneth Boulding', 'Theories without facts may be barren, but facts without theories are meaningless.',    ''),
('841a8ad4-505d-11e8-8603-001f16148bc1',    'Kenneth Boulding', 'Economic problems have no sharp edges. They shade off imperceptibly into politics, sociology, and ethics. Indeed, it is hardly an exaggeration to say that the ultimate answer to every economic problem lies in some other field.',   ''),
('84215fb0-505d-11e8-8603-001f16148bc1',    'Jacob Viner',  'Economics is what economists do.', ''),
('84282c74-505d-11e8-8603-001f16148bc1',    'Aneurin Bevan',    'Sir Anthony Eden has been pretending that he is now invading Egypt in order to strengthen the United Nations. Every burglar of course could say the same thing, he could argue that he was entering the house in order to train the police.',  ''),
('842f0d92-505d-11e8-8603-001f16148bc1',    'Aneurin Bevan',    'I know that the right kind of leader for the Labour Party is a kind of desiccated calculating-machine who must not in any way permit himself to be swayed by indignation. If he sees suffering, privation or injustice, he must not allow it to move him, for that would be evidence of the lack of proper education or of absence of self-control. He must speak in calm and objective accents and talk about a dying child in the same way as he would about the pieces inside an internal combustion engine.',  ''),
('8435d748-505d-11e8-8603-001f16148bc1',    'Aneurin Bevan',    'We know what happens to people who stay in the middle of the road. They get run down.',    ''),
('843ca71c-505d-11e8-8603-001f16148bc1',    'Aneurin Bevan',    'Soon, if we are not prudent, millions of people will be watching each other starve to death through expensive television sets.',   ''),
('8446dc1f-505d-11e8-8603-001f16148bc1',    'Aneurin Bevan',    'The spectacle therefore afforded us by the United States is one of technical brilliance and social blindness.',    ''),
('844da850-505d-11e8-8603-001f16148bc1',    'Aneurin Bevan',    'Freedom is the by-product of economic surplus.',   ''),
('84549376-505d-11e8-8603-001f16148bc1',    'Aneurin Bevan on Winston Churchill',   'He refers to a defeat as if it came from God, but a victory as if it came from himself.',  ''),
('845b6853-505d-11e8-8603-001f16148bc1',    'Aneurin Bevan',    'That is why no amount of cajolery, and no attempts at ethical or social seduction, can eradicate from my heart a deep burning hatred for the Tory Party that inflicted those bitter experiences on me. So far as I am concerned they are lower than vermin. They condemned millions of first-class people to semi-starvation. Now the Tories are pouring out money in propaganda of all sorts and are hoping by this organised sustained mass suggestion to eradicate from our minds all memory of what we went through. But, I warn you young men and women, do not listen to what they are saying now. Do not listen to the seductions of Lord Woolton. He is a very good salesman. If you are selling shoddy stuff you have to be a good salesman. But I warn you they have not changed, or if they have they are slightly worse than they were.',  ''),
('8463e844-505d-11e8-8603-001f16148bc1',    'Aneurin Bevan',    'What we need, apparently, is not statesmen but hypnotists, not scientists, but witchdoctors, not confidence born of scientific prediction of the future, but confidence created by a political Confidence Trick. There is nothing surprising in this. It is the kind of mystic Mumbo-Jumbo to which capitalism is driven when austere reason pronounces sentence of death upon it.',   ''),
('846c66e7-505d-11e8-8603-001f16148bc1',    'Aneurin Bevan',    'Not even the apparently enlightened principle of the \'greatest good for the greatest number\' can excuse indifference to individual suffering. There is no test for progress other than its impact on the individual.',   ''),
('84750b12-505d-11e8-8603-001f16148bc1',    'Karl Marx',    'In fact of course, this \'productive\' worker cares as much about the crappy shit he has to make as does the capitalist himself who employs him, and who also couldn\'t give a damn for the junk.',    ''),
('847d6906-505d-11e8-8603-001f16148bc1',    'Vladimir Lenin',   'The oppressed are allowed once every few years to decide which particular representatives of the oppressing class shall represent and repress them in parliament.',    ''),
('8485eb1d-505d-11e8-8603-001f16148bc1',    'Douglas Adams',    'We don\'t have to save the world. The world is big enough to look after itself. What we have to be concerned about is whether or not the world we live in will be capable of sustaining us in it.',    ''),
('848cbd75-505d-11e8-8603-001f16148bc1',    'Douglas Adams',    'The whole fabric of the space-time continuum is not merely curved, it is in fact totally bent.',   ''),
('84938cb0-505d-11e8-8603-001f16148bc1',    'Oscar Wilde',  'People who count their chickens before they are hatched act very wisely because chickens run about so absurdly that it\'s impossible to count them accurately.',   ''),
('849a5f98-505d-11e8-8603-001f16148bc1',    'William Wilberforce',  'If to be feelingly alive to the sufferings of my fellow-creatures is to be a fanatic, I am one of the most incurable fanatics ever permitted to be at large.', ''),
('84a131ad-505d-11e8-8603-001f16148bc1',    'Martin Luther King Jr.',   'We never get anywhere in this world without the forces of history and individual persons in the background helping us to get there. If you have the privilege of a fine education, well, you have it because somebody made it possible. If you have the privilege to gain wealth and a bit of the world\'s goods, well, you have it because somebody made it possible. So don\'t boast, don\'t be arrogant. You, at that moment, rise out of your self-centeredness to the type of living that makes you an integrated personality.',  ''),
('84a80374-505d-11e8-8603-001f16148bc1',    'Martin Luther King Jr.',   'An individual has not started living fully until they can rise above the narrow confines of individualistic concerns to the broader concerns of humanity. Life\'s most persistent and urgent question is: \'What are you doing for others?\'', ''),
('84b259bd-505d-11e8-8603-001f16148bc1',    'Martin Luther King Jr.',   'The real problem is that through our scientific genius we\'ve made of the world a neighborhood, but through our moral and spiritual genius we\'ve failed to make of it a brotherhood.',    ''),
('84b91bc4-505d-11e8-8603-001f16148bc1',    'John Bunyan',  'Who would true valour see, let him come hit',  ''),
('84bfea26-505d-11e8-8603-001f16148bc1',    'Karl Marx',    'Die Religion ist das Opium des Volkes.',   ''),
('84c6bb83-505d-11e8-8603-001f16148bc1',    'Daevid Allen', 'Alpha, beta, gamma, hubba-dubba!', ''),
('84cd8ef5-505d-11e8-8603-001f16148bc1',    'Daevid Allen', 'Have a cup of tea, have another one, have a cup of tea.',  ''),
('84d4609d-505d-11e8-8603-001f16148bc1',    'Lewis Carroll',    '\'But I don\'t want to go among mad people,\' said Alice. \'Oh, you can\'t help that,\' said the cat. \'We\'re all mad here.\'',   ''),
('84db3184-505d-11e8-8603-001f16148bc1',    'Lewis Carroll',    '\'How do you know I\'m mad?\' said Alice. \'You must be,\' said the Cat, \'or you wouldn\'t have come here.\'',    ''),
('84e20085-505d-11e8-8603-001f16148bc1',    'Lewis Carroll',    'One of the secrets of life is that all that is really worth the doing is what we do for others.',  ''),
('84e8d49f-505d-11e8-8603-001f16148bc1',    'Lewis Carroll',    'She generally gave herself very good advice, (though she very seldom followed it).',   ''),
('84efa9c0-505d-11e8-8603-001f16148bc1',    'Lewis Carroll',    'If you want to inspire confidence, give plenty of statistics - it does not matter that they should be accurate, or even intelligible, so long as there is enough of them.',    ''),
('84f676ab-505d-11e8-8603-001f16148bc1',    'Lewis Carroll',    'Imagination is the only weapon in the war against reality.',   ''),
('84f676ab-505d-11e8-8603-001f16148bc1',    'Helen Keller',    'Until the great mass of the people shall be filled with the sense of responsibility for each other\'s welfare, social justice can never be attained.',   '1912');
