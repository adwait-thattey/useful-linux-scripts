ENV_LOCATION="$DRIVE_ADTH/arch/anaconda/envs"

if [ $# -lt 2 ]; then
	echo "Please specify the name of Virtual Environment and python version you want to create"
    echo "Usage: conda_create [env_name] [python_version]"
else

    env_name=$1
    py_version=$2

    vir_path="$ENV_LOCATION/$env_name/"

    echo "Creating environment at $vir_path. If conda is not inited, this wont work "
    conda create -p "$vir_path" python=$py_version

fi
