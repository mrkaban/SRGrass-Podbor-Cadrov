unit MainUnit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Menus, ComCtrls, Grids, DBGrids, StdCtrls, ExtCtrls,
  DBCtrls, Buttons;

type
  TMainForm = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery1DSDesigner: TAutoIncField;
    ADOQuery1DSDesigner2: TWideStringField;
    ADOQuery1DSDesigner3: TWideStringField;
    ADOQuery1DSDesigner4: TWideStringField;
    ADOQuery2DSDesigner: TAutoIncField;
    ADOQuery2DSDesigner2: TWideStringField;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    ADOQuery3DSDesigner: TAutoIncField;
    ADOQuery3DSDesigner2: TWideStringField;
    ADOQuery4: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery4DSDesigner: TAutoIncField;
    ADOQuery4DSDesigner2: TIntegerField;
    ADOQuery4DSDesigner3: TIntegerField;
    ADOQuery4DSDesigner4: TWideStringField;
    ADOQuery5: TADOQuery;
    AutoIncField1: TAutoIncField;
    WideStringField1: TWideStringField;
    DataSource5: TDataSource;
    ADOQuery7: TADOQuery;
    DataSource7: TDataSource;
    GroupBox1: TGroupBox;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBNavigator3: TDBNavigator;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    DBNavigator2: TDBNavigator;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    DBNavigator5: TDBNavigator;
    DBNavigator6: TDBNavigator;
    GroupBox2: TGroupBox;
    SpeedButton2: TSpeedButton;
    DBGrid5: TDBGrid;
    DBGrid7: TDBGrid;
    DBNavigator4: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DataSource6: TDataSource;
    ADOQuery6: TADOQuery;
    ADOQuery7DSDesigner: TAutoIncField;
    ADOQuery7DSDesigner2: TIntegerField;
    ADOQuery7DSDesigner3: TWideStringField;
    SpeedButton3: TSpeedButton;
    DBNavigator7: TDBNavigator;
    TabSheet3: TTabSheet;
    ADOQuery8: TADOQuery;
    DataSource8: TDataSource;
    DBGrid8: TDBGrid;
    DBNavigator8: TDBNavigator;
    DBNavigator9: TDBNavigator;
    Label4: TLabel;
    ADOQuery8DSDesigner: TAutoIncField;
    ADOQuery8DSDesigner2: TWideStringField;
    ADOQuery9: TADOQuery;
    DataSource9: TDataSource;
    TabSheet4: TTabSheet;
    SpeedButton4: TSpeedButton;
    DBGrid9: TDBGrid;
    ADOQuery10: TADOQuery;
    DataSource10: TDataSource;
    DBGrid10: TDBGrid;
    TabSheet5: TTabSheet;
    Memo1: TMemo;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    DBGrid6: TDBGrid;
    ADOQuery6DSDesigner: TAutoIncField;
    ADOQuery6DSDesigner2: TIntegerField;
    ADOQuery6DSDesigner3: TIntegerField;
    ADOQuery6DSDesigner4: TIntegerField;
    ADOQuery6DSDesigner5: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid5CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure DBGrid6CellClick(Column: TColumn);
    procedure PageControl1Change(Sender: TObject);
    procedure DBNavigator9Click(Sender: TObject; Button: TNavigateBtn);
    procedure ADOQuery8AfterDelete(DataSet: TDataSet);
    procedure ADOQuery8AfterEdit(DataSet: TDataSet);
    procedure ADOQuery8AfterInsert(DataSet: TDataSet);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  Ch : boolean;

implementation

{$R *.dfm}

procedure TMainForm.FormActivate(Sender: TObject);
var
 ConnectionString, C1 : AnsiString;
begin

 //прячем отладочную закладку
 TabSheet4.TabVisible := false;
  //попытка подключиться к базе
try

 //задаем параметры соеденения

 ADOConnection1.Close;
 ConnectionString := 'Provider=MSDASQL.1;Persist Security Info=False;Data Source=База данных MS Access;Initial Catalog=' + ExtractFilePath(Application.ExeName) + 'data.mdb';
 ADOConnection1.Provider:= 'MSDASQL.1';
 ADOConnection1.ConnectionString := ConnectionString;
 ADOConnection1.Connected := true;


