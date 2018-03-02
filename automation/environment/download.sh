#/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export DIR_DOWNLOAD=${DIR}/target
if [ ! -d ${DIR_DOWNLOAD} ]; then
    mkdir ${DIR_DOWNLOAD}
fi

cd ${DIR_DOWNLOAD}

echo 'Starting download'

wget -c https://dev.mysql.com/get/Downloads/MySQL-5.7/mysql-5.7.21-1.el7.x86_64.rpm-bundle.tar
wget -c http://public-repo-1.hortonworks.com/HDP/centos7/2.x/updates/2.6.4.0/HDP-2.6.4.0-centos7-rpm.tar.gz
wget -c http://public-repo-1.hortonworks.com/ambari/centos7/2.x/updates/2.6.0.0/ambari-2.6.0.0-centos7.tar.gz
wget -c https://repo.continuum.io/archive/Anaconda3-5.1.0-Linux-x86_64.sh
wget -c https://pypi.python.org/packages/5f/b8/3dafc45f20a817ab9f042302646bcbe6f7e26e8a760871a85637e53a35ec/absl-py-0.1.10.tar.gz#md5=71fd85b74da723e36f7947e40462e9f4
wget -c https://pypi.python.org/packages/a1/95/2252783859df9ec76b9a25d968c2827ed75a43ba34c6e8d38f87a5c0fb26/alembic-0.9.8.tar.gz#md5=5cfef58641c9a94d4a5d547e951a7dda
wget -c https://pypi.python.org/packages/33/70/86c5fec937ea4964184d4d6c4f0b9551564f821e1c3575907639036d9b90/bleach-1.5.0-py2.py3-none-any.whl#md5=65fc72630550701333e68307933b6f30
wget -c https://pypi.python.org/packages/fa/53/0a5562e2b96749e99a3d55d8c7df91c9e4d8c39a9da1f1a49ac9e4f4b39f/certifi-2018.1.18-py2.py3-none-any.whl#md5=38f1c6a4a5d6b5e8bcb614354d6584c9
wget -c https://pypi.python.org/packages/bc/a9/01ffebfb562e4274b6487b4bb1ddec7ca55ec7510b22e4c51f14098443b8/chardet-3.0.4-py2.py3-none-any.whl#md5=0004b00caff7bb543a1d0d0bd0185a03
wget -c https://pypi.python.org/packages/e1/5a/53db15bf367d2028bdc6700dbdf1bdfab46b9f208b7516952817c0808118/decorator-4.2.1-py2.py3-none-any.whl#md5=ee1340f665cc86f7ee03fea0030fa2d4
wget -c https://pypi.python.org/packages/ae/ae/bcb60402c60932b32dfaf19bb53870b29eda2cd17551ba5639219fb5ebf9/html5lib-0.9999999.tar.gz
wget -c https://pypi.python.org/packages/27/cc/6dd9a3869f15c2edfab863b992838277279ce92663d334df9ecf5106f5c6/idna-2.6-py2.py3-none-any.whl#md5=875c4a7b32b4897537d5ea9247b5c79e
wget -c https://pypi.python.org/packages/fa/bc/9bd3b5c2b4774d5f33b2d544f1460be9df7df2fe42f352135381c347c69a/ipython_genutils-0.2.0-py2.py3-none-any.whl#md5=5bf384d999c2e38b696a4d6f162875c3
wget -c https://pypi.python.org/packages/7f/ff/ae64bacdfc95f27a016a7bed8e8686763ba4d277a78ca76f32659220a731/Jinja2-2.10-py2.py3-none-any.whl#md5=cb679acd14423aef56dfff61d6a988f8
wget -c https://pypi.python.org/packages/bd/36/2c98cae181c50d955a9f7157ee0a1db80b234fd8b8c11b76b0a37efb695a/jupyterhub-0.8.1-py3-none-any.whl#md5=1f3d08d618a6bc901aa6819e0b7f72eb
wget -c https://pypi.python.org/packages/86/45/a273fe3f8fe931a11da34fba1cb74013cfc70dcf93e5d8d329c951dc44c5/Keras-2.1.4-py2.py3-none-any.whl#md5=cbcfde4a1791703ef721abe97b541736
wget -c https://pypi.python.org/packages/eb/f3/67579bb486517c0d49547f9697e36582cd19dafb5df9e687ed8e22de57fa/Mako-1.0.7.tar.gz
wget -c https://pypi.python.org/packages/6d/7d/488b90f470b96531a3f5788cf12a93332f543dbab13c423a5e7ce96a0493/Markdown-2.6.11-py2.py3-none-any.whl#md5=29ab3d898f3a65fbd13e0bfb753d8264
wget -c https://pypi.python.org/packages/4d/de/32d741db316d8fdb7680822dd37001ef7a448255de9699ab4bfcbdf4172b/MarkupSafe-1.0.tar.gz
wget -c https://pypi.python.org/packages/de/7d/348c5d8d44443656e76285aa97b828b6dbd9c10e5b9c0f7f98eff0ff70e4/numpy-1.14.1-cp36-cp36m-manylinux1_x86_64.whl#md5=dd2321ea4590ec05d825d8c9a64fd64b
wget -c https://pypi.python.org/packages/09/e0/19aba69ecee9162fb5de44b2c66fd8cc7e3fdb2d025839555afd8a71e79f/pamela-0.3.0-py2.py3-none-any.whl#md5=6ac0ca65fa9756a620bdf468706c8b1f
wget -c https://pypi.python.org/packages/40/99/471fa05dab1cf69419c91bcd7b5a7f3a0e251c76025bbdb40e08c367b728/protobuf-3.5.1-cp36-cp36m-manylinux1_x86_64.whl#md5=4bbc73647fe68dc9643731455ad2ecac
wget -c https://pypi.python.org/packages/4a/08/162710786239aa72bd72bb46c64f2b02f54250412ba928cb373b30699139/py4j-0.10.6-py2.py3-none-any.whl#md5=6403fcfbf616e7d419833583d665c9fe
wget -c https://pypi.python.org/packages/58/49/45370cc153a6adcf2c304a3c06e801ed3c9650d0f852e7fde04bd8ffb534/pyspark-2.3.0.tar.gz
wget -c https://pypi.python.org/packages/4b/0d/7ed381ab4fe80b8ebf34411d14f253e1cf3e56e2820ffa1d8844b23859a2/python_dateutil-2.6.1-py2.py3-none-any.whl#md5=342c025339de1e7c2138c74983c111d7
wget -c https://pypi.python.org/packages/65/1e/adf6e000ea5dc909aa420352d6ba37f16434c8a3c2fa030445411a1ed545/python-editor-1.0.3.tar.gz
wget -c https://pypi.python.org/packages/4c/a4/e92b8ba57ccfee230f196c80dc9327d1b626387c5ec1aa400e343161fde8/python-oauth2-1.1.0.tar.gz
wget -c https://pypi.python.org/packages/4a/85/db5a2df477072b2902b0eb892feb37d88ac635d36245a72a6a69b23b383a/PyYAML-3.12.tar.gz#md5=4c129761b661d181ebf7ff4eb2d79950
wget -c https://pypi.python.org/packages/49/df/50aa1999ab9bde74656c2919d9c0c085fd2b3775fd3eca826012bef76d8c/requests-2.18.4-py2.py3-none-any.whl#md5=eb9be71cc41fd73a51a7c9cd1adde5de
wget -c https://pypi.python.org/packages/d8/5e/caa01ba7be11600b6a9d39265440d7b3be3d69206da887c42bef049521f2/scipy-1.0.0-cp36-cp36m-manylinux1_x86_64.whl#md5=9f77e8710fcab99ae4fed09d5fe56605
wget -c https://pypi.python.org/packages/43/41/033a273f9a25cb63050a390ee8397acbc7eae2159195d85f06f17e7be45a/setuptools-38.5.1-py2.py3-none-any.whl#md5=908b8b5e50bf429e520b2b5fa1b350e5
wget -c https://pypi.python.org/packages/67/4b/141a581104b1f6397bfa78ac9d43d8ad29a7ca43ea90a2d863fe3056e86a/six-1.11.0-py2.py3-none-any.whl#md5=866ab722be6bdfed6830f3179af65468
wget -c https://pypi.python.org/packages/f3/b7/d8725042f105cc6b71c7bae0ffd46e49f762e5a08f421f1eddd855a1f723/SQLAlchemy-1.2.4.tar.gz
wget -c https://pypi.python.org/packages/04/79/a37d0b373757b4d283c674a64127bd8864d69f881c639b1ee5953e2d9301/tensorflow-1.5.0-cp36-cp36m-manylinux1_x86_64.whl#md5=b8ed472dbc419bb12cba4ac47bd27c62
wget -c https://pypi.python.org/packages/cc/fa/91c06952517b4f1bc075545b062a4112e30cebe558a6b962816cb33efa27/tensorflow_tensorboard-1.5.1-py3-none-any.whl#md5=d6a1992769576a14c7ebe196b2cbe505
wget -c https://pypi.python.org/packages/e3/7b/e29ab3d51c8df66922fea216e2bddfcb6430fb29620e5165b16a216e0d3c/tornado-4.5.3.tar.gz#md5=a5fc7fd4aea94867609a491ce65786f1
wget -c https://pypi.python.org/packages/93/d6/abcb22de61d78e2fc3959c964628a5771e47e7cc60d53e9342e21ed6cc9a/traitlets-4.3.2-py2.py3-none-any.whl#md5=ed8d701989c74fe1984114f3bcab7f98
wget -c https://pypi.python.org/packages/63/cb/6965947c13a94236f6d4b8223e21beb4d576dc72e8130bd7880f600839b8/urllib3-1.22-py2.py3-none-any.whl#md5=1c11e1c80371cc4e89911071010a98d1
wget -c https://pypi.python.org/packages/20/c4/12e3e56473e52375aa29c4764e70d1b8f3efa6682bef8d0aae04fe335243/Werkzeug-0.14.1-py2.py3-none-any.whl#md5=11f469d64429cc75f995cf6be5662133
wget -c https://pypi.python.org/packages/0c/80/16a85b47702a1f47a63c104c91abdd0a6704ee8ae3b4ce4afc49bc39f9d9/wheel-0.30.0-py2.py3-none-any.whl#md5=1d61793f816d6b60513364fe2de9c1b3

