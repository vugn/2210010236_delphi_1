unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    el1: TEdit;
    Button4: TButton;
    tablename: TDBGrid;
    Label3: TLabel;
    el3: TEdit;
    Label4: TLabel;
    el4: TEdit;
    Label5: TLabel;
    el5: TEdit;
    Label6: TLabel;
    el6: TEdit;
    Label7: TLabel;
    el7: TEdit;
    Label8: TLabel;
    el8: TEdit;
    Label9: TLabel;
    el2: TEdit;
    Label10: TLabel;
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
  Form6: TForm6;
  a : string;

implementation

uses
  Unit4, Unit1;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
    DataModule4.Zbarang.SQL.Clear;
    DataModule4.Zbarang.SQL.Add('insert into barang(barcode, name, harga_jual, harga_beli, stok, kategori_id, satuan_id, user_id, supplier_id) values(:barcode, :name, :harga_jual, :harga_beli, :stok, :kategori_id, :satuan_id, :user_id, :supplier_id)');
    DataModule4.Zbarang.Params.ParamByName('barcode').Value := el1.Text;
    DataModule4.Zbarang.Params.ParamByName('name').Value := el2.Text;
    DataModule4.Zbarang.Params.ParamByName('harga_jual').Value := el3.Text;
    DataModule4.Zbarang.Params.ParamByName('harga_beli').Value := el4.Text;
    DataModule4.Zbarang.Params.ParamByName('stok').Value := el5.Text;
    DataModule4.Zbarang.Params.ParamByName('kategori_id').Value := el6.Text;
    DataModule4.Zbarang.Params.ParamByName('satuan_id').Value := el7.Text;
    DataModule4.Zbarang.Params.ParamByName('user_id').Value := el8.Text;
    DataModule4.Zbarang.Params.ParamByName('supplier_id').Value := el9.Text;
    DataModule4.Zbarang.ExecSQL;

    DataModule4.Zbarang.SQL.Clear;
    DataModule4.Zbarang.SQL.Add('select * from barang');
    DataModule4.Zbarang.Open;
    ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
with DataModule4.Zbarang do
  begin
     SQL.Clear;
     SQL.Add('update barang set name="'+el2.text+'" where id = "' +a+'"');
     ExecSQL ;

     SQL.Clear;
     SQL.Add('select * from barang');
     Open;
     end;
     ShowMessage('Data berhasil di Update');
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
    with DataModule4.Zbarang do
     begin
        SQL.Clear;
        SQL.Add('delete from barang where id = "'+a+'"');
        ExecSQL ;

        SQL.Clear;
        SQL.Add('select * from barang');
        Open;
     end;
     ShowMessage('Data berhasil di hapus');
end;

procedure TForm6.tablenameCellClick(Column: TColumn);
begin

     el1.Text:= DataModule4.Zbarang.Fields[1].AsString;
     el2.Text:= DataModule4.Zbarang.Fields[2].AsString;
     el3.Text:= DataModule4.Zbarang.Fields[3].AsString;
     el4.Text:= DataModule4.Zbarang.Fields[4].AsString;
     el5.Text:= DataModule4.Zbarang.Fields[5].AsString;
     el6.Text:= DataModule4.Zbarang.Fields[6].AsString;
     el7.Text:= DataModule4.Zbarang.Fields[7].AsString;
     el8.Text:= DataModule4.Zbarang.Fields[8].AsString;
     el9.Text:= DataModule4.Zbarang.Fields[9].AsString;
     a:= DataModule4.Zbarang.Fields[0].AsString;
end;

end.
