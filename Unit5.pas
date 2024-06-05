unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm5 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    el: TEdit;
    Button4: TButton;
    Label2: TLabel;
    tablename: TDBGrid;
    Label3: TLabel;
    el2: TEdit;
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
  Form5: TForm5;
  a: string;

implementation

uses
  Unit4, Unit1;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  DataModule4.Zsatuan.SQL.Clear;
  DataModule4.Zsatuan.SQL.Add('insert into satuan(name, diskirpsi) values(:name, :diskirpsi)');
  DataModule4.Zsatuan.Params.ParamByName('name').Value := el.Text;
  DataModule4.Zsatuan.Params.ParamByName('diskirpsi').Value := el2.Text;
  DataModule4.Zsatuan.ExecSQL;

  DataModule4.Zsatuan.SQL.Clear;
  DataModule4.Zsatuan.SQL.Add('select * from satuan');
  DataModule4.Zsatuan.Open;
  ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm5.Button2Click(Sender: TObject);  
begin
  with DataModule4.Zsatuan do
  begin
      SQL.Clear;
      SQL.Add('update satuan set name = :name, diskirpsi = :diskirpsi where id = :id');
      Params.ParamByName('name').Value := el.Text; 
      Params.ParamByName('diskirpsi').Value := el2.Text;
      Params.ParamByName('id').Value := a;
      ExecSQL;

     SQL.Clear;
     SQL.Add('select * from satuan');
     Open;
     end;
     ShowMessage('Data berhasil di Update');
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
    with DataModule4.Zsatuan do
     begin
        SQL.Clear;
        SQL.Add('delete from satuan where id = "'+a+'"');
        ExecSQL ;

        SQL.Clear;
        SQL.Add('select * from satuan');
        Open;
     end;
     ShowMessage('Data berhasil di hapus');
end;

procedure TForm5.tablenameCellClick(Column: TColumn);
begin
    el.Text:= DataModule4.Zsatuan.Fields[1].AsString;
    el2.Text:= DataModule4.Zsatuan.Fields[2].AsString;
    a:= DataModule4.Zsatuan.Fields[0].AsString;
end;

end.
