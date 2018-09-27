program Project2;

{$APPTYPE CONSOLE}

{$R *.res}

uses
    System.SysUtils;
 {

  为什么使用：为了防止出现越界

  注意事项
    1)子界要求上界和下界必须是有序的数据类型  整数、字符、枚举
    2)子界的上界大于或者等于下界
 }
 {定义格式}

type
  
    {子界:12个月}

    TSubBoundMonths = 1..12;
{
  打印输出闰年还是平年,每个月份的天数和所属季节
  //年份能被4整除； 2、年份若是100的整数倍的话，需被400整除
}

var
    Months: TSubBoundMonths;
    UserYear: Integer;
    UserMonth: Integer;
    {如果是闰年为true，平年为false}
    IsLeapYear: Boolean;

begin
    Writeln('请输入一个年份：');
    Readln(UserYear);
    Writeln('请输入一个月份：');
    Readln(UserMonth);
    
    //  默认为平年
    IsLeapYear := False;
    if UserYear mod 4 = 0 then begin
        if (UserYear mod 100 = 0) then begin
            if UserYear mod 400 = 0 then begin

                IsLeapYear := True;
            end

        end
        else begin
            IsLeapYear := True;

        end;

    end;

    if IsLeapYear then begin
        Write(UserYear, '年是闰年！');
    end
    else begin
        Write(UserYear, '年是平年！');
    end;
  
    
   

    //搞季节

    if (UserMonth >= Low(Months)) and (UserMonth <= High(Months)) then begin

        if (UserMonth >= 1) and (UserMonth <= 3) then begin
            Write('当前是春季，', UserMonth, '月的天数是：');
            case UserMonth of

                1:
                    begin
                        Write(31, '天');
                    end;

                2:
                    begin
                        if IsLeapYear then begin
                            Write(29, '天');
                        end
                        else begin
                            Write(28, '天');
                        end;

                    end;
                3:
                    begin
                        Write(31, '天');
                    end;

            end;
        end
        else begin
            if (UserMonth >= 4) and (UserMonth <= 6) then begin
                Write('当前是夏季，', UserMonth, '月的天数是：');
                case UserMonth of
                    4:
                        begin
                            Write(30, '天');
                        end;
                    5:
                        begin
                            Write(31, '天');
                        end;
                    6:
                        begin
                            Write(30, '天');
                        end;

                end;
            end
            else if (UserMonth >= 7) and (UserMonth <= 9) then begin
                Write('当前是秋季，', UserMonth, '月的天数是：');
                case UserMonth of
                    7:
                        begin
                            Write(31, '天');
                        end;
                    8:
                        begin
                            Write(31, '天');
                        end;
                    9:
                        begin
                            Write(30, '天');
                        end;

                end;
            end
            else if (UserMonth >= 10) and (UserMonth <= 12) then begin
                Write('当前是冬季，', UserMonth, '月的天数是：');
                case UserMonth of
                    10:
                        begin
                            Write(31, '天');
                        end;
                    11:
                        begin
                            Write(30, '天');
                        end;
                    12:
                        begin
                            Write(31, '天');
                        end;

                end;
            end;

        end

    end
    else begin
        Writeln('对不起您输入的月份错误！');
    end;
    ;

    Readln;

end.

