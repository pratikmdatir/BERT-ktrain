echo [$(date)]: "START"
export _VERSION_=3.7
echo [$(date)]: "creating environment with python ${_VERSION_}"
conda create --prefix ./env python=${_VERSION_} -y
echo [$(date)]: "activate environment"
source activate ./env
echo [$(date)]: "install rerquirements"
pip install -r requirements.txt
echo [$(date)]: "installing pytorch 1.8.1"
conda install pytorch==1.8.1 cudatoolkit=11.3 -c pytorch -c conda-forge
echo [$(date)]: "END"