except
   Application.MessageBox('Ошибка подключения базы', 'Ошибка 1',  MB_OK and MB_ICONERROR);
   exit;
end;


//составляем строку запроса

//список претендентов
 ADOQuery1.Active := false;
 ADOQuery1.SQL.Clear;
 C1 := 'Select * from Претенденты';
 ADOQuery1.SQL.Add(C1);
 ADOQuery1.Active := true;

//список претендентов
 ADOQuery2.Active := false;
 ADOQuery2.SQL.Clear;
 C1 := 'Select * from Вакансии';
 ADOQuery2.SQL.Add(C1);
 ADOQuery2.Active := true;

 //список параметров
 ADOQuery3.Active := false;
 ADOQuery3.SQL.Clear;
 C1 := 'Select * from Параметры';
 ADOQuery3.SQL.Add(C1);
 ADOQuery3.Active := true;

 //список параметров
 ADOQuery5.Active := false;
 ADOQuery5.SQL.Clear;
 C1 := 'Select * from Параметры';
 ADOQuery5.SQL.Add(C1);
 ADOQuery5.Active := true;

//список параметров
 ADOQuery8.Active := false;
 ADOQuery8.SQL.Clear;
 C1 := 'Select * from Параметры';
 ADOQuery8.SQL.Add(C1);
 ADOQuery8.Active := true; 

end;



//вывод связанных данных при щелчке мыши на таблице наименований параметров
procedure TMainForm.DBGrid3CellClick(Column: TColumn);
var
 C1 : AnsiString;
begin
//значения параметров
 ADOQuery4.Active := false;
 ADOQuery4.SQL.Clear;
 C1 := 'Select * from Характеристики where Наименование = ' +
   ADOQuery3.FieldByName('Код').AsString +  ' and Претендент = ' +
     ADOQuery1.FieldByName('Код').AsString;
 ADOQuery4.SQL.Add(C1);
 ADOQuery4.Active := true;
end;


//вывод связанных данных при щелчке мыши на таблице списка претендентов
procedure TMainForm.DBGrid1CellClick(Column: TColumn);
var
 C1 : AnsiString;
begin
//значения параметров
 ADOQuery4.Active := false;
 ADOQuery4.SQL.Clear;
 C1 := 'Select * from Характеристики where Наименование = ' +
   ADOQuery3.FieldByName('Код').AsString +  ' and Претендент = ' +
     ADOQuery1.FieldByName('Код').AsString;
 ADOQuery4.SQL.Add(C1);
 ADOQuery4.Active := true;
end;


//добавление записи в таблицу характеристик
procedure TMainForm.SpeedButton1Click(Sender: TObject);
begin
if ADOQuery1.FieldByName('Код').Value <> NULL Then
 if ADOQuery3.FieldByName('Код').Value <> NULL Then
  begin
   ADOQuery4.Append;
   ADOQuery4.FieldByName('Претендент').Value := ADOQuery1.FieldByName('Код').Value;
   ADOQuery4.FieldByName('Наименование').Value := ADOQuery3.FieldByName('Код').Value;
   ADOQuery4.Post;
 end;  
end;

///вывод связанных данных при щелчке мыши на таблице списка параметров
procedure TMainForm.DBGrid5CellClick(Column: TColumn);
var
 C1 : AnsiString;
begin
//значения параметров - диапазоны
 ADOQuery6.Active := false;
 ADOQuery6.SQL.Clear;
 C1 := 'Select * from Требования where Наименование = ' +
   ADOQuery5.FieldByName('Код').AsString +  ' and Вакансия = ' +
     ADOQuery2.FieldByName('Код').AsString;
 ADOQuery6.SQL.Add(C1);
 ADOQuery6.Active := true;


//значения параметров

if ADOQuery6.FieldByName('Код').Value <>  NULL then
 begin
  ADOQuery7.Active := false;
  ADOQuery7.SQL.Clear;
 // C1 := 'Select * from "Значения для вакансий"';
  C1 := 'Select * from "Значения для вакансий" where Требование = ' +
   ADOQuery6.FieldByName('Код').AsString ;
  ADOQuery7.SQL.Add(C1);
  ADOQuery7.Active := true;
  DBGrid7.Enabled := true;
 end
