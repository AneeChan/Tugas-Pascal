PROGRAM Self_Check_Up_Covid_19;
{
    Credit : https://checkupcovid19.jatimprov.go.id
    Diadaptasi dari Self Assesment Covid-19 dari British Columbia, Kanada.
    Sumber data rumah sakit : kompas.com
    Author : M. Galang Rivaldo
    License : MIT License
}
USES crt;

FUNCTION hook(param : String) : String; forward;

VAR
    int_key : Integer;
    str_key : String;

FUNCTION self_check_up() : String;
    function step_check(data : Integer) : String; 
        begin
            case (data) of
            0 : begin
                    Textcolor(15);
                    WriteLn('Layanan ini berisikan beberapa pertanyaan');
                    WriteLn('untuk mengecek kondisi fisik Anda');
                    WriteLn('');
                end;
            1 : begin
                    Textcolor(14);
                    WriteLn('Pertanyaan 1');
                    Textcolor(15);
                    WriteLn('Apakah Anda mengalami salah satu dari yang berikut :');
                    WriteLn('-> Kesulitan bernafas yang parah (Bernafas dengan cepat atau berbicara dalam satu kata)');
                    WriteLn('-> Nyeri dada yang parah');
                    WriteLn('-> Sulit untuk bangun');
                    WriteLn('-> Merasa kebingungan');
                    WriteLn('-> Penurunan kesadaran');
                    WriteLn('');
                end;
            2 : begin
                    Textcolor(14);
                    WriteLn('Pertanyaan 2');
                    Textcolor(15);
                    WriteLn('Apakah Anda mengalami salah satu dari yang berikut :');
                    WriteLn('-> Nafas yang pendek saat istirahat');
                    WriteLn('-> Ketidakmampuan untuk berbaring karena kesulitan bernafas');
                    WriteLn('-> Kondisi kesehatan kronis yang anda alami dirasakan lebih berat karena kesulitan bernafas');
                    WriteLn('');
                end;
            3 : begin
                    Textcolor(14);
                    WriteLn('Pertanyaan 3');
                    Textcolor(15);
                    WriteLn('Apakah Anda mengalami salah satu dari yang berikut :');
                    WriteLn('-> Demam');
                    WriteLn('-> Bersin');
                    WriteLn('-> Batuk');
                    WriteLn('-> Sakit Tenggorokan');
                    WriteLn('-> Sulit Bernafas');
                    WriteLn('');
                end;
            4 : begin
                    Textcolor(14);
                    WriteLn('Pertanyaan 4');
                    Textcolor(15);
                    WriteLn('Apakah Anda pernah muncul gejala sekitar 14 hari setelah travelling ke luar negeri? (China, Italy, Iran, Korea Selatan, Prancis, Spanyol, Jerman, USA) atau ke kota terjangkit (Jakarta, Bali, Solo, Yogyakarta, Pontianak, Manado, Bandung dll)?');
                    WriteLn('');
                end;
            5 : begin
                    Textcolor(14);
                    WriteLn('Pertanyaan 5');
                    Textcolor(15);
                    WriteLn('Apakah Anda memberikan perawatan atau melakukan kontak dekat dengan seseorang dengan COVID-19 (kemungkinan atau dikonfirmasi) saat mereka sakit (batuk, demam, bersin, atau sakit tenggorokan)?');
                    WriteLn('');
                end;
            6 : begin
                    Textcolor(14);
                    WriteLn('Pertanyaan 6');
                    Textcolor(15);
                    WriteLn('Apakah Anda memiliki kontak dekat dengan seseorang yang bepergian ke luar Negeri dalam 14 hari terakhir yang menjadi sakit (batuk, demam, bersin, atau sakit tenggorokan)?');
                    WriteLn('');
                end;
            7 : begin
                    Textcolor(11);
                    WriteLn('Kesimpulan'); //baik
                    Textcolor(15);
                    WriteLn('Anda kemungkinan besar tidak terinfeksi oleh COVID-19. Namun, anda disarankan untuk tetap tinggal dirumah. Infeksi anda mungkin disebabkan oleh virus selain COVID-19, Oleh karena itu anda tidak perlu dites oleh COVID-19. Meskipun demikian, hindarilah keluar rumah jika memungkinkan. Penyakit anda akan sembuh sendiri dengan cukup makan dan istirahat. Apabila anda mengalami gejala atau mendapatkan informasi baru tentang perjalanan penyakit anda, anda bisa mencoba kembali aplikasi ini.');
                    WriteLn('');
                    hook('check_up');
                end;
            8 : begin
                    Textcolor(11);
                    WriteLn('Kesimpulan'); //kurang baik
                    Textcolor(15);
                    WriteLn('Sebagai tindakan pencegahan, apabila mengalami gejala (demam, batuk, bersin, sakit tenggorokan, atau sulit bernapas) untuk tinggal di rumah selama 14 hari untuk mencegah penyebaran. Anda disarankan untuk tidak keluar ke tempat publik, tinggal dirumah saja dan tidak boleh ada tamu. Penyakit anda ada kemungkinan sembuh sendiri dengan cukup makan dan istirahat. Anda disarankan call center COVID-19 di 117. Mohon Anda jangan berangkat ke UGD, Rumah sakit, atau klinik, kecuali kalau gejala anda semakin buruk segera pergi ke dokter terdekat.');
                    WriteLn('');
                    hook('check_up');
                end;
            9 : begin
                    Textcolor(11);
                    WriteLn('Kesimpulan'); //buruk
                    Textcolor(15);
                    WriteLn('Gejala-gejala ini membutuhkan perhatian segera. Anda harus segera menelpon Rumah Sakit Terdekat, atau langsung pergi ke instalasi gawat darurat terdekat');
                    WriteLn('');
                    hook('check_up');
                end;
            end;
        end;
    
    function yes_or_no(y_do, n_do : Integer) : String;
        begin
            Textcolor(15);
            Write('Silahkan jawab (Y/n) : ');
            Textcolor(11);
            ReadLn(str_key);
            WriteLn('');
            if ((str_key = 'Y') or (str_key = 'y')) then
                begin
                    step_check(y_do);
                end
            else if ((str_key = 'N') or (str_key = 'n')) then
                begin
                    step_check(n_do);
                end
            else
                begin
                    Textcolor(14);
                    WriteLn('Mohon masukkan jawaban dengan benar !');
                    yes_or_no(y_do, n_do);
                end;
        end;
    
    begin
        step_check(0);
        step_check(1);
        yes_or_no(9,2);
        yes_or_no(9,3);
        yes_or_no(4,4);
        yes_or_no(8,5);
        yes_or_no(8,6);
        yes_or_no(8,7);
    end;

