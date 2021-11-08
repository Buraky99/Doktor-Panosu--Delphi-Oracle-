unit Client;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdGlobal, Data.DB, MemDS,
  VirtualTable, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.DBCtrls, DBAccess, Ora,
  OraCall, Vcl.Mask, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls;

type
  TClientForm = class(TForm)
    Button1: TButton;
    IdTCPClient1: TIdTCPClient;
    CheckBoxConnectDisconnet: TCheckBox;
    Memo1: TMemo;
    DBGrid2: TDBGrid;
    OraSession1: TOraSession;
    OraDataSource1: TOraDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    OraQuery2: TOraQuery;
    ActionToolBar1: TActionToolBar;
    procedure CheckBoxConnectDisconnetClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure IdTCPClient1Connected(Sender: TObject);
    procedure IdTCPClient1Disconnected(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ClientForm: TClientForm;

implementation

{$R *.dfm}

procedure TClientForm.Button1Click(Sender: TObject);

var
LLine1 : string;
LLine2 : string;
LLine3 : string;
LLine4 : string;

begin

    IdTCPClient1.IOHandler.WriteLn(DBEdit1.Text);
  dbEdit1.Text := '';
  LLine1 := IdTCPClient1.IOHandler.ReadLn();
  if ( LLine1 = 'OK' ) then
      Memo1.Lines.Add('Server says it has received your String');

  //IdTCPClient1.IOHandler.WriteLn(DBEdit1.Text);
  //  IdTCPClient1.IOHandler.WriteLn(LLine1);
 //  LLine1 := IdTCPClient1.IOHandler.ReadLn();

  IdTCPClient1.IOHandler.WriteLn(DBEdit2.Text);
  dbEdit2.Text := '';
   // IdTCPClient1.IOHandler.WriteLn(LLine2);
   LLine2 := IdTCPClient1.IOHandler.ReadLn();
   if ( LLine2 = 'OK' ) then
      Memo1.Lines.Add('Server says it has received your String');

  IdTCPClient1.IOHandler.WriteLn(DBEdit3.Text);
    IdTCPClient1.IOHandler.WriteLn(LLine3);
  LLine3 := IdTCPClient1.IOHandler.ReadLn();

    LLine4 := IdTCPClient1.IOHandler.ReadLn();

  OraQuery2.Close;
  OraQuery2.Open;

end;

procedure TClientForm.CheckBoxConnectDisconnetClick(Sender: TObject);
begin
  if ( CheckBoxConnectDisconnet.Checked = True ) then
  begin
    IdTCPClient1.Host := '127.0.0.1';
    IdTCPClient1.Port := 6000;
    IdTCPClient1.Connect;

  end
  else
    IdTCPClient1.Disconnect;
end;

procedure TClientForm.IdTCPClient1Connected(Sender: TObject);
begin
  Memo1.Lines.Add('Client connected with server');
end;

procedure TClientForm.IdTCPClient1Disconnected(Sender: TObject);
begin
  Memo1.Lines.Add('Client connected with server');
end;

end.