else
 begin
  ADOQuery7.Active := false;
  DBGrid7.Enabled := false;
 end;

end;

//вывод связанных данных при щелчке мыши на таблице списка вакансий
procedure TMainForm.DBGrid2CellClick(Column: TColumn);
var
 C1 : AnsiString;
begin
//значения параметров
 ADOQuery6.Active := false;
 ADOQuery6.SQL.Clear;
 C1 := 'Select * from Требования where Наименование = ' +
   ADOQuery5.FieldByName('Код').AsString +  ' and Вакансия = ' +
     ADOQuery2.FieldByName('Код').AsString;
 ADOQuery6.SQL.Add(C1);
 ADOQuery6.Active := true;

end;


//добавление записи в таблицу требований (точные значения) 
procedure TMainForm.SpeedButton2Click(Sender: TObject);
begin
if ADOQuery6.FieldByName('Код').Value <> NULL Then
begin
 ADOQuery7.Append;
 ADOQuery7.FieldByName('Требование').Value := ADOQuery6.FieldByName('Код').Value;
 ADOQuery7.Post;
end;
end;

procedure TMainForm.SpeedButton3Click(Sender: TObject);
var
 C1 : AnsiString;

begin
if ADOQuery2.FieldByName('Код').Value <> NULL Then
 if ADOQuery5.FieldByName('Код').Value <> NULL Then
  begin
   ADOQuery6.Append;
   ADOQuery6.FieldByName('Вакансия').Value := ADOQuery2.FieldByName('Код').Value;
   ADOQuery6.FieldByName('Наименование').Value := ADOQuery5.FieldByName('Код').Value;
   ADOQuery6.Post;
 if ADOQuery6.FieldByName('Код').Value <>  NULL then
 begin
  ADOQuery7.Active := false;
  ADOQuery7.SQL.Clear;
  C1 := 'Select * from "Значения для вакансий" where Требование = ' +
   ADOQuery6.FieldByName('Код').AsString ;
  ADOQuery7.SQL.Add(C1);
  ADOQuery7.Active := true;
  DBGrid7.Enabled := true;
 end
else
 begin
  ADOQuery7.Active := false;
  DBGrid7.Enabled := false;
 end; 
 end;
end;

procedure TMainForm.DBGrid6CellClick(Column: TColumn);
var
 C1 : AnsiString;
begin
  if ADOQuery6.FieldByName('Код').Value <>  NULL then
 begin
  ADOQuery7.Active := false;
  ADOQuery7.SQL.Clear;
  C1 := 'Select * from "Значения для вакансий" where Требование = ' +
   ADOQuery6.FieldByName('Код').AsString ;
  ADOQuery7.SQL.Add(C1);
  ADOQuery7.Active := true;
  DBGrid7.Enabled := true;
 end
else
 begin
  ADOQuery7.Active := false;
  DBGrid7.Enabled := false;
 end;
end;


//обновление списка параметров при изменении таблицы
procedure TMainForm.PageControl1Change(Sender: TObject);
begin
 if Ch = true then
  begin
    ADOQuery3.Active := false;
    ADOQuery3.Active := true;
    ADOQuery5.Active := false;
    ADOQuery5.Active := true;
    Ch := false;
  end;
end;

procedure TMainForm.DBNavigator9Click(Sender: TObject;
  Button: TNavigateBtn);
begin
 Ch := true;
end;

procedure TMainForm.ADOQuery8AfterDelete(DataSet: TDataSet);
begin
 Ch := true;
end;

procedure TMainForm.ADOQuery8AfterEdit(DataSet: TDataSet);
begin
 Ch := true;
end;

procedure TMainForm.ADOQuery8AfterInsert(DataSet: TDataSet);
begin
 Ch := true;
end;


//подбор вакансий выбранному претенденту
procedure TMainForm.SpeedButton4Click(Sender: TObject);
var
 C1 : AnsiString;
