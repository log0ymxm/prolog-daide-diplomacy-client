% Making dip_ccv dynamic allows for retraction for custom games.
:- dynamic dip_ccv/3.

% dip_ccv/3
% Defines a particular Uppercase-Three-Letter-Acronym-code (TLA)'s category and value
% encodings in accordance with The Diplomacy Centralisation Project Client-Server Protocol document.
% This predicate greatly aids the parsing of the Diplomacy message
% (dip_msg_dip) contents.
% Notice that UTLA's are used for networking mostly. When transferring into a Prolog reasoning
% realm, its corresponding Lowercase-Three-Letter-Acroynm (LTLA) should be used. 
%
% Refer to Section 4 LANGUAGE REPRESENTATION.  
% ?code
% ?category
% ?value
%

% Every language token will be represented by a 2-octet field.
% The tokens are split into categories. Each category will have a
% 1-octet value associated with it.  The tokens within each category
% will be numbered.  The token value can be calculated by multiplying
% the category by 256 and adding the token number within the category.
% 00xxxxxx xxxxxxxx ( 64) - Integers
% 0100xxxx xxxxxxxx ( 16) – Various individual categories
% 01010xxx xxxxxxxx (  8) - Provinces
% 01011xxx xxxxxxxx (  8) – Reserved for individual AI/Server use.  Never transmitted.
% 011xxxxx xxxxxxxx ( 32) - Unassigned
% 1xxxxxxx xxxxxxxx (128) - Unassigned


% Bracketing 
dip_ccv('(',0x40,0x00).
dip_ccv(')',0x40,0x01).

% Great powers (0x41)

dip_ccv('AUS',0x41,0x00).
dip_ccv('ENG',0x41,0x01).
dip_ccv('FRA',0x41,0x02).
dip_ccv('GER',0x41,0x03).
dip_ccv('ITA',0x41,0x04).
dip_ccv('RUS',0x41,0x05).
dip_ccv('TUR',0x41,0x06).
 
% 4.6         Unit Types (0x42)
 
dip_ccv('AMY',0x42,0x00).
dip_ccv('FLT',0x42,0x01).

% 4.7         Orders (0x43)

dip_ccv('CTO',0x43,0x20).
dip_ccv('CVY',0x43,0x21).
dip_ccv('HLD',0x43,0x22).
dip_ccv('MTO',0x43,0x23).
dip_ccv('SUP',0x43,0x24).
dip_ccv('VIA',0x43,0x25).
dip_ccv('DSB',0x43,0x40).
dip_ccv('RTO',0x43,0x41).
dip_ccv('BLD',0x43,0x80).
dip_ccv('REM',0x43,0x81).
dip_ccv('WVE',0x43,0x82).

% Note that the high three bits can be used to determine
% which phase the order is valid in. The top bit is valid
% the adjustments phase, the next is valid in the retreats phase
% and the last is valid in the movement phase.

% 4.8         Order Notes (0x44)

dip_ccv('MBV',0x44,0x00).
dip_ccv('BPR',0x44,0x01).
dip_ccv('CST',0x44,0x02).
dip_ccv('ESC',0x44,0x03).
dip_ccv('FAR',0x44,0x04).
dip_ccv('HSC',0x44,0x05).
dip_ccv('NAS',0x44,0x06).
dip_ccv('NMB',0x44,0x07).
dip_ccv('NMR',0x44,0x08).
dip_ccv('NRN',0x44,0x09).
dip_ccv('NRS',0x44,0x0A).
dip_ccv('NSA',0x44,0x0B).
dip_ccv('NSC',0x44,0x0C).
dip_ccv('NSF',0x44,0x0D).
dip_ccv('NSP',0x44,0x0E).
dip_ccv('NST',0x44,0x0F).
dip_ccv('NSU',0x44,0x10).
dip_ccv('NVR',0x44,0x11).
dip_ccv('NYU',0x44,0x12).
dip_ccv('YSC',0x44,0x13).

% 4.9         Results (0x45)

dip_ccv('SUC',0x45,0x00).
dip_ccv('BNC',0x45,0x01).
dip_ccv('CUT',0x45,0x02).
dip_ccv('DSR',0x45,0x03).
dip_ccv('FLD',0x45,0x04).
dip_ccv('NSO',0x45,0x05).
dip_ccv('RET',0x45,0x06).

% 4.10     Coasts (0x46)

dip_ccv('NCS',0x46,0x00).
dip_ccv('NEC',0x46,0x02).
dip_ccv('ECS',0x46,0x04).
dip_ccv('SEC',0x46,0x06).
dip_ccv('SCS',0x46,0x08).
dip_ccv('SWC',0x46,0x0A).
dip_ccv('WCS',0x46,0x0C).
dip_ccv('NWC',0x46,0x0E).

% 4.11     Phases (0x47)