FUNCTION hospitals_info() : String;
    begin
        Textcolor(15);
        WriteLn('Silahkan isi pertanyaan berikut untuk');
        WriteLn('mencari rumah sakit rujukan terdekat');
        WriteLn('');
        Textcolor(14);
        WriteLn('Pertanyaan :');
        Textcolor(15);
        WriteLn('Pilih kabupaten atau kota terdekat :');
        Textcolor(11);
        Write('1');
        Textcolor(15);
        WriteLn(' Kab. Pekalongan');
        Textcolor(11);
        Write('2');
        Textcolor(15);
        WriteLn(' Kota Pekalongan');
        Textcolor(11);
        Write('3');
        Textcolor(15);
        WriteLn(' Kab. Batang');
        Textcolor(11);
        Write('4');
        Textcolor(15);
        WriteLn(' Kab. Tegal');
        Textcolor(11);
        Write('5');
        Textcolor(15);
        WriteLn(' Kota Tegal');
        Textcolor(11);
        Write('6');
        Textcolor(15);
        WriteLn(' Kab. Brebes');
        Textcolor(11);
        Write('7');
        Textcolor(15);
        WriteLn(' Kab. Pemalang');
        writeLn('');
        Write('Pilih lokasi terdekat... ');
        Textcolor(11);
        Readln(int_key);
        Textcolor(7);
        WriteLn('');
        WriteLn('=========================================');
        writeLn('');
        Textcolor(14);
        WriteLn('Tekan enter untuk mulai mencari... ');
        Textcolor(7);
        ReadLn;
        WriteLn('=========================================');
        WriteLn('');
        Textcolor(14);
        WriteLn('Berikut rumah sakit rujukan terdekat :');
        case (int_key) of
            1 : begin
                    Textcolor(15);
                    WriteLn('-> RSUD Kraton, Kabupaten Pekalongan.');
                    Textcolor(11);
                    WriteLn('   Telepon: (0285) 421621');
                    Textcolor(15);
                    WriteLn('-> RSUD Kajen, Kabupaten Pekalongan.');
                    Textcolor(11);
                    WriteLn('   Telepon: (0285) 385231');
                    WriteLn('');
                    hook('search_hospitals');
                end;
            2 : begin
                    Textcolor(15);
                    WriteLn('-> RSUD Bendan, Kota Pekalongan.');
                    Textcolor(11);
                    WriteLn('   Telepon: (0285) 437222');
                    WriteLn('');
                    hook('search_hospitals');
                end;
            3 : begin
                    Textcolor(15);
                    WriteLn('-> RSUD Batang.');
                    Textcolor(11);
                    WriteLn('   Telepon: (0285) 4493034');
                    WriteLn('');
                    hook('search_hospitals');
                end;
            4 : begin
                    Textcolor(15);
                    WriteLn('-> RSUD Dr H RM Soeselo, Slawi, Kabupaten Tegal.');
                    Textcolor(11);
                    WriteLn('   Telepon: (0283) 491016');
                    WriteLn('');
                    hook('search_hospitals');
                end;
            5 : begin
                    Textcolor(15);
                    WriteLn('-> RSUD Kardinah, Tegal.');
                    Textcolor(11);
                    WriteLn('   Telepon: (0283) 350377');
                    Textcolor(15);
                    WriteLn('-> RSU Islam Harapan Anda, Kota Tegal.');
                    Textcolor(11);
                    WriteLn('   Telepon: (0283) 358244');
                    WriteLn('');
                    hook('search_hospitals');
                end;
            6 : begin
                    Textcolor(15);
                    WriteLn('-> RSUD Brebes.');
                    Textcolor(11);
                    WriteLn('   Telepon: (0283) 671431');
                    WriteLn('');
                    hook('search_hospitals');
                end;
            7 : begin
                    Textcolor(15);
                    WriteLn('-> RSUD Dr M Ashari, Pemalang.');
                    Textcolor(11);
                    WriteLn('   Telepon: (0284) 321614');
                    WriteLn('');
                    hook('search_hospitals');
                end;
        end;

    end;