// Pc : Integer;     //количество параметров в базе
 Cn : integer;     //номер текущей вакансии
 Pn : Integer;     //номер соискателя
// Pcc : integer;   //количество параметров для текущей вакансии
 Cp : integer;    //код параметра
 F : boolean;     //флаг учета соответсвия требованию
 Fp : boolean;    //флаг учета требования
 P : integer;     //количество соответсвующих требованиям параметров
 Pp : integer;    //количество значащих требований
begin

Memo1.Lines.Clear;
Memo1.Lines.Add('Подбор вакансии');
Memo1.Lines.Add('Соискатель: ' + ADOQuery1.FieldByName('ФИО').AsString);

// Pc := ADOQuery3.RecordCount; //берем количество параметров в базе

 Pn := ADOQuery1.FieldByName('Код').AsInteger;

//Перебираем все вакансии
 ADOQuery2.First;

 while not ADOQuery2.Eof do
 begin
  Cn := ADOQuery2.FieldByName('код').AsInteger;

 //смотрим сколько параметров задано для данной вакансии (без учета разности значений)
      {
//выбираем значение вакансии с заданным номером со всеми значениями
 ADOQuery9.Active := false;
 ADOQuery9.SQL.Clear;

 C1 := 'SELECT Вакансии.* FROM Вакансии INNER JOIN Требования ON Вакансии.Код = Требования.Вакансия ' +
         'WHERE (((Вакансии.Код)= ' + IntToStr(Cn) + ' ));';
 ADOQuery9.SQL.Add(C1);
 ADOQuery9.Active := true;

 Pcc := ADOQuery9.RecordCount; //количество параметров для текущей вакансии
}

 P := 0;
 Pp := 0;

//выбираем значение вакансии с заданным номером со всеми значениями
 ADOQuery9.Active := false;
 ADOQuery9.SQL.Clear;

 C1 := 'SELECT Вакансии.*, Требования.[Минимальное значение], Требования.[Максимальное значение],' +
  ' [Значения для вакансий].Значение, Параметры.* ' +
   ' FROM (Параметры INNER JOIN (Вакансии INNER JOIN Требования ON Вакансии.Код = Требования.Вакансия) ' +
   ' ON Параметры.Код = Требования.Наименование) LEFT JOIN [Значения для вакансий] ON Требования.Код = ' +
   ' [Значения для вакансий].Требование WHERE (((Вакансии.Код)= ' + IntToStr(Cn) + ' )) order by Параметры.код;';
 ADOQuery9.SQL.Add(C1);
 ADOQuery9.Active := true;

