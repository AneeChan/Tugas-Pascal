{
    Catatan : Secara kasar, ini bukan program kalkulator. Namun secara esensial program ini menggunakan prinsip kalkulasi yang sama dengan program kalkulator (perhitungan). Dengan operasi yang digunakan adalah penjumlahan, pengurangan, perkalian dan modulo. Selain itu, program ini sesuai kriteria yang diminta yaitu mempunyai 7 input dan 2 output (hasil tebakan dan hasil kejujuran). Apabila program masih tidak sesuai dengan yang diminta, saya minta maaf.
}
PROGRAM T2_M_Galang_Rivaldo;
USES crt;
VAR
tebakan, l1, l2, l3, x1, x2, x3, x4, x5, x6, x7 : Integer;
BEGIN
    CLRSCR;
    Textcolor(14);
    WriteLn('Permainan Tebak Angka dan Kejujuran');
    WriteLn('');
    WriteLn('+---------------+-----------------------+');
    Write('| ');
    Textcolor(15);
    Write('Baris Pertama');
    Textcolor(14);
    Write(' | ');
    Textcolor(11);
    Write('8 9 10 11 12 13 14 15');
    Textcolor(14);
    WriteLn(' |');
    WriteLn('+---------------+-----------------------+');
    Write('| ');
    Textcolor(15);
    Write('Baris Kedua  ');
    Textcolor(14);
    Write(' | ');
    Textcolor(11);
    Write('4 5 6 7 12 13 14 15  ');
    Textcolor(14);
    WriteLn(' |');
    WriteLn('+---------------+-----------------------+');
    Write('| ');
    Textcolor(15);
    Write('Baris Ketiga ');
    Textcolor(14);
    Write(' | ');
    Textcolor(11);
    Write('2 3 6 7 10 11 14 15  ');
    Textcolor(14);
    WriteLn(' |');
    WriteLn('+---------------+-----------------------+');
    Write('| ');
    Textcolor(15);
    Write('Baris Keempat');
    Textcolor(14);
    Write(' | ');
    Textcolor(11);
    Write('1 3 5 7 9 11 13 15   ');
    Textcolor(14);
    WriteLn(' |');
    WriteLn('+---------------+-----------------------+');
    Write('| ');
    Textcolor(15);
    Write('Baris Kelima ');
    Textcolor(14);
    Write(' | ');
    Textcolor(11);
    Write('1 2 5 6 8 11 12 15   ');
    Textcolor(14);
    WriteLn(' |');
    WriteLn('+---------------+-----------------------+');
    Write('| ');
    Textcolor(15);
    Write('Baris Keenam ');
    Textcolor(14);
    Write(' | ');
    Textcolor(11);
    Write('1 2 4 7 9 10 12 15   ');
    Textcolor(14);
    WriteLn(' |');
    WriteLn('+---------------+-----------------------+');
    Write('| ');
    Textcolor(15);
    Write('Baris Ketujuh');
    Textcolor(14);
    Write(' | ');
    Textcolor(11);
    Write('1 3 4 6 8 10 13 15   ');
    Textcolor(14);
    WriteLn(' |');
    WriteLn('+---------------+-----------------------+');
    WriteLn('');
    Textcolor(7);
    WriteLn('=========================================');
    WriteLn('');
    Textcolor(15);
    WriteLn('Silahkan Anda pilih angka dari 1 sampai 15 !');
    WriteLn('');
    WriteLn('Program ini akan menebak angka yang Anda pilih');
    WriteLn('Jika angka Anda ada pada baris isikan dengan 1');
    WriteLn('Jika angka Anda tak ada pada baris isikan dengan 0');
    WriteLn('');
    Textcolor(14);
    WriteLn('Supaya lebih menarik');
    WriteLn('Anda boleh berbohong sekali di salah satu baris');
    WriteLn('');
    Textcolor(7);
    WriteLn('=========================================');
    Textcolor(15);
    writeLn('');
    Write('Cek Baris Pertama... ');
    Textcolor(11);
    Readln(x1);
    Textcolor(15);
    Write('Cek Baris Kedua... ');
    Textcolor(11);
    Readln(x2);
    Textcolor(15);
    Write('Cek Baris Ketiga... ');
    Textcolor(11);
    Readln(x3);
    Textcolor(15);
    Write('Cek Baris Keempat... ');
    Textcolor(11);
    Readln(x4);
    Textcolor(15);
    Write('Cek Baris Kelima... ');
    Textcolor(11);
    Readln(x5);
    Textcolor(15);
    Write('Cek Baris Keenam... ');
    Textcolor(11);
    Readln(x6);
    Textcolor(15);
    Write('Cek Baris Ketujuh... ');
    Textcolor(11);
    Readln(x7);
    Textcolor(11);
    Writeln('');
    Textcolor(7);
    WriteLn('=========================================');
    WriteLn('');
    Textcolor(14);
    WriteLn('Tekan Enter untuk Melihat Hasil Tebakan');
    readLn;
    Textcolor(7);
    WriteLn('=========================================');
    WriteLn('');
    Textcolor(15);
    {----------------Hasil Tebakan----------------------}
    begin
        {
            Disclaimer : Algoritma diadaptasi dari blog Pak Aleams Barra (aleamsbarra.com/category/aljabar-linear/)
        }
        l1 := x1 + x3 + x4 + x5; //set 1
        l2 := x1 + x2 + x4 + x7; //set 2
        l3 := x2 + x3 + x4 + x6; //set 3
        //tripel (l1, l2, l3) ada 8 kemungkinan
        //jika (l1,l2,l3)=(genap, genap, genap)(jujur)
        if((l1 mod 2 = 0) AND (l2 mod 2 = 0) AND (l3 mod 2 = 0)) then
            begin
                tebakan := (8*x1) + (4*x2) + (2*x3) + (1*x4); //biner ke desimal
                if(tebakan <> 0) then
                    begin
                        WriteLn('Angka yang Anda pilih adalah ',tebakan);
                        WriteLn('Bagus kamu jujur !');
                    end
                else
                    begin
                        WriteLn('Anda berbohong lebih dari sekali !');
                    end;
                //fixed
            end;
        
        //jika (l1,l2,l3)=(genap, ganjil, ganjil)(bohong)
        if((l1 mod 2 = 0) AND (l2 mod 2 = 1) AND (l3 mod 2 = 1)) then
            begin
                //fokus : x2
                if(x2 = 0) then
                    begin
                        x2 := x2 + 1;
                        tebakan := (8*x1) + (4*x2) + (2*x3) + (1*x4);
                        if(tebakan <> 0) then
                            begin
                                WriteLn('Angka yang Anda pilih adalah ',tebakan);
                                WriteLn('Anda telah berbohong pada baris ke 2');
                            end
                        else
                            begin
                                WriteLn('Anda berbohong lebih dari sekali !');
                            end;
                    end
                else if (x2 = 1) then
                    begin
                        x2 := x2-1;
                        tebakan := (8*x1) + (4*x2) + (2*x3) + (1*x4);
                        if(tebakan <> 0) then
                            begin
                                WriteLn('Angka yang Anda pilih adalah ',tebakan);
                                WriteLn('Anda telah berbohong pada baris ke 2');
                            end
                        else
                            begin
                                WriteLn('Anda berbohong lebih dari sekali !');
                            end;
                    end;
            end;
        
        //jika (l1,l2,l3)=(ganjil, genap, ganjil)(bohong)
        if((l1 mod 2 = 1) AND (l2 mod 2 = 0) AND (l3 mod 2 = 1)) then
            begin
                //fokus : x3
                if(x3 = 0) then
                    begin
                        x3 := x3 + 1;
                        tebakan := (8*x1) + (4*x2) + (2*x3) + (1*x4);
                        if(tebakan <> 0) then
                            begin
                                WriteLn('Angka yang Anda pilih adalah ',tebakan);
                                WriteLn('Anda telah berbohong pada baris ke 3');
                            end
                        else
                            begin
                                WriteLn('Anda berbohong lebih dari sekali !');
                            end;
                    end
                else if (x3 = 1) then
                    begin
                        x3 := x3-1;
                        tebakan := (8*x1) + (4*x2) + (2*x3) + (1*x4);
                        if(tebakan <> 0) then
                            begin
                                WriteLn('Angka yang Anda pilih adalah ',tebakan);
                                WriteLn('Anda telah berbohong pada baris ke 3');
                            end
                        else
                            begin
                                WriteLn('Anda berbohong lebih dari sekali !');
                            end;
                    end;
            end;

        //jika (l1,l2,l3)=(ganjil, ganjil, genap)(bohong)
        if((l1 mod 2 = 1) AND (l2 mod 2 = 1) AND (l3 mod 2 = 0)) then
            begin
                //fokus : x1
                if(x1 = 0) then
                    begin
                        x1 := x1 + 1;
                        tebakan := (8*x1) + (4*x2) + (2*x3) + (1*x4);
                        if(tebakan <> 0) then
                            begin
                                WriteLn('Angka yang Anda pilih adalah ',tebakan);
                                WriteLn('Anda telah berbohong pada baris ke 1');
                            end
                        else
                            begin
                                WriteLn('Anda berbohong lebih dari sekali !');
                            end;
                    end
                else if (x1 = 1) then
                    begin
                        x1 := x1-1;
                        tebakan := (8*x1) + (4*x2) + (2*x3) + (1*x4);
                        if(tebakan <> 0) then
                            begin
                                WriteLn('Angka yang Anda pilih adalah ',tebakan);
                                WriteLn('Anda telah berbohong pada baris ke 1');
                            end
                        else
                            begin
                                WriteLn('Anda berbohong lebih dari sekali !');
                            end;
                    end;
            end;
        //jika (l1,l2,l3)=(ganjil, genap, genap)(bohong)
        if((l1 mod 2 = 1) AND (l2 mod 2 = 0) AND (l3 mod 2 = 0)) then
            begin
                //fokus : x5
                tebakan := (8*x1) + (4*x2) + (2*x3) + (1*x4);
                if(tebakan <> 0) then
                    begin
                        WriteLn('Angka yang Anda pilih adalah ',tebakan);
                        WriteLn('Anda telah berbohong pada baris ke 5');
                    end
                else
                    begin
                        WriteLn('Anda berbohong lebih dari sekali !');
                    end;
            end;

        //jika (l1,l2,l3)=(genap, ganjil, genap)(bohong)
        if((l1 mod 2 = 0) AND (l2 mod 2 = 1) AND (l3 mod 2 = 0)) then
            begin
                //fokus : x7
                tebakan := (8*x1) + (4*x2) + (2*x3) + (1*x4);
                if(tebakan <> 0) then
                    begin
                        WriteLn('Angka yang Anda pilih adalah ',tebakan);
                        WriteLn('Anda telah berbohong pada baris ke 7');
                    end
                else
                    begin
                        WriteLn('Anda berbohong lebih dari sekali !');
                    end;
            end;

        //jika (l1,l2,l3)=(genap, genap, ganjil)(bohong)
        if((l1 mod 2 = 0) AND (l2 mod 2 = 0) AND (l3 mod 2 = 1)) then
            begin
                //fokus : x6
                tebakan := (8*x1) + (4*x2) + (2*x3) + (1*x4);
                if(tebakan <> 0) then
                    begin
                        WriteLn('Angka yang Anda pilih adalah ',tebakan);
                        WriteLn('Anda telah berbohong pada baris ke 6');
                    end
                else
                    begin
                        WriteLn('Anda berbohong lebih dari sekali !');
                    end;
            end;

        //jika (l1,l2,l3)=(ganjil, ganjil, ganjil)(bohong)
        if((l1 mod 2 = 1) AND (l2 mod 2 = 1) AND (l3 mod 2 = 1)) then
            begin
                //fokus : x4
                if(x4 = 0) then
                    begin
                        x4 := x4 + 1;
                        tebakan := (8*x1) + (4*x2) + (2*x3) + (1*x4);
                        if(tebakan <> 0) then
                            begin
                                WriteLn('Angka yang Anda pilih adalah ',tebakan);
                                WriteLn('Anda telah berbohong pada baris ke 4');
                            end
                        else
                            begin
                                WriteLn('Anda berbohong lebih dari sekali !');
                            end;
                    end
                else if (x4 = 1) then
                    begin
                        x4 := x4-1;
                        tebakan := (8*x1) + (4*x2) + (2*x3) + (1*x4);
                        if(tebakan <> 0) then
                            begin
                                WriteLn('Angka yang Anda pilih adalah ',tebakan);
                                WriteLn('Anda telah berbohong pada baris ke 4');
                            end
                        else
                            begin
                                WriteLn('Anda berbohong lebih dari sekali !');
                            end;
                    end;
            end;
    end;
    Textcolor(7);
    ReadLn;
    
END.