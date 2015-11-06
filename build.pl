#!/usr/bin/env perl
#############################################################################
##
##      File      : build.pl
##      Copyright : (c) David Harley 2010
##      Project   : qtHaskell
##      Version   : 1.1.4
##      Modified  : 2010-09-02 17:01:40
##
##      Warning   : this file is machine generated - do not modify.
##
#############################################################################

sub usage {
	print "usage: perl build.pl [options]\n";
	print "options:\n";
	print "  -c, [--[(only|no)-]]cpp           enable/disable all cpp processing\n";
	print "  -h, [--[(only|no)-]](haskell|hsk) enable/disable all haskell processing\n";
	print "  -q, [--[(only|no)-]]qmake         enable/disable qmake phase of cpp processing\n";
	print "  -m, [--[(only|no)-]](cpp-|c)make  enable/disable make phase of cpp processing\n";
	print "  -f, [--[(only|no)-]]configure     enable/disable cabal configure phase of haskell processing\n";
	print "  -b, [--[(only|no)-]]build         enable/disable cabal build phase of haskell processing\n";
	print "  -i, [--[(only|no)-]]install       enable/disable install phase of both cpp and haskell processing\n";
	print "  -y, [--[(only|no)-]](cpp-|c)install\n";
  print "                                    enable/disable install phase of cpp processing\n";
	print "  -z, [--[(only|no)-]]((haskell|hsk)-|h)install\n";
  print "                                    enable/disable cabal install phase of haskell processing\n";
	print "  -s, [--[(only|no)-]]samples       enable/disable all sample code processing\n";
	print "  -e, [--[(only|no)-]]examples      enable/disable example code processing\n";
	print "  -d, [--[(only|no)-]]demos         enable/disable demo code processing\n";
	print "  -x, [--[(only|no)-]]extra-pkgs    enable/disable all extra package code processing\n";
	print "  -r, [--[(only|no)-]](extra-pkgs-|x)configure\n";
  print "                                    enable/disable all extra package cabal configure phase\n";
	print "  -u, [--[(only|no)-]](extra-pkgs-|x)build\n";
  print "                                    enable/disable all extra package cabal build phase\n";
	print "  -w, [--[(only|no)-]](extra-pkgs-|x)install\n";
  print "                                    enable/disable all extra package cabal install phase\n";
	print "  -p, [--[(only|no)-]](extra-pkgs-|x)samples\n";
  print "                                    enable/disable all extra package sample code processing\n";
	print "  -l, [--[(only|no)-]](extra-pkgs-|x)examples\n";
  print "                                    enable/disable all extra package example code processing\n";
	print "  -o, [--[(only|no)-]](extra-pkgs-|x)demos\n";
  print "                                    enable/disable all extra package demo code processing\n";
	print "  [--[(only|no)-]]cpp-clean         enable/disable cpp cleaning\n";
	print "  [--[(only|no)-]](haskell|hsk)-clean\n";
  print "                                    enable/disable haskell cleaning\n";
	print "  [--[(only|no)-]]samples-clean     enable/disable samples cleaning\n";
	print "  [--[(only|no)-]]examples-clean    enable/disable examples cleaning\n";
	print "  [--[(only|no)-]]demos-clean       enable/disable demos cleaning\n";
	print "  [--[(only|no)-]]extra-pkgs-clean\n";
  print "                                    enable/disable cleaning of all phases of extra package code\n";
  print "  [--[(only|no)-]](extra-pkgs-|x)build-clean\n";
  print "                                    enable/disable cleaning of cabal build phase of extra package code\n";
  print "  [--[(only|no)-]](extra-pkgs-|x)samples-clean\n";
  print "                                    enable/disable cleaning of all extra package samples code\n";
  print "  [--[(only|no)-]](extra-pkgs-|x)examples-clean\n";
  print "                                    enable/disable cleaning of all extra package examples code\n";
  print "  [--[(only|no)-]](extra-pkgs-|x)demos-clean\n";
  print "                                    enable/disable cleaning of all extra package demo code\n";
	print "  [--[(only|no)-]](extra-pkgs=packagename[options][,packagename[options]]+\n";
  print "                                    sets above options for extra packages on a per package basis (using single letter sequences)\n";
	print "  -j[[ ]jobs], --jobs=jobs          set j/jobs option for makefile processing in all phases\n";
	print "  -jc[[ ]jobs], --(cpp-|c)jobs=jobs\n";
  print "                                    set j/jobs option for makefile processing in cpp build phase\n";
	print "  -jh[[ ]jobs], --((haskell|hsk)-|h)jobs=jobs\n";
  print "                                    set j/jobs option for makefile processing in haskell build phase\n";
	print "  -v[[ ]level], --verbose=level     set verbosity level in all phases\n";
	print "  -vc[[ ]level], --(cpp-|c)verbose=level\n";
  print "                                    set verbosity level in cpp phase\n";
	print "  -vh[[ ]level], --((haskell|hsk)-|h)verbose=level\n";
  print "                                    set verbosity level in haskell phase\n";
	print "  --[no-]sudo                       enable/disable sudo command for cpp and haskell install phases on non-windows systems. Enabled by default\n";
	print "  --[no-]cpp-sudo                   enable/disable sudo command for cpp install phase on non-windows systems. Enabled by default\n";
	print "  --[no-](haskell|hsl)-sudo         enable/disable sudo command for haskell install phase on non-windows systems. Enabled by default unless --user flag is enabled\n";
	print "  --[no-]ldconfig                   enable/disable ldconfig command for cpp and install phases on non-windows systems. Enabled by default\n";
	print "  --[no-]user                       enable/disable --user flag for haskell cabal configure command. Disabled by default\n";
  print "  --(disable|enable)-shared         enable/disable build of dynamic linking package (currently linux only). Disabled by default\n";
  print "  --(disable|enable)-ld             enable/disable full ld build on windows (disabled by default as very slow)\n";
  print "  --[no-](extra-|x)ld-opt=ldoption  sets extra ld option to pass to haskell build makefile\n";
  print "Notes: All configure, build and install phases are enabled by default.\n";
  print "       The first phase control flag encountered, if not prefixed by \"--no-,\n";
  print "       -- or -n in a single letter sequence\" will negate all other phase\n";
  print "       control flags.\n";
  print "       Similarly a phase control flag prefixed by \"--only-\" will negate\n";
  print "       all other phase control flags whenever it is encountered.\n";
  print "       Single letter phase control flags can be combined into one sequence.\n";
  print "Examples:\n";
  print "       build demos - will only build demo programs.\n";
  print "       build -d or build --only-demos - will also only build demo programs.\n";
  print "       build -nd or build --no-demos - will build everything except demo programs.\n";
  print "       build -ncs will disable all cpp and sample code phases.\n";
}