wget -c https://rpmfind.net/linux/centos/7.4.1708/os/x86_64/Packages/httpd-2.4.6-67.el7.centos.x86_64.rpm
wget -c https://rpmfind.net/linux/centos/7.4.1708/os/x86_64/Packages/createrepo-0.9.9-28.el7.noarch.rpm
wget -c https://rpmfind.net/linux/centos/7.4.1708/os/x86_64/Packages/mailcap-2.1.41-2.el7.noarch.rpm
wget -c https://rpmfind.net/linux/centos/7.4.1708/os/x86_64/Packages/python-deltarpm-3.6-3.el7.x86_64.rpm
wget -c https://rpmfind.net/linux/centos/7.4.1708/os/x86_64/Packages/httpd-tools-2.4.6-67.el7.centos.x86_64.rpm
wget -c https://rpmfind.net/linux/centos/7.4.1708/os/x86_64/Packages/apr-util-1.5.2-6.el7.x86_64.rpm
wget -c https://rpmfind.net/linux/centos/7.4.1708/os/x86_64/Packages/apr-1.4.8-3.el7.x86_64.rpm
wget -c https://rpmfind.net/linux/centos/7.4.1708/os/x86_64/Packages/wget-1.14-15.el7.x86_64.rpm
wget -c --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u162-b12/0da788060d494f5095bf8624735fa2f1/jdk-8u162-linux-x64.rpm

echo 'Finished download'