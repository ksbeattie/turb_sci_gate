# Required initial setup
. .\setup.ps1

$ok = read-host "Initialize Database $SERVER $DATABASE Continue [y|n]?"

if ($ok -ne "y") 
{
	echo "return"
	return;
}

echo "setup user accounts $ok"
#$USERS = ('boverhof','M!55yMuff!n'),('archiver','Y0L@T3ng0')
#$USERS = ('eslick','Y0L@T3ng0'),('jeslick','f00B@r'),('jleek','5t@rW@rs'),('archiver','Y0L@T3ng0'),('brendang','5t@rW@rs'),('sahinidis','B@ckH03'),('cozad','B@ckH03'),('kushner','Y0L@T3nt0')
$USERS = ('jeslick','f00B@r'),('jleek','5t@rW@rs'),('boverhof','M!55yMuff!n'),('dlolson','Y0L@T3ng0')

foreach ($i in $USERS) 
{
	$QUERY_STR = "INSERT INTO dbo.Users VALUES " + "('" + $i[0] + "','" + $i[1] + "')"
	sqlcmd  -S $SERVER -d $DATABASE -U $USER -P  $PASS -Q $QUERY_STR
}

#sqlcmd  -S $SERVER -d $DATABASE -U $USER -P  $PASS  -Q "DELETE FROM dbo.Users WHERE Id>12"

# Simulation: mea-uq-billet-1
#sqlcmd -d $DATABASE -U $USER -P  $PASS -Q "INSERT INTO dbo.Simulations VALUES (
#    'mea-uq-billet-1',
#     0x2320536F6D652073696D756C6174696F6E20696E666F726D6174696F6E0D0A230D0A66696C657C2020202020202020206D65612D6162732E626B700D0A7469746C657C20202020202020204D454120436172626F6E20436170747572652050726F636573730D0A617574686F727C202020202020204A6F686E2045736C69636B,
#     0x4D4D202232342E302220464C41564F5220224E4F222056455253494F4E202232342E3022204441544554494D452022547565204175672030392031313A35333A3436203230313122200D0A4D414348494E45202257494E2D4E542F56432220203B200D0A73746172746C6962726172790D0A76657273696F6E310D0A4E756D4C,
#     0x7B22736F6C76656E742E696E7075742E6C65616E5F6C6F6164223A302E3236352C22736F6C76656E742E696E7075742E6D617373466C6F77223A343331393530302E343131362C226761732E696E7075742E73747265616D28302C3029223A3133342E342C226761732E696E7075742E73747265616D28302C3129223A31362E,
#     3 )"