if ($ARGV[0] eq "--help") {
	usage;
  exit;
}

use Cwd;
use File::Copy;
use feature switch;

my $iswin = ($^O eq "MSWin32") ? 1 : 0;
my $islinux = ($^O ne "MSWin32") ? 1 : 0;
my $ismacos = (($^O eq "MacOS") || ($^O eq "rhapsody") || ($^O eq "darwin")) ? 1 : 0;

my $gvl = 1;
my $cgvl = 1;
my $hgvl = 1;
my $in_cpp = 0;
my $in_hsk = 0;
my $qhc = "";
my $cj = "";
my $hj = "";
my %xp = ();
my $ep = "extra-pkgs";
my $xpu = 1;
my $xp_no = 0b0111111111;
my $xp_na = 0b1011111111;
my $xp_nc = 0b1101111111;
my $xp_nb = 0b1110111111;
my $xp_ni = 0b1111011111;
my $xp_ne = 0b1111101111;
my $xp_nd = 0b1111110111;
my $xp_ncc = 0b1111111011;
my $xp_nce = 0b1111111101;
my $xp_ncd = 0b1111111110;
my $xp_o = 0b1000000000;
my $xp_a = 0b0100000000;
my $xp_c = 0b0010000000;
my $xp_b = 0b0001000000;
my $xp_i = 0b0000100000;
my $xp_e = 0b0000010000;
my $xp_d = 0b0000001000;
my $xp_cc = 0b0000000100;
my $xp_ce = 0b0000000010;
my $xp_cd = 0b0000000001;
my $in_xp = 0;
my @xsl = ();
my $cfusr = "";

sub pv {
	my ($vl, $ps) = @_;
	if (((not $in_cpp) || (($gvl >= $vl) && ($cgvl == -1)) || ($cgvl >= $vl)) && ((not $in_hsk) || (($gvl >= $vl) && ($hgvl == -1)) || ($hgvl >= $vl))) {
		print "$ps\n";
	}
}

sub sys_ds {
	my ($cds) = @_;
	if ($iswin) {
		$cds =~ s/\//\\/g;
	}
	pv(2, $cds);
	system ($cds) == 0 or die "$cds: $!\n";
}

sub sys_ds_pmf {
	my ($mk, $mk612, $xld, $hp, $hpv, $vogl, $vbse, $vh98, $vw, $way, $ar, $ld, $clean) = @_;
  my $cfuyn = $cfusr eq "--user" ? "" : "-no-user-package-conf";
	sys_ds "$mk$hj -f $mk612 CFUSR=$cfuyn EXTRA_LD_OPTS=$xld GHC=$hp GHC_VERSION=$hpv OpenGL_VERSION=$vogl base_VERSION=$vbse haskell98_VERSION=$vh98 VANILLA_WAY=$vw $way AR=$ar LD=$ld $clean";
}

sub cbtod {
	my ($rv, $btc) = @_;
	chomp ($$rv = `$btc`) or die "$btc $!\n";
}

sub cdod {
	my ($nd) = @_;
	chdir "$nd" or die "can't change to directory $nd: $!\n";
}

sub cdup {
	chdir ".." or die "..: $!\n";
}

sub od_ds {
	my ($dh, $ds) = @_;
	opendir ($$dh, $ds) or die "can't opendir $ds: $!\n";
}

