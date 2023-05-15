unit UClasseServidor;
         //classe responalvel por comunnicar com o client
         //tudo que ele vai ter acesso
interface

uses Classes;

type
  // diretivas em tempo de execu��o
  {$METHODINFO ON}
    TUClasseServidor = class(TComponent) // dentro dessa classe TComponent vai entrar o processamento
    public
      function MostrarTexto(Texto:String):string;
      function MostrarTextoContrario(Texto:String):string;
  end;
  {$METHODINFO ON}

implementation



{ TUClasseServidor }

uses System.StrUtils;

function TUClasseServidor.MostrarTexto(Texto: String): string;
begin
      Result := Texto
end;

function TUClasseServidor.MostrarTextoContrario(Texto: String): string;
begin
  Result:= System.StrUtils.ReverseString(Texto)
end;

end.

