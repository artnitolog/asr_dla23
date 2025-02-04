FROM pytorch/pytorch:2.1.0-cuda12.1-cudnn8-devel
WORKDIR /repos/asr_dla23 

# Install requirements for torchaudio
# RUN pip install sox && conda install torchaudio==0.11.0 -c pytorch && conda install -c conda-forge librosa

# Install requirements
COPY requirements.txt ./
# RUN pip install -r requirements.txt

# Copy the contents of repository
COPY . .

# Expose port
EXPOSE 3000