unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, pqconnection, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, DBGrids, ComCtrls, DbCtrls, StdCtrls, Types;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    OpenDialog1: TOpenDialog;
    Run: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid5: TDBGrid;
    DBGrid6: TDBGrid;
    DBNavigator1: TDBNavigator;
    Memo1: TMemo;
    PageControl1: TPageControl;
    PQConnection1: TPQConnection;
    SaveDialog1: TSaveDialog;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLQuery3: TSQLQuery;
    SQLQuery4: TSQLQuery;
    SQLQuery5: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    TabSheetCities: TTabSheet;
    TabSheetSuppliers: TTabSheet;
    TabSheetContracts: TTabSheet;
    TabSheetDrugClasses: TTabSheet;
    TabSheetDrugPrices: TTabSheet;
    TabSheetDrugRegistry: TTabSheet;
    TabSheetDrugs: TTabSheet;
    TabSheetOrders: TTabSheet;
    TabSheetProducts: TTabSheet;
    TabSheetPurchases: TTabSheet;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure RunClick(Sender: TObject);
    procedure Memo1Change(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure TabSheetCitiesContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.PageControl1Change(Sender: TObject);
begin

end;

procedure TForm1.RunClick(Sender: TObject);
begin
  SQLQuery2.Active := False;
  SQLQuery2.SQL.Text := Memo1.Text;
  SQLQuery2.Active := True;
end;

procedure TForm1.Button2Click(Sender: TObject);
var filename: string;  tfIn: TextFile; s: string; buf: string;
begin
     if OpenDialog1.Execute then
        begin
          Memo1.Text := '';
          filename := OpenDialog1.Filename;
          AssignFile(tfIn, filename);
          reset(tfIn);
           while not eof(tfIn) do
            begin
              readln(tfIn, s);
              Memo1.append(s);
            end;
           CloseFile(tfIn);
        end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if SaveDialog1.Execute then
    Memo1.Lines.SaveToFile( SaveDialog1.Filename );
end;

procedure TForm1.Memo1Change(Sender: TObject);
begin

end;

procedure TForm1.TabSheetCitiesContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin

end;

end.

