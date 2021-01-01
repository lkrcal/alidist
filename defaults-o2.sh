env:
  CFLAGS: -fPIC -O2
  CMAKE_BUILD_TYPE: RELWITHDEBINFO
  CXXFLAGS: -fPIC -O2 -std=c++17
  CXXSTD: '17'
  ENABLE_VMC: 'ON'
  GEANT4_BUILD_MULTITHREADED: 'ON'
overrides:
  AliPhysics:
    version: '%(commit_hash)s_O2'
  AliRoot:
    requires:
    - ROOT
    - DPMJET
    - fastjet:(?!.*ppc64)
    - GEANT3
    - GEANT4_VMC
    - Vc
    - ZeroMQ
    - JAliEn-ROOT
    version: '%(commit_hash)s_O2'
  O2:
    tag: rc/nightly-20210101
    version: '%(tag_basename)s'
  XRootD:
    source: https://github.com/xrootd/xrootd
    tag: v4.11.1
  cgal:
    version: 4.12.2
  fastjet:
    tag: v3.3.3_1.042-alice1
  pythia:
    requires:
    - lhapdf
    - boost
    tag: v8302
package: defaults-o2
version: v1

---
# This file is included in any build recipe and it's only used to set
# environment variables. Which file to actually include can be defined by the
# "--defaults" option of alibuild.
