program hitung_jarak;
uses crt, math;
var
	jam0, menit0, detik0, t0: Integer; // waktu awal
	jamN, menitN, detikN, tn: Integer; // waktu akhir
	v0, vn, vs: Integer; // kecepatan & percepatan
	s, a, jamS, menitS: Real; // waktu selisih
	detikS, ts: Integer;
begin
	
	writeln('waktu awal');
	writeln('==========');
	write('jam: '); read(jam0);
	write('menit: '); read(menit0);
	write('detik: '); read(detik0);
	writeln('');
	writeln('waktu akhir');
	writeln('==========');
	write('jam: '); read(jamN);
	write('menit: '); read(menitN);
	write('detik: '); read(detikN);
	writeln('');
	writeln('');

	// selisih waktu tempuh
	t0 := jam0 * 60 * 60 + menit0 * 60 + detik0;
	tn := jamN * 60 * 60 + menitN * 60 + detikN;
	ts := tn - t0;


	// konversi selisih waktu ke jam, menit, dan detik
	jamS := ts / (60*60);
	menitS := ts / 60;
	while (menitS > 60) do
		menitS := menitS - 60;
	begin
		
	end;
	detikS := ts mod 60;

	// rumus percepatan
	// a = v2-v1/t2-t1
	
	// kecepatan akhir
	vn := floor(ts/600); // brp kali percepatan

	v0 := 5;
	vs := (vn+v0-1) - v0;
	a  := vs/ts;

	// rumus jarak GLBB
	// s = v0 * t + 1/2 * a * t^2
	s := (v0 * ts) + ((a * ts*ts)/2);
	
	// output
	// jam:menit:detik
	writeln('Waktu Tempuh:',floor(jamS),' jam ',floor(menitS),' menit ',detikS,' detik');
	writeln('Jarak Tempuh:',(s/1000):1:2,'Km');
end.