sub ul_ds {
	my ($fn) = @_;
	if (-e $fn) {unlink $fn or die "can't unlink $fn: $!\n"}
}

sub qbe {
	my ($dr, $dn) = @_;
	$dn = defined $dn ? $dn : $dr;
	od_ds \my $dh, $dr;
	my @hs = grep { s/(.*)\.hs/$1/ } readdir($dh);
	closedir $dh;
	cdod $dr;
	if ($#hs >= 0) {
		print "building $dn for qt-1.1.4\n";
		foreach (sort @hs) {
			print "\. $_\n";
			sys_ds("$qhc $_ -v0");
		}
	}
	cdup;
}

sub qbex {
	my ($d1, $d2) = @_;
	if (-d "$d1/$d2") {
		cdod $d1;
		qbe "$d2","$d1/$d2";
		cdup;
	}
}

sub cln_hsa {
	my ($dr) = @_;
	od_ds \my $dh, $dr;
	my @hs = grep { s/(.*)\.hs/$1/} readdir($dh);
	closedir $dh;
	cdod $dr;
	foreach (@hs) {
		if ($iswin) {
			ul_ds "$_.exe";
		} else {
			ul_ds $_;
		}
		ul_ds "$_.hi";
		ul_ds "$_.o";
	}
	cdup;
}

sub cln_dsa {
	my ($dr) = @_;
	cln_hsa $dr;
	od_ds \my $dh, $dr;
	my @ds = grep { /^[^.].*/ && -d "$dr/$_" && (not exists $xp{$_})} readdir($dh);
	closedir $dh;
	cdod $dr;
	foreach my $ccd (@ds) {
		cln_dsa($ccd);
	}
	cdup;
}

sub cln_dsax {
	my ($d1, $d2) = @_;
	if (-d "$d1/$d2") {
		cdod $d1;
		cln_dsa $d2;
		cdup;
	}
}

