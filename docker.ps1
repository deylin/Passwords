param (
    [Parameter(Mandatory)]
    [ValidateSet('up','down', 'build', 'config', 'logs')]
    [string]$Action
)

if($Action -eq 'up') {

}

switch ($Action) {
    'up' { 
        & "docker-compose" --env-file ./.env up --build -d
     }
    'down' { 
        & "docker-compose" down
     }
    'build' { 
        & "docker-compose"  --env-file ./.env build 
     }
    'config' { 
        & "docker-compose"  --env-file ./.env config 
     }
    'logs' { 
        & "docker-compose"  logs
     }
    Default {}
}