//выбираем претендента с заданным номером
 ADOQuery10.Active := false;
 ADOQuery10.SQL.Clear;

 C1 := 'SELECT Претенденты.*, Характеристики.Значение, Параметры.* ' +
  ' FROM Претенденты INNER JOIN (Параметры INNER JOIN Характеристики ON Параметры.Код = Характеристики.Наименование)  ' +
   'ON Претенденты.Код = Характеристики.Претендент WHERE (((Претенденты.Код)= ' + IntToStr(Pn) + '))  order by Параметры.код;';
 ADOQuery10.SQL.Add(C1);
 ADOQuery10.Active := true;

 Memo1.Lines.Add('');
 Memo1.Lines.Add('Вакансия: ' + ADOQuery9.FieldByName('Наименование').AsString);


   //     ShowMessage('');


 //теперь надо для выбранного соискателя проверить совпадение требований по выбранной вакансии
 ADOQuery3.First;
   while not ADOQuery3.Eof do //берем по одному параметру вакансии
    begin
     Cp := ADOQuery3.FieldByName('Код').AsInteger;  //код параметра

     //берем требования под текующую вакансию с данным кодом

      ADOQuery9.Active := false;
      ADOQuery9.SQL.Clear;
      C1 := 'SELECT Вакансии.*, Требования.[Минимальное значение], Требования.[Максимальное значение],' +
       ' [Значения для вакансий].Значение, Параметры.* ' +
       ' FROM (Параметры INNER JOIN (Вакансии INNER JOIN Требования ON Вакансии.Код = Требования.Вакансия) ' +
       ' ON Параметры.Код = Требования.Наименование) LEFT JOIN [Значения для вакансий] ON Требования.Код = ' +
       ' [Значения для вакансий].Требование WHERE ((Вакансии.Код = ' + IntToStr(Cn) + ' ) ' +
        ' And (Параметры.код = ' + IntToStr(Cp) + ' ))';
      ADOQuery9.SQL.Add(C1);
      ADOQuery9.Active := true;


      //выбираем тот же параметр у кандидата

      ADOQuery10.Active := false;
      ADOQuery10.SQL.Clear;
       C1 := 'SELECT Претенденты.*, Характеристики.Значение, Параметры.* ' +
      ' FROM Претенденты INNER JOIN (Параметры INNER JOIN Характеристики ON Параметры.Код = Характеристики.Наименование)  ' +
      'ON Претенденты.Код = Характеристики.Претендент WHERE ((Претенденты.Код= ' + IntToStr(Pn) + ')' +
      ' And (Параметры.код = ' + IntToStr(Cp) + ' ))';
      ADOQuery10.SQL.Add(C1);
      ADOQuery10.Active := true;

      //              ShowMessage('');

      //теперь перебираем все значения требований в вакансии по данному  параметру и сравниваем их со значением кандидата
      //если удовлетворяет - то ставим флажок
      F := false; //по умолчанию - не подходит
        if  ADOQuery9.RecordCount > 0 then       //если записей в требованях к вакансии больше 0 - то проверяем соответсвиие, иначе этот пункт требований игнорируем
         begin
           Fp := false;
          //проверем что это за запись - диапазон значений или одиночное значение
           while not ADOQuery9.Eof do //пока есть записи
            begin
             if (ADOQuery9.FieldByName('Минимальное значение').Value = NULL) and
                (ADOQuery9.FieldByName('Максимальное значение').Value = NULL) then
                  begin
                   if  ADOQuery9.FieldByName('Значение').Value <> Null Then
                   begin
                    Fp := true;
                   // проверяем на соотвествие точному значению
                    if  ADOQuery9.FieldByName('Значение').Value =
                        ADOQuery10.FieldByName('Значение').Value then F := true;
                    end;
                   end;

             if (ADOQuery9.FieldByName('Минимальное значение').Value <> NULL) and
                (ADOQuery9.FieldByName('Максимальное значение').Value <> NULL) then
                  begin
                  Fp := true;
                   // проверяем на соотвествие диапазону
                   if  (ADOQuery9.FieldByName('Минимальное значение').Value <=
                        ADOQuery10.FieldByName('Значение').AsInteger) and
                         (ADOQuery9.FieldByName('Максимальное значение').Value >=
                           ADOQuery10.FieldByName('Значение').AsInteger) then F := true;
                    end;

            if (ADOQuery9.FieldByName('Минимальное значение').Value <> NULL) and
                (ADOQuery9.FieldByName('Максимальное значение').Value = NULL) then
                  begin
                   Fp := true;
                  // проверяем на соотвествие диапазону
                   if  (ADOQuery9.FieldByName('Минимальное значение').Value <=
                        ADOQuery10.FieldByName('Значение').AsInteger) then F := true;
                    end;

           if (ADOQuery9.FieldByName('Минимальное значение').Value <> NULL) and
                (ADOQuery9.FieldByName('Максимальное значение').Value = NULL) then
                  begin
                   Fp := true;
                   // проверяем на соотвествие диапазону
                   if  (ADOQuery9.FieldByName('Максимальное значение').Value >=
                        ADOQuery10.FieldByName('Значение').AsInteger) then F := true;
                    end;

                     //ShowMessage(BoolTOStr(F));


         //        ShowMessage(IntToStr(PP) + '  ' + IntToStr(P));



             if (F) then inc(P);
              F := false;
              ADOQuery9.Next;
            end;


          if Fp then
           begin
            Inc(Pp);    //засчитываем требование как значащее
            Memo1.Lines.Add('Требование :' + ADOQuery9.FieldByName('Наименование_1').AsString);
             if (Pp <= p) Then Memo1.Lines.Add('Данные соискателя удовтеворяют требованиям')
             else  Memo1.Lines.Add('Данные соискателя не удовтеворяют требованиям');
           end;
         end;


       ADOQuery3.Next;
    end;
         if Pp <= p Then Memo1.Lines.Add('Вакансия подходит')
         else Memo1.Lines.Add('Вакансия не подходит');



 ADOQuery2.Next;
 end; //while

  PageControl1.ActivePageIndex := 4;
 end;


