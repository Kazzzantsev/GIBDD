unit GIBDD;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql56conn, sqldb, db, Forms, Controls, Graphics, Dialogs,
  DBGrids, StdCtrls, DBCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    MySQL56Connection1: TMySQL56Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button6Click(Sender: TObject);

  var str_sql2 : string;
begin
try
SQLQuery1.Active := false;
SQLQuery1.SQL.Clear;
str_sql2 := 'SET character_set_client='+#39+'utf8'+#39+',character_set_connection='+#39+'cp1251'+#39+',character_set_results='+#39+'utf8'+#39+';';
SQLQuery1.sql.add(str_sql2);
SQLQuery1.ExecSQL;
SQLQuery1.SQL.Clear;
SQLQuery1.sql.add('SELECT * FROM auto;');
SQLQuery1.Open;
except
ShowMessage('SQL-запрос: ОШИБКА!');
exit;
end;
DBGrid1.Columns[0].Width:=30;
DBGrid1.Columns[1].Width:=80;
DBGrid1.Columns[2].Width:=80;
DBGrid1.Columns[3].Width:=80;
DBGrid1.Columns[4].Width:=200;
DBGrid1.Columns[5].Width:=80;
end;

procedure TForm1.Button7Click(Sender: TObject);

  var str_sql3 : string;
begin
try
SQLQuery1.Active := false;
SQLQuery1.SQL.Clear;
str_sql3 := 'SET character_set_client='+#39+'utf8'+#39+',character_set_connection='+#39+'cp1251'+#39+',character_set_results='+#39+'utf8'+#39+';';
SQLQuery1.sql.add(str_sql3);
SQLQuery1.ExecSQL;
SQLQuery1.SQL.Clear;
SQLQuery1.sql.add('SELECT * FROM drivers;');
SQLQuery1.Open;
except
ShowMessage('SQL-запрос: ОШИБКА!');
exit;
end;
DBGrid1.Columns[0].Width:=30;
DBGrid1.Columns[1].Width:=200;
DBGrid1.Columns[2].Width:=100;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  try
MySQL56Connection1.Connected:=true;
except
ShowMessage('Подключение к БД: ОШИБКА!');
exit;
end;

end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  try
SQLTransaction1.Active:=true;
except
ShowMessage('Транзакция: ОШИБКА!');
exit;
end;

end;

procedure TForm1.Button3Click(Sender: TObject);
 var str_sql : string;
begin
try
SQLQuery1.Active := false;
SQLQuery1.SQL.Clear;
str_sql := 'SET character_set_client='+#39+'utf8'+#39+',character_set_connection='+#39+'cp1251'+#39+',character_set_results='+#39+'utf8'+#39+';';
SQLQuery1.sql.add(str_sql);
SQLQuery1.ExecSQL;
SQLQuery1.SQL.Clear;
SQLQuery1.sql.add('SELECT * FROM auto;');
SQLQuery1.Open;
except
ShowMessage('SQL-запрос: ОШИБКА!');
exit;
end;
DBGrid1.Columns[0].Width:=30;
DBGrid1.Columns[1].Width:=80;
DBGrid1.Columns[2].Width:=80;
DBGrid1.Columns[3].Width:=80;
DBGrid1.Columns[4].Width:=200;
DBGrid1.Columns[5].Width:=80;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  SQLQuery1.Active:=false;
SQLTransaction1.Commit;
MySQL56Connection1.Connected:=false;
end;

end.

