**free

dcl-f orderItml1  usage(*input) keyed;

dcl-pr getCustomerDtl;
  *n       packed(7:0);
  *n       char(20);
  *n       char(20);
  *n       char(20);
end-pr;

dcl-s  upCustId    packed(7:0);
dcl-s  upFName     char(20);
dcl-s  upMName     char(20);
dcl-s  upLName     char(20);

setll *loval  orderItml1;
read orderItml1;

dow not %eof(orderItml1);

  getCustomerDtl(upCustId : upFName : upMName : upLName);

  read orderItml1;
enddo;

*inlr = *on;
