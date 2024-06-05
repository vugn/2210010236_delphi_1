unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm8 = class(TForm)
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
  Form8: TForm8;
  a :string;

implementation

uses
  Unit4, Unit1;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
    DataModule4.Zsupplier.SQL.Clear;
    DataModule4.Zsupplier.SQL.Add('insert into supplier(nik, name,telp,email,alamat, perusahaan, nama_bank, nama_akun_bank, no_akun_bank) values(:nik, :name,:telp, :email, :alamat, :perusahaan, :nama_bank, :nama_akun_bank, :no_akun_bank)');
    DataModule4.Zsupplier.Params.ParamByName('nik').Value := el1.Text;
    DataModule4.Zsupplier.Params.ParamByName('name').Value := el2.Text;
    DataModule4.Zsupplier.Params.ParamByName('telp').Value := el3.Text;
    DataModule4.Zsupplier.Params.ParamByName('email').Value := el4.Text;
    DataModule4.Zsupplier.Params.ParamByName('alamat').Value := el5.Text;
    DataModule4.Zsupplier.Params.ParamByName('perusahaan').Value := el6.Text;
    DataModule4.Zsupplier.Params.ParamByName('nama_bank').Value := el7.Text;
    DataModule4.Zsupplier.Params.ParamByName('nama_akun_bank').Value := el8.Text;
    DataModule4.Zsupplier.Params.ParamByName('no_akun_bank').Value := el9.Text;
    DataModule4.Zsupplier.ExecSQL;


    DataModule4.Zsupplier.SQL.Clear;
    DataModule4.Zsupplier.SQL.Add('select * from supplier');
    DataModule4.Zsupplier.Open;
    ShowMessage('Data Berhasil Disimpan!');
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  with DataModule4.Zsupplier do
  begin
      SQL.Clear;
      DataModule4.Zsupplier.SQL.Add('update supplier set nik=:nik, name = :name, email = :email, telp = :telp, alamat = :alamat, perusahaan = :perusahaan, nama_bank = :nama_bank, nama_akun_bank = :nama_akun_bank, no_akun_bank = :no_akun_bank where id = :id');
      DataModule4.Zsupplier.Params.ParamByName('nik').Value := el1.Text;
      DataModule4.Zsupplier.Params.ParamByName('name').Value := el2.Text;
      DataModule4.Zsupplier.Params.ParamByName('telp').Value := el3.Text;
      DataModule4.Zsupplier.Params.ParamByName('email').Value := el4.Text;
      DataModule4.Zsupplier.Params.ParamByName('alamat').Value := el5.Text;
      DataModule4.Zsupplier.Params.ParamByName('perusahaan').Value := el6.Text;
      DataModule4.Zsupplier.Params.ParamByName('nama_bank').Value := el7.Text;
      DataModule4.Zsupplier.Params.ParamByName('nama_akun_bank').Value := el8.Text;
      DataModule4.Zsupplier.Params.ParamByName('no_akun_bank').Value := el9.Text;
      Params.ParamByName('id').Value := a;
      DataModule4.Zsupplier.ExecSQL;


     SQL.Clear;
     SQL.Add('select * from supplier');
     Open;
     end;
     ShowMessage('Data berhasil di Update');
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
    with DataModule4.Zsupplier do
     begin
        SQL.Clear;
        SQL.Add('delete from supplier where id = "'+a+'"');
        ExecSQL ;

        SQL.Clear;
        SQL.Add('select * from supplier');
        Open;
     end;
     ShowMessage('Data berhasil di hapus');
end;

procedure TForm8.tablenameCellClick(Column: TColumn);
begin
     el1.Text:= DataModule4.Zsupplier.Fields[1].AsString;
     el2.Text:= DataModule4.Zsupplier.Fields[2].AsString;
     el3.Text:= DataModule4.Zsupplier.Fields[3].AsString;
     el4.Text:= DataModule4.Zsupplier.Fields[4].AsString;
     el5.Text:= DataModule4.Zsupplier.Fields[5].AsString;
     el6.Text:= DataModule4.Zsupplier.Fields[6].AsString;
     el7.Text:= DataModule4.Zsupplier.Fields[7].AsString;
     el8.Text:= DataModule4.Zsupplier.Fields[8].AsString;
     el9.Text:= DataModule4.Zsupplier.Fields[9].AsString;
     a:= DataModule4.Zsupplier.Fields[0].AsString;
end;

end.
