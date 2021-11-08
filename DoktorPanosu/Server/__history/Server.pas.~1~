unit Server;

interface
  //asdasdasd
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, IdSync, IdBaseComponent,
  IdComponent, IdCustomTCPServer, IdTCPServer, IdContext, IdGlobal, Data.DB,
  DBAccess, Ora, MemDS, OraCall, Vcl.Grids, Vcl.DBGrids, OraSmart,
  Datasnap.DBClient, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls,
  Data.SqlExpr, Vcl.DdeMan;

type
  TStringServerForm = class(TForm)
    IdTCPServer1: TIdTCPServer;
    OraSession1: TOraSession;
    OraDataSource1: TOraDataSource;
    DBGrid1: TDBGrid;
    OraQuery1: TOraQuery;
    OraQuery7: TOraQuery;
    OraQuery8: TOraQuery;
    OraQuery7SIRA_NO: TFloatField;
    OraQuery7ADI: TStringField;
    B: TStringField;
    OraQuery7BOLUM: TFloatField;
    OraQuery7DR_NO: TFloatField;
    RichEdit1: TRichEdit;
    RichEdit2: TRichEdit;
    RichEdit3: TRichEdit;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    OraQuery1SIRA_NO: TFloatField;
    OraQuery1ADI: TStringField;
    OraQuery1SOYADI: TStringField;
    OraQuery1BOLUM: TFloatField;
    OraQuery1DR_KODU: TFloatField;
    procedure IdTCPServer1Execute(AContext: TIdContext);
    procedure FormCreate(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StringServerForm: TStringServerForm;

implementation

{$R *.dfm}

//procedure TStringServerForm.Button1Click(Sender: TObject);
//var randevu: string;


//randevu:='insert into analitic values (''000'','''+HASTARND.ADI+''','''+zag_plan+''','''+zag_fact+''','''+chisl_plan+''','''+chisl_fact+''','''+tekdata+''')';
//OraQuery5.Active:=False;

//OraQuery5.SQL.Clear;
//OraQuery1.SQL.Add(randevu);
//OraQuery5.Active:=True;

    //OraQuery6.Close;
   // OraQuery6.SQL.Clear;
   // OraQuery6.SQL.Add(' select * FROM HASTANE.PANO WHERE GELDIMI=''T''');
   // OraQuery6.Open;

    //  OraQuery6.First;
   //while not OraQuery6.Eof do
//   begin
       //OraQuery6.Append;
       //OraQuery5.ParamByName('SIRA_NO').AsFloat:= OraQuery6.ParamByName('SIRA_NO').AsFloat;
       //OraQuery5.ParamByName('ADI').AsString:= OraQuery6.ParamByName('ADI').AsString;
       //OraQuery5.ParamByName('SOYADI').AsString:= OraQuery6.ParamByName('SOYADI').AsString;
       //OraQuery5.ParamByName('TARIH').AsString:= OraQuery6.ParamByName('TARIH').AsString;

      // OraQuery6ADI.AsString:= OraQuery5ADI.Text;
      // OraQuery6SOYADI.AsString:= OraQuery5SOYADI.Text;
      // OraQuery6TARIH.AsString:= OraQuery5TARIH.Text;
      // OraQuery6.Post;

   //    OraQuery6.Next;
//   end;
    //   OraQuery6.Close;
    //   OraQuery6.SQL.Clear;
     //  OraQuery6.SQL.Add(' DELETE FROM HASTANE.PANO ');
     //  OraQuery6.ExecSQL;
   //    OraQuery6.close;
//end;


//procedure TStringServerForm.Button3Click(Sender: TObject);
//begin
       //OraQuery8.Close;
     //  OraQuery8.SQL.Clear;
    //   OraQuery8.SQL.Add('UPDATE HASTANE.PANO SET GIRDI=''T'' WHERE ROWNUM <= 1 AND GIRDI=''F'' AND GELDIMI=''T'' ');
   //    OraQuery8.Execute;
   //    OraQuery7.Close;
   //    OraQuery7.Open;


//end;

procedure TStringServerForm.FormCreate(Sender: TObject);
begin
  IdTCPServer1.Bindings.Add.IP   := '127.0.0.1';
  IdTCPServer1.Bindings.Add.Port := 6000;
  IdTCPServer1.Active := True;
  //OraQuery6.Close;
  // OraQuery6.ParamByName('SIRA_NO').AsString :=
  //OraQuery6.Open;
  end;

procedure TStringServerForm.IdTCPServer1Execute(AContext: TIdContext);

var
  LLine1: String;
  LLine2: String;
  LLine3: String;
  LLine4: String;
begin


  LLine1 := AContext.Connection.IOHandler.ReadLn;
  RichEdit1.Lines.Clear();
   RichEdit1.Lines.Add('');
  RichEdit1.Lines.Add(LLine1);
  //Edit1.Text := RichEdit1.Text;
  // Memo2.Lines.Add(LLine1);
    AContext.Connection.IOHandler.WriteLn('OK');

  LLine2 := AContext.Connection.IOHandler.ReadLn;
  RichEdit2.Lines.Clear();
   RichEdit2.Lines.Add('');
  RichEdit2.Lines.Add(LLine2);
  //Edit2.Text := RichEdit2.Text;
  // Memo3.Lines.Add(LLine2);
    AContext.Connection.IOHandler.WriteLn('OK');

  LLine3 := AContext.Connection.IOHandler.ReadLn;
  RichEdit3.Lines.Clear();
  RichEdit3.Lines.Add('');
  RichEdit3.Lines.Add(LLine3);
  //Edit3.Text := RichEdit3.Text;
  // Memo4.Lines.Add(LLine3);
    AContext.Connection.IOHandler.WriteLn('OK');

  LLine4 := AContext.Connection.IOHandler.ReadLn;

  //OraQuery7.First;
  OraQuery1.First;
  OraQuery8.Close;
  OraQuery8.SQL.Clear;
  //OraQuery8.SQL.Text:='UPDATE HASTANE.PANO SET GIRDI=''T'' WHERE SIRA_NO = '+OraQuery7SIRA_NO.AsFloat.ToString+' AND GIRDI=''F'' AND GELDIMI=''T'' ';
  OraQuery8.SQL.Text:='UPDATE HASTANE.HASTARND SET CAGRILDIMI=''T'' WHERE SIRA_NO = '+OraQuery1SIRA_NO.AsString+' AND CAGRILDIMI=''F'' AND GELDIMI=''T'' ';
  OraQuery8.ExecSQL;
  //OraQuery7.Close;
  //OraQuery7.Open;
  OraQuery1.Close;
  OraQuery1.Open;
  AContext.Connection.IOHandler.WriteLn('OK');


  // Memo2.Lines.Add(LLine4);
  // if (AContext.Connection.IOHandler.WriteLn('OK')) then
end;



end.