//подбор соискатеей для выбранной вакансии 
procedure TMainForm.SpeedButton5Click(Sender: TObject);
var
 C1 : AnsiString;
// Pc : Integer;     //количество параметров в базе
 Cn : integer;     //номер текущей вакансии
 Pn : Integer;     //номер соискателя
// Pcc : integer;   //количество параметров для текущей вакансии
 Cp : integer;    //код параметра
 F : boolean;     //флаг учета соответсвия требованию
 Fp : boolean;    //флаг учета требования
 P : integer;     //количество соответсвующих требованиям параметров
 Pp : integer;    //количество значащих требований
begin

Memo1.Lines.Clear;
Memo1.Lines.Add('Подбор соискателей');
Memo1.Lines.Add('Ваканcия: ' + ADOQuery2.FieldByName('Наименование').AsString);

//код вакансии
 Pn := ADOQuery2.FieldByName('Код').AsInteger;

//Перебираем всех соискателей
 ADOQuery1.First;

 while not ADOQuery1.Eof do
 begin
  Cn := ADOQuery1.FieldByName('код').AsInteger;


 P := 0;
 Pp := 0;

//выбираем данные соискателя

ADOQuery10.Active := false;
 ADOQuery10.SQL.Clear;
 C1 := 'SELECT Претенденты.*, Характеристики.Значение, Параметры.* ' +
  ' FROM Претенденты INNER JOIN (Параметры INNER JOIN Характеристики ON Параметры.Код = Характеристики.Наименование)  ' +
   'ON Претенденты.Код = Характеристики.Претендент WHERE (((Претенденты.Код)= ' + IntToStr(Cn) + '))  order by Параметры.код;';
 ADOQuery10.SQL.Add(C1);
 ADOQuery10.Active := true;


