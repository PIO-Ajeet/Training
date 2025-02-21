**free

ctl-opt  nomain;

dcl-proc getCustomerDtl  Export;

  dcl-Pi getCustomerDtl;
    upCustId  packed(7:0);
    upFName   Char(30);
    upMName   Char(30);
    upLName   Char(30);
  end-Pi;

  dcl-s  uwFName   Char(30);
  dcl-s  uwMName   Char(30);
  dcl-s  uwLName   Char(30);

  exec sql
    select custfnam, custmnam, custlname
      into :uwFname, :uwMname, :uwLname
      from custmast
     where custid = :upcustid;

  return;

end-proc;