dip_ccv('SPR',0x47,0x00).
dip_ccv('SUM',0x47,0x01).
dip_ccv('FAL',0x47,0x02).
dip_ccv('AUT',0x47,0x03).
dip_ccv('WIN',0x47,0x04).

% 4.12     Commands (0x48)

dip_ccv('CCD',0x48,0x00).
dip_ccv('DRW',0x48,0x01).
dip_ccv('FRM',0x48,0x02).
dip_ccv('GOF',0x48,0x03).
dip_ccv('HLO',0x48,0x04).
dip_ccv('HST',0x48,0x05).
dip_ccv('HUH',0x48,0x06).
dip_ccv('IAM',0x48,0x07).
dip_ccv('LOD',0x48,0x08).
dip_ccv('MAP',0x48,0x09).
dip_ccv('MDF',0x48,0x0A).
dip_ccv('MIS',0x48,0x0B).
dip_ccv('NME',0x48,0x0C).
dip_ccv('NOT',0x48,0x0D).
dip_ccv('NOW',0x48,0x0E).
dip_ccv('OBS',0x48,0x0F).
dip_ccv('OFF',0x48,0x10).
dip_ccv('ORD',0x48,0x11).
dip_ccv('OUT',0x48,0x12).
dip_ccv('PRN',0x48,0x13).
dip_ccv('REJ',0x48,0x14).
dip_ccv('SCO',0x48,0x15).
dip_ccv('SLO',0x48,0x16).
dip_ccv('SND',0x48,0x17).
dip_ccv('SUB',0x48,0x18).
dip_ccv('SVE',0x48,0x19).
dip_ccv('THX',0x48,0x1A).
dip_ccv('TME',0x48,0x1B).
dip_ccv('YES',0x48,0x1C).
dip_ccv('ADM',0x48,0x1D).

% 4.13     Parameters (0x49)

dip_ccv('AOA',0x49,0x00).
dip_ccv('BTL',0x49,0x01).
dip_ccv('ERR',0x49,0x02).
dip_ccv('LVL',0x49,0x03).
dip_ccv('MRT',0x49,0x04).
dip_ccv('MTL',0x49,0x05).
dip_ccv('NPB',0x49,0x06).
dip_ccv('NPR',0x49,0x07).
dip_ccv('PDA',0x49,0x08).
dip_ccv('PTL',0x49,0x09).
dip_ccv('RTL',0x49,0x0A).
dip_ccv('UNO',0x49,0x0B).
dip_ccv('DSD',0x49,0x0D).

% 4.14     Press (0x4A)

dip_ccv('ALY',0x4A,0x00).
dip_ccv('AND',0x4A,0x01).
dip_ccv('BWX',0x4A,0x02).
dip_ccv('DMZ',0x4A,0x03).
dip_ccv('ELS',0x4A,0x04).
dip_ccv('EXP',0x4A,0x05).
dip_ccv('FWD',0x4A,0x06).
dip_ccv('FCT',0x4A,0x07).
dip_ccv('FOR',0x4A,0x08).
dip_ccv('HOW',0x4A,0x09).
dip_ccv('IDK',0x4A,0x0A).
dip_ccv('IFF',0x4A,0x0B).
dip_ccv('INS',0x4A,0x0C).
dip_ccv('IOU',0x4A,0x0D).
dip_ccv('OCC',0x4A,0x0E).
dip_ccv('ORR',0x4A,0x0F).
dip_ccv('PCE',0x4A,0x10).
dip_ccv('POB',0x4A,0x11).
dip_ccv('PPT',0x4A,0x12).
dip_ccv('PRP',0x4A,0x13).
dip_ccv('QRY',0x4A,0x14).
dip_ccv('SCD',0x4A,0x15).
dip_ccv('SRY',0x4A,0x16).
dip_ccv('SUG',0x4A,0x17).
dip_ccv('THK',0x4A,0x18).
dip_ccv('THN',0x4A,0x19).
dip_ccv('TRY',0x4A,0x1A).
dip_ccv('UOM',0x4A,0x1B).
dip_ccv('VSS',0x4A,0x1C).
dip_ccv('WHT',0x4A,0x1D).
dip_ccv('WHY',0x4A,0x1E).
dip_ccv('XDO',0x4A,0x1F).
dip_ccv('XOY',0x4A,0x20).
dip_ccv('YDO',0x4A,0x21).
dip_ccv('WRT',0x4A,0x22).

% 4.15     Text (0x4B)
% The value is the ASCII code for a single letter.
% Strings are not delimited with quotation marks or anything else. 
% There are no situations in the language where one string runs
% directly into another.  Therefore, the end of a string can be 
% identified when the first non-text token is received.

% 4.16     Provinces (0x50 – 0x57)
% There are eight province categories as defined here.
% Inland non-SC category = 0x50

dip_ccv('BOH',0x50,0x00).
dip_ccv('BUR',0x50,0x01).
dip_ccv('GAL',0x50,0x02).
dip_ccv('RUH',0x50,0x03).
dip_ccv('SIL',0x50,0x04).
dip_ccv('TYR',0x50,0x05).
dip_ccv('UKR',0x50,0x06).

