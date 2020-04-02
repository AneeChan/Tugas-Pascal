{
    Catatan : Program ini sengaja menggunakan cara alternatif selain dengan fungsi div dan modulo yaitu dengan manipulasi string.
}
PROGRAM T3_M_Galang_Rivaldo;
USES crt;
VAR
    str_angka : String;
    int_angka, err_angka : Integer;
BEGIN
    CLRSCR;
    Textcolor(14);
    WriteLn('Program Analisa Struktur Angka');
    WriteLn('');
    Textcolor(7);
    WriteLn('=========================================');
    Textcolor(15);
    writeLn('');
    Write('Masukkan Angka (4 digit)... ');
    Textcolor(11);
    Readln(str_angka);
    writeLn('');
    Textcolor(7);
    WriteLn('=========================================');
    writeLn('');
    Textcolor(14);
    WriteLn('Tekan Enter untuk Memulai Analisa... ');
    Textcolor(7);
    ReadLn;
    WriteLn('=========================================');

    begin
        //validasi inputan
        if (length(str_angka)>0) then
            begin
                val(str_angka, int_angka, err_angka);
                if((Length(str_angka)=4) and (err_angka = 0)) then //tanpa error
                    begin
                        Textcolor(14);
                        Write('Struktur Angka ');
                        Textcolor(11);
                        WriteLn(int_angka);
                        WriteLn('');
                        Write(copy(str_angka, 1, 1),' Sebagai ');
                        Textcolor(15);
                        WriteLn('Ribuan');
                        Textcolor(11);
                        Write(copy(str_angka, 2, 1),' Sebagai ');
                        Textcolor(15);
                        WriteLn('Ratusan');
                        Textcolor(11);
                        Write(copy(str_angka, 3, 1),' Sebagai ');
                        Textcolor(15);
                        WriteLn('Puluhan');
                        Textcolor(11);
                        Write(copy(str_angka, 4, 1),' Sebagai ');
                        Textcolor(15);
                        WriteLn('Ribuan');
                    end
                else
                    begin
                        WriteLn('');
                        Textcolor(14);
                        WriteLn('Masukkan angka sesuai petunjuk !');
                    end;
            end
        else
            begin
                WriteLn('');
                Textcolor(14);
                WriteLn('Angka tidak boleh kosong !');
            end;
    end;
    Textcolor(7);
    ReadLn;
END.