# Required initial setup

echo select all simulations
. .\setup.ps1

# Accounts
sqlcmd -S $SERVER -d $DATABASE -U $USER -P  $PASS -W -Q "SELECT * FROM dbo.Simulations"
sqlcmd -S $SERVER -d $DATABASE -U $USER -P  $PASS -W -Q "SELECT Name,SimulationName FROM dbo.SimulationStagedInputs"
$ok = read-host "[return]"