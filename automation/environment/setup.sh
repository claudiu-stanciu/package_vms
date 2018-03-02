#/bin/bash

export DIR_DOWNLOAD=/vagrant/target

sudo yum install ${DIR_DOWNLOAD}/*.rpm

sudo chmod +x ${DIR_DOWNLOAD}/*.sh
sudo ${DIR_DOWNLOAD}/Anaconda3*.sh -b -p /opt/conda
sudo echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh

sudo /opt/conda/bin/pip install tensorflow -f ${DIR_DOWNLOAD}
sudo /opt/conda/bin/pip install keras -f ${DIR_DOWNLOAD}
sudo /opt/conda/bin/pip install jupyterhub -f ${DIR_DOWNLOAD}
sudo /opt/conda/bin/pip install pyspark -f ${DIR_DOWNLOAD}