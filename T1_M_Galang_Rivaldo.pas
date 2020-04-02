{
    Nama : Mochammad Galang Rivaldo
    NPM : 0718011631
}
PROGRAM T1_M_Galang_Rivaldo;
// USES crt; //jika error dapat diganti dgn wincrt.
VAR 
i, l_usia, l_profesi, l_hobi, l_nama : Integer;
tr, nama, usia, profesi, hobi : String;
BEGIN
    CLRSCR;
    WriteLn('                           ,____________.');
    WriteLn('        MM.         .MM    |            |');
    Write('        "MM._______.MM"    |    ');
    Textcolor(14);
    Write('Tamu');
    Textcolor(7);
    WriteLn('    |');
    Write('        /             \    |    ');
    Textcolor(14);
    Write('Wajib');
    Textcolor(7);
    WriteLn('   |');
    Write('      /   dMMb   dMMb   \  |   ');
    Textcolor(14);
    Write('Lapor !');
    Textcolor(7);
    WriteLn('  |');
    WriteLn('     /  dM"""Mb dM"""Mb  \ |____________|');
    WriteLn('    |   MMMMM"/O\"MMMMM   |      ||o     ');
    WriteLn('    |   "MMM"/   \"MMM"   |   .dMMM 8    ');
    WriteLn('    |                     dMMMMMMMM      ');
    WriteLn('    \      \       /     dMMMMMMMP       ');
    WriteLn('  AMMMMMMMMM\_____/MMMMMMMMMMMM"         ');
    WriteLn('=========================================');
    WriteLn('');
    Textcolor(14);
    WriteLn('Anda harus lapor u/ melanjutkan program !');
    WriteLn('');
    Textcolor(7);
    WriteLn('=========================================');
    Textcolor(15);
    writeLn('');
    Write('Masukkan Nama Anda... ');
    Textcolor(11);
    Readln(nama);
    Textcolor(15);
    Write('Masukkan Usia Anda... ');
    Textcolor(11);
    Readln(usia);
    Textcolor(15);
    Write('Masukkan Profesi Anda... ');
    Textcolor(11);
    Readln(profesi);
    Textcolor(15);
    Write('Masukkan Hobi Anda... ');
    Textcolor(11);
    Readln(hobi);
    Textcolor(11);
    Writeln('');
    Textcolor(7);
    WriteLn('=========================================');
    WriteLn('');
    Textcolor(14);
    WriteLn('Tekan Enter untuk Membuat Tabel Data Diri');
    readLn;
    Textcolor(7);
    WriteLn('=========================================');
    WriteLn('');
    {----------------Tabel Responsif----------------------}
    begin
        l_nama := Length(nama);
        l_profesi := Length(profesi);
        l_hobi := Length(hobi);
        l_usia := Length(usia);

        //margin atas (kolom nama)
        if (l_nama > 4) then
            begin
                tr := '+'; //corner
                i := 0;
                repeat
                    tr := tr + '-';
                    i := i + 1;
                until i = l_nama + 2; //padding kiri & kanan 2
                tr := tr + '+';
            end
        else
            begin
                tr := tr + '+';
                i := 0;
                repeat
                    tr := tr + '-';
                    i := i + 1;
                until i = 4 + 2; //normal
                tr := tr + '+';
            end;

        //margin atas (kolom Usia)
        if (l_usia > 4) then
            begin
                i := 0;
                repeat
                    tr := tr + '-';
                    i := i + 1;
                until i = l_usia + 2; //padding kiri & kanan 2
                tr := tr + '+';
            end
        else
            begin
                i := 0;
                repeat
                    tr := tr + '-';
                    i := i + 1;
                until i = 4 + 2; //normal
                tr := tr + '+';
            end;
        
        //margin atas (kolom Hobi)
        if (l_hobi > 4) then
            begin
                i := 0;
                repeat
                    tr := tr + '-';
                    i := i + 1;
                until i = l_hobi + 2; //padding kiri & kanan 2
                tr := tr + '+';
            end
        else
            begin
                i := 0;
                repeat
                    tr := tr + '-';
                    i := i + 1;
                until i = 4 + 2; //normal
                tr := tr + '+';
            end;

        //margin atas (kolom Profesi)
        if (l_profesi > 7) then
            begin
                i := 0;
                repeat
                    tr := tr + '-';
                    i := i + 1;
                until i = l_profesi + 2; //padding kiri & kanan 2
                tr := tr + '+';
            end
        else
            begin
                i := 0;
                repeat
                    tr := tr + '-';
                    i := i + 1;
                until i = 7 + 2; //normal
                tr := tr + '+'; //pindah baris
            end;
        
        Textcolor(14);
        WriteLn(tr); //tampilkan

        {--------------Baris Pertama -----------}
        //baris pertama (judul kolom Nama)
        if (l_nama > 4) then
            begin
                write('| ');//padding kiri');
                Textcolor(15);
                write('Nama');
                Textcolor(14);
                i := 0;
                if(l_nama <> 4) then //jika l_nama = 4 (nothing)
                    begin
                        repeat
                            write(' ');
                            i := i + 1;
                        until i = l_nama - 4;
                    end;
                write(' |');
            end
        else
            begin
                write('| ');
                Textcolor(15);
                write('Nama');
                Textcolor(14);
                write(' |'); //normal
            end;
        
        //baris pertama (judul kolom Usia)
        if (l_usia > 4) then
            begin
                Textcolor(15);
                write(' Usia');//padding kiri;
                Textcolor(14);
                i := 0;
                if(l_usia <> 4) then //jika l_usia = 4 (nothing)
                    begin
                        repeat
                            write(' ');
                            i := i + 1;
                        until i = l_usia - 4;
                    end;
                write(' |');
            end
        else
            begin
                Textcolor(15);
                write(' Usia');
                Textcolor(14);
                write(' |'); //normal
            end;

         //baris pertama (judul kolom Hobi)
        if (l_hobi > 4) then
            begin
                Textcolor(15);
                write(' Hobi');//padding kiri;
                Textcolor(14);
                i := 0;
                if(l_hobi <> 4) then //jika l_hobi = 4 (nothing)
                    begin
                        repeat
                            write(' ');
                            i := i + 1;
                        until i = l_hobi - 4;
                    end;
                write(' |');
            end
        else
            begin
                Textcolor(15);
                write(' Hobi');
                Textcolor(14);
                write(' |'); //normal
            end;
        
         //baris pertama (judul kolom Profesi)
        if (l_profesi > 7) then
            begin
                Textcolor(15);
                write(' Profesi');//padding kiri;
                Textcolor(14);
                i := 0;
                if(l_profesi <> 7) then //jika l_profesi = 7 (nothing)
                    begin
                        repeat
                            write(' ');
                            i := i + 1;
                        until i = l_profesi - 7;
                    end;
                writeLn(' |');
            end
        else
            begin
                Textcolor(15);
                write(' Profesi');
                Textcolor(14);
                writeLn(' |'); //normal
            end;

        {-------------- Margin Tengah -----------}
        WriteLn(tr);

        {-------------- Baris Kedua -----------}

        //baris 2 kolom nama
        if (l_nama > 4) then
            begin
                write('| ');
                Textcolor(11);
                write(nama);
                Textcolor(14);
                write(' |');//normal
            end
        else
            begin
                write('| ');
                Textcolor(11);
                write(nama);
                Textcolor(14);
                i := 0;
                if(l_nama <> 4) then //jika l_nama = 4 (nothing)
                    begin
                        repeat
                            write(' ');
                            i := i + 1;
                        until i = 4 - l_nama;
                    end;
                write(' |');
            end;
            
        //baris 2 kolom Usia
        if (l_usia > 4) then
            begin
                write(' ');
                Textcolor(11);
                write(usia);
                Textcolor(14);
                write(' |');//normal
            end
        else
            begin
                write(' ');
                Textcolor(11);
                write(usia);
                Textcolor(14);
                i := 0;
                if(l_usia <> 4) then //jika l_usia = 4 (nothing)
                    begin
                        repeat
                            write(' ');
                            i := i + 1;
                        until i = 4 - l_usia;
                    end;
                write(' |');
            end;

        //baris 2 kolom hobi
        if (l_hobi > 4) then
            begin
                write(' ');
                Textcolor(11);
                write(hobi);
                Textcolor(14);
                write(' |');//normal
            end
        else
            begin
                write(' ');
                Textcolor(11);
                write(hobi);
                Textcolor(14);
                i := 0;
                if(l_hobi <> 4) then //jika l_hobi = 4 (nothing)
                    begin
                        repeat
                            write(' ');
                            i := i + 1;
                        until i = 4 - l_hobi;
                    end;
                write(' |');
            end;

        //baris 2 kolom profesi
        if (l_profesi > 7) then
            begin
                write(' ');
                Textcolor(11);
                write(profesi);
                Textcolor(14);
                writeLn(' |');//normal
            end
        else
            begin
                write(' ');
                Textcolor(11);
                write(profesi);
                Textcolor(14);
                i := 0;
                if(l_profesi <> 7) then //jika l_profesi = 7 (nothing)
                    begin
                        repeat
                            write(' ');
                            i := i + 1;
                        until i = 7 - l_profesi;
                    end;
                writeln(' |');
            end;

        {-------------- Margin Bawah -----------}
        WriteLn(tr);
        Textcolor(7); //normal

    end;
    
    readLn;
END.