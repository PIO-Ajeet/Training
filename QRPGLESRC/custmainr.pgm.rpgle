**free
      //%METADATA                                                      *
      // %TEXT Customer maintenance program                            *
      //%EMETADATA                                                     *

dcl-f custMastl1  usage(*input) keyed;

setll *loval custMastl1;
read custMastl1;

dow not %eof(custMastl1);

  read custMastl1;
enddo;

*inlr = *on;