FUNCTION main_menu() : String; //public function
    begin
        Textcolor(14);
        WriteLn('Daftar Menu Utama Tanggap Corona');
        WriteLn('');
        Textcolor(7);
        WriteLn('=========================================');
        Textcolor(14);
        WriteLn('');
        WriteLn('+---+-----------------------------------+');
        Write('| ');
        Textcolor(15);
        Write('1');
        Textcolor(14);
        Write(' | ');
        Textcolor(11);
        Write('Cek Kondisi Anda Sekarang        ');
        Textcolor(14);
        WriteLn(' |');
        WriteLn('+---+-----------------------------------+');
        Write('| ');
        Textcolor(15);
        Write('2');
        Textcolor(14);
        Write(' | ');
        Textcolor(11);
        Write('Cari Rumah Sakit Rujukan Terdekat');
        Textcolor(14);
        WriteLn(' |');
        WriteLn('+---+-----------------------------------+');
        Textcolor(15);
        writeLn('');
        Write('Pilih menu yang ingin digunakan... ');
        Textcolor(11);
        Readln(int_key);
        Textcolor(7);
        WriteLn('');
        WriteLn('=========================================');
        WriteLn('');
        
        case (int_key) of
            1 : self_check_up();
            2 : hospitals_info();
        end;
    end;

FUNCTION hook(param : String) : String;
    begin
        Textcolor(7);
        WriteLn('=========================================');
        Textcolor(14);
        WriteLn('');
        WriteLn('Untuk melanjutkan, silahkan pilih :');
        Textcolor(11);
        Write('1');
        Textcolor(15);
        if (param = 'check_up') then
            begin
                WriteLn(' Self checkup lagi');
            end
        else if (param = 'search_hospitals') then
            begin
                WriteLn(' Cari rumah sakit lagi');
            end;
        Textcolor(11);
        Write('2');
        Textcolor(15);
        WriteLn(' Kembali ke menu utama');
        Textcolor(15);
        writeLn('');
        Write('Pilih menu yang ingin digunakan... ');
        Textcolor(11);
        Readln(int_key);
        Textcolor(7);
        WriteLn('');
        WriteLn('=========================================');
        WriteLn('');

        case (int_key) of
            1 : begin
                    if (param = 'check_up') then
                        begin
                            self_check_up();
                        end
                    else if (param = 'search_hospitals') then
                        begin
                            hospitals_info();
                        end;
                end;
            2 : main_menu();
        end;
    end;
BEGIN
    CLRSCR;
    main_menu();
END.