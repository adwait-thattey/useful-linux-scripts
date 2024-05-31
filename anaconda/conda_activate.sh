ENV_LOCATION="$DRIVE_ADTH/arch/anaconda/envs/"

if [ $# -lt 1 ]; then
	echo "Please specify the name of Virtual Environment you want to start"
    echo "Usage: conda_activate env_name [env_location_path]"
else

    env_name=$1
    if [ $# -eq 2 ]; then
        $ENV_LOCATION=$2
    fi

    echo "Searching for environment in $ENV_LOCATION . Pass a second parameter with custom path to search there instead."

    vir_path="$ENV_LOCATION/$env_name"

	
	if [ ! -d $vir_path ]; then
		echo "Virtual Environment of this name does not exist "
		
	else
		echo "Running conda activate. If conda is not inited, this wont work "
        conda activate "$vir_path"
			
	fi
fi
