unit Unit1;

interface

type

    {定义一个接口}
    IUsb = interface
        {CTRL+SHIFT+G}
        ['{F705C838-1D53-4CE3-BEA7-4B14DE1314FE}']
        procedure Read();
    end;

    IUsb2 = interface

    end;



    {定义一个类}
    TComputer = class(TInterfacedObject)

    public
        procedure Run();virtual;abstract;
    end;

    TLaptop = class(TComputer, IUsb2,IUsb)
        procedure Read();
    end;

implementation





{ TLaptop }

procedure TLaptop.Read;
begin

end;

end.

