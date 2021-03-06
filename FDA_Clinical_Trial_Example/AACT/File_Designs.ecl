IMPORT AACT;
fName := AACT.FileName_Prefix + 'designs_txt';
Designs := RECORD
  STRING DESIGN_ID;
  STRING NCT_ID;
  STRING DESIGN_NAME;
  STRING DESIGN_VALUE;
  STRING MASKED_ROLE;
END;
ds := DATASET(fName, Designs, CSV(HEADING(1),SEPARATOR('|'),TERMINATOR('\r\n')));

EXPORT File_Designs := ds;