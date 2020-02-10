FROM ubuntu:18.04
LABEL Description="Image for buiding OpenGD77 project"
WORKDIR /work

ENV SDK_VERSION 2.7.0
ENV SDK_TYPE MK22FN512xxx12
ENV IDE_VERSION 11.1.0_3209

COPY ./mcuxpressoide-${IDE_VERSION}.x86_64.deb.bin /work
COPY ./SDK_${SDK_VERSION}_${SDK_TYPE}.zip /work

# Install any needed packages specified in requirements.txt
RUN apt update && \
    apt upgrade -y && \
    apt install -y \
# Development files
      whiptail \
      build-essential \
      bzip2 \
      libswt-gtk-3-jni \
      libswt-gtk-3-java \
      libwebkit2gtk-4.0-37 \
      wget xvfb git && \
    apt clean

# install mcuxpresso
RUN chmod a+x mcuxpressoide-${IDE_VERSION}.x86_64.deb.bin &&\
  # Extract the installer to a deb package
  ./mcuxpressoide-${IDE_VERSION}.x86_64.deb.bin --noexec --target mcu &&\
  cd mcu &&\
  dpkg --add-architecture i386 && apt-get update &&\
  apt-get install -y libusb-1.0-0-dev dfu-util libwebkitgtk-1.0-0 libncurses5:i386 udev &&\
  dpkg -i --force-depends JLink_Linux_x86_64.deb &&\
  # manually install mcuxpressoide - post install script fails
  dpkg --unpack mcuxpressoide-${IDE_VERSION}.x86_64.deb &&\
  rm /var/lib/dpkg/info/mcuxpressoide.postinst -f &&\
  dpkg --configure mcuxpressoide &&\
  apt-get install -yf &&\
  # manually run the postinstall script
  mkdir -p /usr/share/NXPLPCXpresso &&\
  chmod a+w /usr/share/NXPLPCXpresso &&\
  ln -s /usr/local/mcuxpressoide-${IDE_VERSION} /usr/local/mcuxpressoide &&\
  mkdir -p /root/mcuxpresso/02/SDKPackages &&\
  cd .. &&\
  mv SDK_${SDK_VERSION}_${SDK_TYPE}.zip /root/mcuxpresso/02/SDKPackages &&\
  rm mcuxpressoide-${IDE_VERSION}.x86_64.deb.bin &&\
  rm -rf mcu

COPY fw_311_0x00004400_0x00007fff.dat /data/
COPY fw_311_0x00050000_0x0007afff.dat /data/

ENV TOOLCHAIN_PATH /usr/local/mcuxpressoide/ide/tools/bin
ENV PATH $TOOLCHAIN_PATH:$PATH
