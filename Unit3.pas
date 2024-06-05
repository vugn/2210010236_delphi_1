unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, StdCtrls, DBGrids;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    el: TEdit;
    Button4: TButton;
    Label2: TLabel;
    tablename: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure tablenameCellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a: string;

implementation

uses
  Unit4, Unit1;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
    DataModule4.Zkategori.SQL.Clear;
    DataModule4.Zkategori.SQL.Add('insert into kategori values(null,"'+el.Text+'")');
    DataModule4.Zkategori.ExecSQL ;

    DataModule4.Zkategori.SQL.Clear;
    DataModule4.Zkategori.SQL.Add('select * from kategori');
    DataModule4.Zkategori.Open;
    ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  with DataModule4.Zkategori do
  begin
     SQL.Clear;
     SQL.Add('update kategori set name="'+el.text+'" where id = "' +a+'"');
     ExecSQL ;

     SQL.Clear;
     SQL.Add('select * from kategori');
     Open;
     end;
     ShowMessage('Data berhasil di Update');
end;

procedure TForm3.tablenameCellClick(Column: TColumn);
begin
  el.Text:= DataModule4.Zkategori.Fields[1].AsString;
  a:= DataModule4.Zkategori.Fields[0].AsString;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
     with DataModule4.Zkategori do
     begin
        SQL.Clear;
        SQL.Add('delete from kategori where id = "'+a+'"');
        ExecSQL ;

        SQL.Clear;
        SQL.Add('select * from kategori');
        Open;
     end;
     ShowMessage('Data berhasil di hapus');
end;

end.