//выбираем даннеы вакансии
 ADOQuery9.Active := false;
 ADOQuery9.SQL.Clear;

 C1 := 'SELECT Вакансии.*, Требования.[Минимальное значение], Требования.[Максимальное значение],' +
  ' [Значения для вакансий].Значение, Параметры.* ' +
   ' FROM (Параметры INNER JOIN (Вакансии INNER JOIN Требования ON Вакансии.Код = Требования.Вакансия) ' +
   ' ON Параметры.Код = Требования.Наименование) LEFT JOIN [Значения для вакансий] ON Требования.Код = ' +
   ' [Значения для вакансий].Требование WHERE (((Вакансии.Код)= ' + IntToStr(Pn) + ' )) order by Параметры.код;';
 ADOQuery9.SQL.Add(C1);
 ADOQuery9.Active := true;


 Memo1.Lines.Add('');
 Memo1.Lines.Add('Соискатель: ' + ADOQuery10.FieldByName('ФИО').AsString);


      // ShowMessage('');


 //теперь надо для выбранного соискателя проверить совпадение требований по выбранной вакансии
 ADOQuery3.First;
   while not ADOQuery3.Eof do //берем по одному параметру
    begin
     Cp := ADOQuery3.FieldByName('Код').AsInteger;  //код параметра


      ADOQuery9.Active := false;
      ADOQuery9.SQL.Clear;
      C1 := 'SELECT Вакансии.*, Требования.[Минимальное значение], Требования.[Максимальное значение],' +
       ' [Значения для вакансий].Значение, Параметры.* ' +
       ' FROM (Параметры INNER JOIN (Вакансии INNER JOIN Требования ON Вакансии.Код = Требования.Вакансия) ' +
       ' ON Параметры.Код = Требования.Наименование) LEFT JOIN [Значения для вакансий] ON Требования.Код = ' +
       ' [Значения для вакансий].Требование WHERE ((Вакансии.Код = ' + IntToStr(Pn) + ' ) ' +
        ' And (Параметры.код = ' + IntToStr(Cp) + ' ))';
      ADOQuery9.SQL.Add(C1);
      ADOQuery9.Active := true;


      //выбираем тот же параметр у кандидата

      ADOQuery10.Active := false;
      ADOQuery10.SQL.Clear;
       C1 := 'SELECT Претенденты.*, Характеристики.Значение, Параметры.* ' +
      ' FROM Претенденты INNER JOIN (Параметры INNER JOIN Характеристики ON Параметры.Код = Характеристики.Наименование)  ' +
      'ON Претенденты.Код = Характеристики.Претендент WHERE ((Претенденты.Код= ' + IntToStr(Cn) + ')' +
      ' And (Параметры.код = ' + IntToStr(Cp) + ' ))';
      ADOQuery10.SQL.Add(C1);
      ADOQuery10.Active := true;


      //теперь перебираем все значения требований в вакансии по данному  параметру и сравниваем их со значением кандидата
      //если удовлетворяет - то ставим флажок
      F := false; //по умолчанию - не подходит
        if  ADOQuery9.RecordCount > 0 then       //если записей в требованях к вакансии больше 0 - то проверяем соответсвиие, иначе этот пункт требований игнорируем
         begin
           Fp := false;
          //проверем что это за запись - диапазон значений или одиночное значение
           while not ADOQuery9.Eof do //пока есть записи
            begin
             if (ADOQuery9.FieldByName('Минимальное значение').Value = NULL) and
                (ADOQuery9.FieldByName('Максимальное значение').Value = NULL) then
                  begin
                   if  ADOQuery9.FieldByName('Значение').Value <> Null Then
                   begin
                    Fp := true;
                   // проверяем на соотвествие точному значению
                    if  ADOQuery9.FieldByName('Значение').Value =
                        ADOQuery10.FieldByName('Значение').Value then F := true;
                    end;
                   end;

             if (ADOQuery9.FieldByName('Минимальное значение').Value <> NULL) and
                (ADOQuery9.FieldByName('Максимальное значение').Value <> NULL) then
                  begin
                  Fp := true;
                   // проверяем на соотвествие диапазону
                   if  (ADOQuery9.FieldByName('Минимальное значение').Value <=
                        ADOQuery10.FieldByName('Значение').AsInteger) and
                         (ADOQuery9.FieldByName('Максимальное значение').Value >=
                           ADOQuery10.FieldByName('Значение').AsInteger) then F := true;
                    end;

            if (ADOQuery9.FieldByName('Минимальное значение').Value <> NULL) and
                (ADOQuery9.FieldByName('Максимальное значение').Value = NULL) then
                  begin
                   Fp := true;
                  // проверяем на соотвествие диапазону
                   if  (ADOQuery9.FieldByName('Минимальное значение').Value <=
                        ADOQuery10.FieldByName('Значение').AsInteger) then F := true;
                    end;

           if (ADOQuery9.FieldByName('Минимальное значение').Value <> NULL) and
                (ADOQuery9.FieldByName('Максимальное значение').Value = NULL) then
                  begin
                   Fp := true;
                   // проверяем на соотвествие диапазону
                   if  (ADOQuery9.FieldByName('Максимальное значение').Value >=
                        ADOQuery10.FieldByName('Значение').AsInteger) then F := true;
                    end;



             if (F) then inc(P);
              F := false;
              ADOQuery9.Next;
            end;


          if Fp then
           begin
            Inc(Pp);    //засчитываем требование как значащее
            Memo1.Lines.Add('Требование :' + ADOQuery9.FieldByName('Наименование_1').AsString);
             if (Pp <= p) Then Memo1.Lines.Add('Данные соискателя удовтеворяют требованиям')
             else  Memo1.Lines.Add('Данные соискателя не удовтеворяют требованиям');
           end;
         end;


       ADOQuery3.Next;
    end;
         if Pp <= p Then Memo1.Lines.Add('Соискатель подходит')
         else Memo1.Lines.Add('Соискатель не подходит');


 //     ShowMessage('1111');
 ADOQuery1.Next;
 end; //while
  PageControl1.ActivePageIndex := 4;

 end;


end.
