unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, pqconnection, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, DBGrids, ComCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    PQConnection1: TPQConnection;
    SQLQuery1: TSQLQuery;
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
    procedure PageControl1Change(Sender: TObject);
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

end.

