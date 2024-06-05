unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm7 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    el1: TEdit;
    Button4: TButton;
    tablename: TDBGrid;
    el3: TEdit;
    el4: TEdit;
    el5: TEdit;
    el6: TEdit;
    el7: TEdit;
    el8: TEdit;
    el2: TEdit;
    el9: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure tablenameCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;
                  a: string;
implementation

uses
  Unit4, Unit1;


{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
    DataModule4.Zuser.SQL.Clear;
    DataModule4.Zuser.SQL.Add('insert into user(nik, username, full_name, password, role, email, alamat, telp, is_active) values(:nik, :username, :full_name, :password, :role, :email, :alamat, :telp, :is_active)');
    DataModule4.Zuser.Params.ParamByName('nik').Value := el1.Text;
    DataModule4.Zuser.Params.ParamByName('username').Value := el2.Text;
    DataModule4.Zuser.Params.ParamByName('full_name').Value := el3.Text;
    DataModule4.Zuser.Params.ParamByName('password').Value := el4.Text;
    DataModule4.Zuser.Params.ParamByName('role').Value := el5.Text;
    DataModule4.Zuser.Params.ParamByName('email').Value := el6.Text;
    DataModule4.Zuser.Params.ParamByName('alamat').Value := el7.Text;
    DataModule4.Zuser.Params.ParamByName('telp').Value := el8.Text;
    DataModule4.Zuser.Params.ParamByName('is_active').Value := el9.Text;
    DataModule4.Zuser.ExecSQL;


    DataModule4.Zuser.SQL.Clear;
    DataModule4.Zuser.SQL.Add('select * from user');
    DataModule4.Zuser.Open;
    ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
    with DataModule4.Zuser do
  begin
    SQL.Clear;
    DataModule4.Zuser.SQL.Add('update user set nik=:nik, username = :username, full_name = :full_name, password = :password, role = :role, email = :email, alamat = :alamat, telp = :telp, is_active = :is_active where id = :id');
    DataModule4.Zuser.Params.ParamByName('nik').Value := el1.Text;
    DataModule4.Zuser.Params.ParamByName('username').Value := el2.Text;
    DataModule4.Zuser.Params.ParamByName('full_name').Value := el3.Text;
    DataModule4.Zuser.Params.ParamByName('password').Value := el4.Text;
    DataModule4.Zuser.Params.ParamByName('role').Value := el5.Text;
    DataModule4.Zuser.Params.ParamByName('email').Value := el6.Text;
    DataModule4.Zuser.Params.ParamByName('alamat').Value := el7.Text;
    DataModule4.Zuser.Params.ParamByName('telp').Value := el8.Text;
    DataModule4.Zuser.Params.ParamByName('is_active').Value := el9.Text;
    Params.ParamByName('id').Value := a;
    DataModule4.Zuser.ExecSQL;

     SQL.Clear;
     SQL.Add('select * from user');
     Open;
     end;
     ShowMessage('Data berhasil di Update');

end;

procedure TForm7.Button3Click(Sender: TObject);
begin
  with DataModule4.Zuser do
     begin
        SQL.Clear;
        SQL.Add('delete from user where id = "'+a+'"');
        ExecSQL ;

        SQL.Clear;
        SQL.Add('select * from user');
        Open;
     end;
     ShowMessage('Data berhasil di hapus');
end;

procedure TForm7.tablenameCellClick(Column: TColumn);
begin
      el1.Text:= DataModule4.Zuser.Fields[1].AsString;
     el2.Text:= DataModule4.Zuser.Fields[2].AsString;
     el3.Text:= DataModule4.Zuser.Fields[3].AsString;
     el4.Text:= DataModule4.Zuser.Fields[4].AsString;
     el5.Text:= DataModule4.Zuser.Fields[5].AsString;
     el6.Text:= DataModule4.Zuser.Fields[6].AsString;
     el7.Text:= DataModule4.Zuser.Fields[7].AsString;
     el8.Text:= DataModule4.Zuser.Fields[8].AsString;
     el9.Text:= DataModule4.Zuser.Fields[9].AsString;
     a:= DataModule4.Zuser.Fields[0].AsString;
end;

end.