% Inland SC category = 0x51
dip_ccv('BUD',0x51,0x07).
dip_ccv('MOS',0x51,0x08).
dip_ccv('MUN',0x51,0x09).
dip_ccv('PAR',0x51,0x0A).
dip_ccv('SER',0x51,0x0B).
dip_ccv('VIE',0x51,0x0C).
dip_ccv('WAR',0x51,0x0D).

% Sea non-SC category = 0x52
dip_ccv('ADR',0x52,0x0E).
dip_ccv('AEG',0x52,0x0F).
dip_ccv('BAL',0x52,0x10).
dip_ccv('BAR',0x52,0x11).
dip_ccv('BLA',0x52,0x12).
dip_ccv('EAS',0x52,0x13).
dip_ccv('ECH',0x52,0x14).
dip_ccv('GOB',0x52,0x15).
dip_ccv('GOL',0x52,0x16).
dip_ccv('HEL',0x52,0x17).
dip_ccv('ION',0x52,0x18).
dip_ccv('IRI',0x52,0x19).
dip_ccv('MAO',0x52,0x1A).
dip_ccv('NAO',0x52,0x1B).
dip_ccv('NTH',0x52,0x1C).
dip_ccv('NWG',0x52,0x1D).
dip_ccv('SKA',0x52,0x1E).
dip_ccv('TYS',0x52,0x1F).
dip_ccv('WES',0x52,0x20).

% Sea SC category = 0x53
% On the standard map there are no sea SCs.

% Coastal non-SC category = 0x54
dip_ccv('ALB',0x54,0x21).
dip_ccv('APU',0x54,0x22).
dip_ccv('ARM',0x54,0x23).
dip_ccv('CLY',0x54,0x24).
dip_ccv('FIN',0x54,0x25).
dip_ccv('GAS',0x54,0x26).
dip_ccv('LVN',0x54,0x27).
dip_ccv('NAF',0x54,0x28).
dip_ccv('PIC',0x54,0x29).
dip_ccv('PIE',0x54,0x2A).
dip_ccv('PRU',0x54,0x2B).
dip_ccv('SYR',0x54,0x2C).
dip_ccv('TUS',0x54,0x2D).
dip_ccv('WAL',0x54,0x2E).
dip_ccv('YOR',0x54,0x2F).

% Coastal SC category = 0x55
dip_ccv('ANK',0x55,0x30).
dip_ccv('BEL',0x55,0x31).
dip_ccv('BER',0x55,0x32).
dip_ccv('BRE',0x55,0x33).
dip_ccv('CON',0x55,0x34).
dip_ccv('DEN',0x55,0x35).
dip_ccv('EDI',0x55,0x36).
dip_ccv('GRE',0x55,0x37).
dip_ccv('HOL',0x55,0x38).
dip_ccv('KIE',0x55,0x39).
dip_ccv('LON',0x55,0x3A).
dip_ccv('LVP',0x55,0x3B).
dip_ccv('MAR',0x55,0x3C).
dip_ccv('NAP',0x55,0x3D).
dip_ccv('NWY',0x55,0x3E).
dip_ccv('POR',0x55,0x3F).
dip_ccv('ROM',0x55,0x40).
dip_ccv('RUM',0x55,0x41).
dip_ccv('SEV',0x55,0x42).
dip_ccv('SMY',0x55,0x43).
dip_ccv('SWE',0x55,0x44).
dip_ccv('TRI',0x55,0x45).
dip_ccv('TUN',0x55,0x46).
dip_ccv('VEN',0x55,0x47).

% Bicoastal non-SC category = 0x56
% On the standard map there are no non-SC bicoastal provinces.

% Bicoastal SC category = 0x57
dip_ccv('BUL',0x57,0x48).
dip_ccv('SPA',0x57,0x49).
dip_ccv('STP',0x57,0x4A).

% dip_code_err/2
% A direct mapping of error codes onto their respective string meanings.
% ?Code
% ?Meaning
%
dip_code_err(0x01,'IM timer popped').
dip_code_err(0x02,'IM was not the first message sent by the client').
dip_code_err(0x03,'IM indicated the wrong endian').
dip_code_err(0x04,'IM had an incorrect magic number').
dip_code_err(0x05,'Version incompatibility').
dip_code_err(0x06,'More than 1 IM sent').
dip_code_err(0x07,'IM sent by server').
dip_code_err(0x08,'Unknown message recieved').
dip_code_err(0x09,'Message shorter then expected').
dip_code_err(0x0A,'DM sent before RM').
dip_code_err(0x0B,'RM was not the first server sent by the server').
dip_code_err(0x0C,'More then 1 RM sent').
dip_code_err(0x0D,'RM sent by client').
dip_code_err(0x0E,'Invalid token in DM').