my $isdynos = $islinux ? 1 : 0;
my $sudo = "sudo";
my $sudoc = not $iswin;
my $cppsudoc = not $iswin;
my $hsksudoc= -1;
my $cppsudo = "";
my $hsksudo = "";
my $ldconfig = ($iswin || $ismacos) ? "" : "ldconfig";
my $cd = getcwd; $cd =~ s/\//\\/g if $iswin;
my $cdir = "qws";
my $rgSu = "cabal";
my $cfn = "qt\.cabal";
my $winmk = "mingw32-make";
my $lingmk = "gmake";
my $linmk = "make";
my $mk = "";
my $mk612 = "";
my $mk612d = "";
if ($iswin) {
	my @makeversion = split /\n/, `$winmk --version 2>&1`;
	if ($makeversion[0] =~ m/^GNU Make \d+\.\d+$/) {
		$mk = $winmk;
	}
	else { die "$winmk not found" }
	$mk612 = "Makefile_612px_MSWin32";
}
else {
	my @makeversion = split /\n/, `$lingmk --version 2>&1`;
	if ($makeversion[0] =~ m/^GNU Make \d+\.\d+$/) {
		$mk = $lingmk;
	}
	else {
		@makeversion = split/\n/, `$linmk --version 2>&1`;
    print "$makeversion[0]\n";
		if ($makeversion[0] =~ m/^(.+)ake \d+\.\d+$/) {
			$mk = $linmk;
		}
		else { die "neither $lingmk nor $linmk found" }
	}
	$mk612 = "Makefile_612px";
	$mk612d = "Makefile_612pxd";
}
my $ghc = "ghc";
my $ghcv = "";
my $ghcmv = "";
my $ghcsv = "";
my $ghcdv = 0;
my $ghcfv = 0;
my @ghcversion = split /\n/, `$ghc --version 2>&1`;
if ($ghcversion[0] =~ m/^The Glorious Glasgow Haskell Compilation System, version ((\d+)\.(\d+)\.\d+)$/) {
	$ghcv = $1;
	$ghcmv = $2;
	$ghcsv = $3;
	die "$ghc version $ghcv too old" if (($ghcmv < 6) || (($ghcmv == 6) && ($ghcsv < 8)));
	$ghcdv = (($ghcmv >= 6) && ($ghcsv >= 12)) ? 1 : 0;
	$ghcfv = (($ghcmv >= 6) && ($ghcsv < 12)) ? 1 : 0;
}
else { die "$ghc not found" };
my $ghclib = `$ghc --print-libdir`;
if ($ghclib =~ m/(.*)lib$/) {
	$ghclib = $1;
} else {
	$ghclib = "";
}
my $ghcmng = "";
my $mngbd = "mingw\\bin";
my $are = "ar.exe";
my $lde = "ld.exe";
my $mngar = "ar";
my $mngld = "ld";
if ($iswin && not $ghcfv) {
	if (not -d $ghclib) {die "$ghclib not found: $!\n"};
	$ghcmng = $ghclib . $mngbd;
	if (not -d $ghcmng) {die "$ghcmng not found: $!\n"};
	$mngar = $ghcmng . "\\" . $are;
	if (not -e $mngar) {die "$mngar not found: $!\n"};
	$mngld = $ghcmng . "\\" . $lde;
	if (not -e $mngld) {die "$mngld not found: $!\n"};
}
my $hp = "ghc";
if ($islinux) {cbtod \$hp, "which ghc"}
my $rgfSu = $rgSu; $rgfSu =~ s/runghc/runghc -f $hp/;
cbtod \my $hpv, "cabal exec -- ghc --numeric-version";
cbtod \my $vogl, "cabal exec -- ghc-pkg latest OpenGL";
cbtod \my $vbse, "cabal exec -- ghc-pkg latest base";
cbtod \my $vh98, "cabal exec -- ghc-pkg latest haskell98";
if ($iswin) {
	my $eld = "Extra-lib-dirs";
	open(CFH, '<', $cfn) or die "$cfn not found";
	my @cls = <CFH>;
	close CFH;
	if ($cls[$#cls] !~ m/^$eld: .*/) {
		open(CFH, ">>", $cfn) or die "$cfn not found";
		print CFH "$eld: $cd\\$cdir\\bin\n";
		close CFH;
	}
}

if ($iswin) {
	$ENV{PATH} = "$cd\\qws\\bin;$cd\\bin;" . $ENV{PATH};
	$qhc = "call qhcc";
} else {
	$qhc = "$cd/bin/qhc";
}

sub get_xps {
	my $dr = "$cd/$ep";
	od_ds \my $dh, $dr;
	my @ds = grep { /^[A-Z].*/ && -d "$dr/$_" } readdir($dh);
	closedir $dh;
	foreach my $ccd (@ds) {
		$xp{$ccd} = 0b1000000000;
	}
}

get_xps;


my $cpp = 1;
my $hsk = 1;
my $xxx = 1;
my $qmk = 1;
my $spec = $ismacos ? "-spec macx-g++" : "";
my $cmk = 1;
my $cin = 1;
my $dst = "";
my $vs = 0;
my $cvs = 0;
my $hvs = 0;
my $tgvl = 1;
my $tcgvl = -1;
my $thgvl = -1;
my $jt1 = "";
my $jt2 = "";
my $cjt1 = "";
my $cjt2 = "";
my $hjt1 = "";
my $hjt2 = "";
my $con = 1;
my $bld = 1;
my $hin = 1;
my $ins = 1;
my $rs = 0;
my $rsp = "";
my $rx = 1;
my $rxx = 1;
my $rd = 1;
my $rxp = 1;
my $cln = 0;
my $ccln = 0;
my $hcln = 0;
my $bcln = 0;
my $ecln = 0;
my $eecln = 0;
my $dcln = 0;
my $xcln = 0;
my $only = 0;
my $ssonly = 1;
my $sxonly = 1;
my $rxw = 1;
my $rxu = 1;
my $rxr = 1;
my $rxe = 1;
my $rxd = 1;
my $rxc = 0;
my $rxcd = 0;
my $rxce = 0;
my $weld = 0;
my $weld = 0;
my $xld = $ismacos ? "'-arch x86_64'" : "";

my %kwh =	(	"c" => "cpp",
							"h" => "haskell",
							"q" => "qmake",
							"m" => "cmake",
							"M" => "cpp-clean",
							"y" => "cinstall",
							"f" => "configure",
							"b" => "build",
							"B" => "haskell-clean",
							"z" => "hinstall",
							"i" => "install",
							"s" => "samples",
							"S" => "samples-clean",
							"e" => "examples",
							"E" => "examples-clean",
							"d" => "demos",
							"D" => "demos-clean",
							"x" => "extra-pkgs",
							"X" => "extra-pkgs-clean",
							"w" => "xinstall",
							"u" => "xbuild",
							"U" => "xbuild-clean",
							"r" => "xconfigure",
							"p" => "xsamples",
							"P" => "xsamples-clean",
							"o" => "xexamples",
							"O" => "xexamples-clean",
							"l" => "xdemos",
							"L" => "xdemos-clean"
						);

sub oo {
	my ($gv) = @_;
	$$gv = $only ? 1 : $$gv;
}

sub coo {oo \$cpp};
sub hoo {oo \$hsk};
sub xoo {oo \$xxx};

sub sto {
	my($rv) = @_;
	$cpp = $hsk = $qmk = $cmk = $cin = $con = $bld = $ins = $hin = $rv;
	$rx = $rd = $rxp = $rxx = $rv;
	if ($rv == 0) {
		$cln = $hcln = $bcln = $ecln = $eecln = $dcln = $xcln = $rv;
	}
}

sub stox {
	my($rv) = @_;
	$rxw = $rxu = $rxr = $rxe = $rxd = $rv;
	if ($rv == 0) {
		$rxce = $rxcd = $rv;
	}
}

sub pp {
	my ($d2, $no) = @_;
	my $fnd = 1;
	$d2 =~ s/hsk/haskell/;
	$d2 =~ s/cpp-install/cinstall/;
	$d2 =~ s/haskell-install/hinstall/;
	$d2 =~ s/extra-pkgs-install/xinstall/;
	$d2 =~ s/extra-pkgs-build/xbuild/;
	$d2 =~ s/extra-pkgs-build-clean/xbuild-clean/;
	$d2 =~ s/extra-pkgs-configure/xconfigure/;
	$d2 =~ s/extra-pkgs-samples/xsamples/;
	$d2 =~ s/extra-pkgs-samples-clean/xsamples-clean/;
	$d2 =~ s/extra-pkgs-examples/xexamples/;
	$d2 =~ s/extra-pkgs-examples-clean/xexamples-clean/;
	$d2 =~ s/extra-pkgs-demos/xdemos/;
	$d2 =~ s/extra-pkgs-demos-clean/xdemos-clean/;
	given($d2) {
		when("cpp") {$cpp = $no}
		when("haskell") {$hsk = $no}
		when("qmake") {$qmk = $no; coo}
		when("cmake") {$cmk = $no; coo}
		when("cinstall") {$cin = $no; $ins = $no ? 1 : $ins; coo}
		when("configure") {$con = $no; hoo}
		when("build") {$bld = $no; hoo}
		when("hinstall") {$hin = $no; $ins = $no ? 1 : $ins; hoo}
		when("install") {
			$cin = $hin = $ins = $no;
			coo; hoo;
		}
		when("sudo") {
			if (not $iswin) {$sudoc = $no ? 1 : 0}
		}
		when("cpp-sudo") {
			if (not $iswin) {$cppsudoc = $no ? 1 : 0}
		}
		when("haskell-sudo") {
			if (not $iswin) {$hsksudoc = $no ? 1 : 0}
		}
		when("ldconfig") {
			if (not $iswin) {$ldconfig = $no ? "ldconfig" : ""}
      print "$ldconfig\n";
		}
		when("user") {
			if (not $iswin) {$cfusr = $no ? "--user" : ""}
		}
		when("samples") {
			if ($no) {$rx = $rd = $rxp = $rxx = 1}
			else {$rx = $rd = $rxp = $rxx = 0}
			hoo;
		}
		when("examples") {
			if ($no) {$rx = $rxx = 1}
			else {$rxx = 0}
			hoo;
		}
		when("demos") {
			if ($no) {$rd = $rx = 1}
			else {$rd = 0}
			hoo;
		}
		when("extra-pkgs") {
			if ($no) {$rxp = $rx = 1}
			else {$rxp = 0}
			hoo;
		}
		when("xconfigure") {
			if ($no) {$rxp = $rx = $rxr = 1}
			else {$rxr = 0}
			hoo;
		}
		when("xbuild") {
			if ($no) {$rxp = $rx = $rxu = 1}
			else {$rxu = 0}
			hoo;
		}
		when("xinstall") {
			if ($no) {$rxp = $rx = $rxw = 1}
			else {$rxw = 0}
			hoo;
		}
		when("xsamples") {
			if ($no) {$rxp = $rx = $rxe = $rxd = 1}
			else {$rxe = $rxd = 0}
			hoo;
		}
		when("xexamples") {
			if ($no) {$rxp = $rx = $rxe = 1}
			else {$rxe = 0}
			hoo;
		}
		when("xdemos") {
			if ($no) {$rxp = $rx = $rxd = 1}
			else {$rxd = 0}
			hoo;
		}
		when("clean") {
			if ($no) {$cln = $ccln = $hcln = $bcln = $ecln = $eecln = $dcln = $xcln = 1}
			else {$cln = 0}
			coo; hoo;
		}
		when("cpp-clean") {
			if ($no) {$cln = $ccln = 1}
			else {$ccln = 0}
			coo;
		}
		when("haskell-clean") {
			if ($no) {$cln = $hcln = $bcln = $ecln = $eecln = $dcln = $xcln = 1}
			else {$hcln = 0}
			hoo;
		}
		when("samples-clean") {
			if ($no) {$cln = $hcln = $ecln = $eecln = $dcln = $xcln = 1}
			else {$ecln = 0}
			hoo;
		}
		when("examples-clean") {
			if ($no) {$cln = $hcln = $ecln = $eecln = 1}
			else {$eecln = 0}
			hoo;
		}
		when("demos-clean") {
			if ($no) {$cln = $hcln = $ecln = $dcln = 1}
			else {$dcln = 0}
			hoo;
		}
		when("extra-pkgs-clean") {
			if ($no) {$cln = $hcln = $ecln = $xcln = $rxc = $rxce = $rxcd = 1}
			else {$xcln = 0}
			hoo;
		}
		when("xbuild-clean") {
			if ($no) {$cln = $hcln = $ecln = $xcln = $rxc = 1}
			else {$rxc = 0}
			hoo;
		}
		when("xsamples-clean") {
			if ($no) {$cln = $hcln = $ecln = $xcln = $rxce = $rxcd = 1}
			else {$rxce = $rxcd = 0}
			hoo;
		}
		when("xexamples-clean") {
			if ($no) {$cln = $hcln = $ecln = $xcln = $rxce = 1}
			else {$rxce = 0}
			hoo;
		}
		when("xdemos-clean") {
			if ($no) {$cln = $hcln = $ecln = $xcln = $rxcd = 1}
			else {$rxcd = 0}
			hoo;
		}
		default {$fnd = 0;}
	}
	return $fnd;
}

sub sos {
	my ($dst, $nv, $nj) = @_;
	my $s2 = "-" . (substr $dst, 0, 1);
	given($dst) {
		when("v") {$tgvl = $nv}
		when("vc") {$tcgvl = $nv}
		when("vh") {$thgvl = $nv}
		when("j") {$jt1 = $s2; $jt2 = $nj}
		when("jc") {$cjt1 = $s2; $cjt2 = $nj}
		when("jh") {$hjt1 = $s2; $hjt2 = $nj}
	}
}

foreach my $arg (@ARGV) {
	if ($arg =~ m/^\d+$/) {
		sos $dst, $arg, $arg;
		$dst = ""; next;
	}
	$dst = "";
	if ($arg =~ m/^-(v|j)(c|h)?(\d*)$/) {
		my $ot = $1.$2;
		my $nv = $3 ? $3 : 1;
		my $nj = $3 ? $3 : "";
		sos $ot, $nv, $nj;
		$dst = $3 ? "" : $ot; next;
	}
	elsif ($arg =~ m/^--(?<t1>c|h|((cpp|hsk|haskell)-))?(?<t2>verbose|jobs)(=(?<t3>\d+))?$/) {
		my $t1 = $+{t1};
		my $t2 = $+{t2};
		my $t3 = $+{t3};
		$t1 =~ s/-//;
		$t1 =~ s/cpp/c/;
		$t1 =~ s/hsk/h/;
		$t1 =~ s/haskell/h/;
		given($t2) {
			when("verbose") {
				my $cvl = $t3 ? $t3 : 1;
				given($t1) {
					when(/^$/) {$tgvl = $cvl}
					when("c") {$tcgvl = $cvl}
					when("h") {$thgvl = $cvl}
				}
			}
			when("jobs") {
				given($t1) {
					when(/^$/) {$jt1 = $arg; $jt2 = ""}
					when("c") {$cjt1 = $arg; $cjt2 = ""}
					when("h") {$hjt1 = $arg; $hjt2 = ""}
				}
			}
		}
		next;
	}
	if ($arg =~ m/^--(no-|only-)?([a-z|\-]+)(=[a-z|A-Z|,|\-]+)?$/) {
		my $sx = 0;
		my $p1 = $1;
		my $p2 = $2;
		my $p3 = $3;
		if ($p2 =~ m/^x/) {
			$sx = 1;
		}
		my $no = ($p1 eq "no-") ? 0 : 1;
		$only = ($p1 eq "only-") ? 1 : 0;
		if (($p2 =~ m/^extra-pkgs$/) && ($p3 =~ m/^=([a-z|A-Z].*)$/)) {
			if ($only) {
				sto 0;
				stox 0;
			}
			my $p1 = 1;
			@xsl = split /,/, $1;
			my $lonly = 1;
			foreach my $csl (sort @xsl) {
				my @cssl = split /-/, $csl;
				my $cpkg = $cssl[0];
				if (exists $xp{$cpkg}) {
					if (($sxonly && $xpu && $no) || ($only && $lonly)) {
						foreach my $ocsl (sort @xsl) {
							$xp{$cpkg} &= $xp_na;
						}
					}
					$xpu = 0;
					$lonly = 0;
					my $cs = $#cssl;
					my $cv = $xp{$cpkg};
					my $co = $cv & $xp_o;
					if ($co) {
						if (($cs == 0) || (($cs > 0) && ($cssl[1] =~ m/^n/))) {
							$cv = $xp_no;
						} elsif (not $sxonly) {
							$cv |= $xp_c if $rxr;
							$cv |= $xp_b if $rxu;
							$cv |= $xp_i if $rxw;
							$cv |= $xp_e if $rxe;
							$cv |= $xp_d if $rxd;
							$cv |= $xp_cc if $rxc;
							$cv |= $xp_ce if $rxce;
							$cv |= $xp_cd if $rxcd;
						}
						$cv &= $xp_no;
						$co = $cv & $xp_o;
					}
					$cv = $no ? $cv | $xp_a : $cv & $xp_na;
					my $i = 0;
					for ($i = 1; $i <= $cs; $i++) {
						my $csl = $cssl[$i];
						if ($csl !~ m/^(n)?([wurplo|UPLO]+)$/) {
							last;
						} else {
							my $ln = $1 ? 1 : 0;
							my $lv = $2;
							foreach my $cp (split //, $lv) {
								given($cp) {
									when(/^w$/) {$cv = $ln ? $cv & $xp_ni : $cv | $xp_i}
									when(/^u$/) {$cv = $ln ? $cv & $xp_nb : $cv | $xp_b}
									when(/^r$/) {$cv = $ln ? $cv & $xp_nc : $cv | $xp_c}
									when(/^p$/) {$cv = $ln ? $cv & $xp_ne & $xp_nd : $cv | $xp_e | $xp_d}
									when(/^o$/) {$cv = $ln ? $cv & $xp_ne : $cv | $xp_e}
									when(/^l$/) {$cv = $ln ? $cv & $xp_ne : $cv | $xp_d}
									when(/^U$/) {$cv = $ln ? $cv & $xp_ncc & $xp_nb : $cv | $xp_cc | $xp_b}
									when(/^P$/) {$cv = $ln ? $cv & $xp_nce &$xp_ncd & $xp_ne & $xp_nd : $cv | $xp_ce | $xp_cd | $xp_e | $xp_d}
									when(/^O$/) {$cv = $ln ? $cv & $xp_nce & $xp_ne : $cv | $xp_ce | $xp_e}
									when(/^L$/) {$cv = $ln ? $cv & $xp_ncd & $xp_nd : $cv | $xp_cd | $xp_d}
								}
								if (not $ln) {
									pp $kwh{$cp}, 1;
									if ($cp =~ m/[UPLO]/) {
										pp $kwh{lc $cp}, 1;
									}
								}
							}
						}
					}
					$p1 = ($p1 && ($i > $cs)) ? 1 : 0;
					$xp{$cpkg} = $cv if $p1;
				} else {
					$p1 = 0;
				}
			}
			$ssonly = 0;
			$sxonly = 0;
			if ($p1) {
				next if pp $p2, $no;
			}
		}
		elsif ($no && ($p2 eq "all")) {
			sto 1; next;
		} else {
			sto 0 if ($only || ((not $no) && ($p2 eq "all")));
			stox 0 if ($only && $sx);
			next if pp $p2, $no;
		}
		$ssonly = 0;
		$sxonly = 0 if $sx;
	}
	elsif ($arg =~ m/^(-)?([a-z|A-Z][a-z|A-Z|\-]*)$/) {
		$no = 1;
		$only = 1;
		my $ls = $1 ? 1 : 0;
		my $ckw = $2;
		my $sx = 0;
		if (($ls && $ckw =~ m/[wuUrpPoOlL]/) || ((not $ls) && $ckw =~ m/^x/)) {
			$sx = 1;
		}
		if ($ls && $ckw =~ m/^n([a-z|A-Z]+)$/) {
			$ckw = $1;
			$no = 0;
			$only = 0;
		} else {
			sto 0 if $ssonly;
			if ($sx) {
				stox 0 if $sxonly;
			}
		}
		$ssonly = 0;
		$sxonly = 0 if $sx;
		if (not $ls) {
			if (pp $ckw, 1) {
				next;
			}
		}
		elsif ($ckw =~ m/^[qmMcfbBhisSeEdDxXyzwuUrpPlLoO]+$/) {
			foreach my $cc (split //, $ckw) {
				pp $kwh{$cc}, $no;
				if ($cc =~ m/[MBSEDXUPLO]/) {
					pp $kwh{lc $cc}, $no;
				}
			}
			next;
		}
	}
	if ($isdynos && ($arg =~ m/^--(disable|enable)-shared$/)) {
		if ($1 eq "disable") {$rs = 0}
		elsif ($1 eq "enable") {$rs = 1}
		next;
	}
	if ($iswin && ($arg =~ m/^--(disable|enable)-ld$/)) {
		if ($1 eq "disable") {$weld = 0}
		elsif ($1 eq "enable") {$weld = 1}
		next;
	}
	$arg =~ s/extra-ld-opt/xld-opt/;
	if ($arg =~ m/^--(no-)?xld-opt(=(.*))?$/) {
		if ($1 && not $2) {
			$xld = "";
      next;
    } elsif ($2 && not $1) {
			$xld .= " " if ($xld ne "");
			$xld .= $3;
		  next;
		}
	}
  usage;
	die "unrecognized parameter $arg\n";
}
if ($sudoc && $cppsudoc) {
	$cppsudo = $sudo;
}
if ($sudoc && (($hsksudoc > 0) || (($hsksudoc == -1) && ($cfusr eq "")))) {
  $hsksudo = $sudo;
}
$gvl = $tgvl;
$cgvl = $tcgvl;
$hgvl = $thgvl;
if ($jt1 ne "") {
	if ($cjt1 eq "") {
		$cjt1 = $jt1;
		$cjt2 = $jt2;
	}
	if ($hjt1 eq "") {
		$hjt1 = $jt1;
		$hjt2 = $jt2;
	}
}
$cj = $cjt2 ? "$cjt1 $cjt2" : $cjt1;
$hj = $hjt2 ? "$hjt1 $hjt2" : $hjt1;
$cj = $cj ? " $cj" : $cj;
$hj = $hj ? " $hj" : $hj;
$rsp = "--enable-shared" if $rs == 1;
if ($ghcdv && $rs) {
	$qhc .= "d";
}
print "building qtHaskell-1.1.4\n";
if ($cpp) {
	$in_cpp = 1; $in_hsk = 0;
	cdod "$cdir";
	if ($cln && $ccln) {
		sys_ds "$mk$cj clean";
	}
	if ($qmk) {
		sys_ds "qmake $spec -recursive";
	}
	if ($cmk) {
		sys_ds "$mk$cj release";
	}
	if ($islinux && $ins && $cin) {
		sys_ds "$cppsudo $mk$cj install";
		if ($ldconfig) {
       cbtod \my $tldc, "$cppsudo which $ldconfig";
			sys_ds "$cppsudo $tldc";
		}
	}
	cdup;
}
if ($hsk) {
	$in_cpp = 0; $in_hsk = 1;
	if ($cln && $hcln && $bcln) {
		if ((not $ghcfv) or $iswin) {
			sys_ds_pmf $mk, $mk612, $xld, $hp, $hpv, $vogl, $vbse, $vh98, "YES", "", $mngar, $mngld, "clean";
			if ($ghcdv && $rs) {
				sys_ds_pmf $mk, $mk612d, $xld, $hp, $hpv, $vogl, $vbse, $vh98, "NO", "way=dyn", $mngar, $mngld, "clean";
			}
		}
		else {
			sys_ds "$mk$hj EXTRA-LD-OPTS=$xld VANILLA_WAY=YES clean";
			if (-e "Makefile") {unlink "Makefile"};
		}
	}
	if ($con) {
		sys_ds "$rgSu configure $cfusr $rsp";
		if ((not $ghcfv) or $iswin) {
			my $at = my $mt = time;
			utime $at, $mt, $mk612 or die "utime $mk612: $!\n";
			if ($ghcdv && $rs) {
				utime $at, $mt, $mk612d or die "utime $mk612d: $!\n";
			}
		}
	}
	if ($bld) {
		if ((not $ghcfv) or $iswin) {
			sys_ds_pmf $mk, $mk612, $xld, $hp, $hpv, $vogl, $vbse, $vh98, "YES", "", $mngar, $mngld;
			if ($ghcdv && $rs) {
				sys_ds_pmf $mk, $mk612d, $xld, $hp, $hpv, $vogl, $vbse, $vh98, "NO", "way=dyn", $mngar, $mngld;
			}
			if ($iswin && $weld) {
				sys_ds "$rgSu build";
			}
		}
		else {
			if (-e "Makefile") {unlink "Makefile"};
			sys_ds "$rgSu build";
			sys_ds "$rgSu install";
			# sys_ds "$mk$hj EXTRA-LD-OPTS=$xld VANILLA_WAY=YES";
		}
	}
	if ($ins && $hin) {
		if (not $iswin) {
			sys_ds "$hsksudo $rgfSu install";
		}
		else {
			sys_ds "$rgSu install";
		}
	}
	if ($cln && $hcln && $ecln) {
		if ($eecln) {
			cln_dsa("examples");
		}
		if ($dcln) {
			cln_dsa("demos");
		}
		if ($xcln) {
			cdod $ep;
			foreach my $cdd (sort (keys %xp)) {
				my $xpv = $xp{$cdd};
				my $xpa = $xpv & $xp_a;
				if ($rxc && ($xpu || ($xpa && ($xpv & $xp_cc)))) {
					cdod $cdd;
					sys_ds "$rgSu clean";
					cdup;
				}
			}
			cdup;
			foreach my $cdd (sort keys %xp) {
				my $xpv = $xp{$cdd};
				my $xpa = $xpv & $xp_a;
				if ($xpu || $xpa) {
					if ($rxce && ($xpu || ($xpa && ($xpv & $xp_ce)))) {
						cln_dsax "examples", $cdd;
					}
					if ($rxcd && ($xpu || ($xpa && ($xpv & $xp_cd)))) {
						cln_dsax "demos", $cdd;
					}
				}
			}
		}
	}
	if ($rx) {
		cbtod \my $ql, "ghc-pkg latest qt";
		$ql == "qt-1.1.4" or die "qt-1.1.4 not found: $!\n";
		if ($rxx) {
			qbe "examples";
		}
		if ($rd) {
			qbe "demos";
		}
		if ($rxp) {
			cdod "$cd/$ep";
			foreach my $cdd (sort keys %xp) {
				my $xpv = $xp{$cdd};
				my $xpa = $xpv & $xp_a;
				if ($xpu || $xpa) {
					cdod $cdd;
					if ($rxr && ($xpu || ($xpa && ($xpv & $xp_f)))) {
						sys_ds "$rgSu configure $cfusr $rsp";
					}
					if ($rxu && ($xpu || ($xpa && ($xpv & $xp_b)))) {
						sys_ds "$rgSu build";
					}
					if ($rxw && ($xpu || ($xpa && ($xpv & $xp_i)))) {
						if (not $iswin) {
							sys_ds "$hsksudo $rgfSu install";
						} else {
							sys_ds "$rgSu install";
						}
					}
					cdup;
				}
			}
			cdup;
			foreach my $cdd (sort keys %xp) {
				my $xpv = $xp{$cdd};
				my $xpa = $xpv & $xp_a;
				if ($xpu || $xpa) {
					if ($rxe && ($xpu || ($xpa && ($xpv & $xp_e)))) {
						qbex "examples","Glome";
					}
					if ($rxd && ($xpu || ($xpa && ($xpv & $xp_d)))) {
						qbex "demos","Glome";
					}
				}
			}
		}
	}
}

