#/bin/bash

export DIR_DOWNLOAD=/vagrant/target
export DIR_REPOSITORIES=/opt/repos

sudo yum install -y ${DIR_DOWNLOAD}/*.rpm

sudo echo 'export PATH=/usr/pgsql-10/bin:$PATH' > /etc/profile.d/postgres.sh

# Start postgresql
sudo mkdir -p /var/log/postgres
sudo chown postgres:postgres /var/log/postgres
sudo mkdir -p /usr/local/pgsql/data
sudo chown postgres:postgres /usr/local/pgsql/data
sudo chmod 700 /usr/local/pgsql/data

su postgres -c "pg_ctl initdb --pgdata=/usr/local/pgsql/data"
sudo echo "listen_addresses = '*'" >> /usr/local/pgsql/data/postgresql.conf
sudo echo "host  all  all 0.0.0.0/0 md5" >> /usr/local/pgsql/data/pg_hba.conf
su postgres -c "pg_ctl -D /usr/local/pgsql/data -l /var/log/postgres/logfile start"

# Setup Ambari metastore
useradd ambari
su postgres -c "psql -f /vagrant/setup_ambari.sql"


# Prepare HDP install
sudo mkdir -p ${DIR_REPOSITORIES}
sudo mkdir -p ${DIR_REPOSITORIES}/HDP_UTILS
sudo mkdir -p ${DIR_REPOSITORIES}/HDP_GPL

# Setup Ambari repository
sudo tar -xvzf ${DIR_DOWNLOAD}/ambari-2.6.1.3-centos7.tar.gz -C ${DIR_REPOSITORIES}

# Setup HDP repository
sudo tar -xvzf ${DIR_DOWNLOAD}/HDP-2.6.4.0-centos7-rpm.tar.gz -C ${DIR_REPOSITORIES}
sudo tar -xvzf ${DIR_DOWNLOAD}/HDP-UTILS-1.1.0.22-centos7.tar.gz -C ${DIR_REPOSITORIES}/HDP_UTILS
sudo tar -xvzf ${DIR_DOWNLOAD}/HDP-GPL-2.6.4.0-centos7-rpm.tar.gz -C ${DIR_REPOSITORIES}/HDP_GPL

# Setup HDP and Ambari repo
sudo cp ${DIR_DOWNLOAD}/*.repo /etc/yum.repos.d/

# Install JRE
export JAVA_HOME=/usr/java/default
export JAVA_SEC=/usr/java/default/jre/lib/security
cp ${JAVA_SEC}/local_policy.jar ${JAVA_SEC}/local_policy.jar$(date "+-%FT%T")
cp ${JAVA_SEC}/US_export_policy.jar ${JAVA_SEC}/US_export_policy.jar$(date "+-%FT%T")
unzip -oj ${DIR_DOWNLOAD}/jce_policy-8.zip
rm -f ${DIR_DOWNLOAD}/jce_policy-8.zip -d ${JAVA_SEC}

# Install ambari
sudo yum install -y ${DIR_REPOSITORIES}/ambari/centos7/2.6.1.3-3/ambari/ambari-server-2.6.1.3-3.x86_64.rpm





# Install MySQL
# sudo mkdir -p ${DIR_REPOSITORIES}/mysql
# sudo tar -xvf ${DIR_DOWNLOAD}/mysql-5.7.21-1.el7.x86_64.rpm-bundle.tar -C ${DIR_REPOSITORIES}/mysql

# sudo yum install ${DIR_REPOSITORIES}/mysql/mysql-community-server-5.7.21-1.el7.x86_64.rpm 
# sudo createrepo ${DIR_REPOSITORIES}/mysql
# sudo cp ${DIR_REPOSITORIES}/mysql.repo /etc/yum.repos.d/




# sudo chmod +x ${DIR_DOWNLOAD}/*.sh
# sudo ${DIR_DOWNLOAD}/Anaconda3*.sh -b -p /opt/conda
# sudo echo 'export PATH=/opt/conda/bin:$PATH' > /etc/profile.d/conda.sh

# sudo /opt/conda/bin/pip install tensorflow -f ${DIR_DOWNLOAD}
# sudo /opt/conda/bin/pip install keras -f ${DIR_DOWNLOAD}
# sudo /opt/conda/bin/pip install jupyterhub -f ${DIR_DOWNLOAD}
# sudo /opt/conda/bin/pip install pyspark -f ${DIR_DOWNLOAD}