FROM informaticsmatters/rdkit-python3-debian 

RUN apt update && \
    apt install wget -y 
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
RUN bash Miniconda3-latest-Linux-x86_64.sh -b -f -p /opt/miniconda3 && \
    echo 'export PATH="/opt/miniconda3/bin:$PATH"' >> /root/.bashrc && \
    . /root/.bashrc && \
    conda install -c oddt oddt rdkit openbabel -y
