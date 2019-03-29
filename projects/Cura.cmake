option(CURA_ENABLE_DEBUGMODE "Enable crash handler and other debug options in Cura" OFF)

ExternalProject_Add(Cura
    DOWNLOAD_COMMAND ""
    SOURCE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../Cura
    CMAKE_ARGS -DCMAKE_INSTALL_PREFIX=${EXTERNALPROJECT_INSTALL_PREFIX}
        -DCMAKE_PREFIX_PATH=${CMAKE_PREFIX_PATH}
        -DURANIUM_SCRIPTS_DIR=
        -DCURA_VERSION=${CURA_VERSION}
        -DCURA_DEBUGMODE=${CURA_ENABLE_DEBUGMODE}
        -DCURA_SDK_VERSION=${CURA_SDK_VERSION}
        -DCURA_CLOUD_API_ROOT=${CURA_CLOUD_API_ROOT}
        -DCURA_CLOUD_API_VERSION=${CURA_CLOUD_API_VERSION}
        -DCURA_CLOUD_ACCOUNT_API_ROOT=${CURA_CLOUD_ACCOUNT_API_ROOT}
)

SetProjectDependencies(TARGET Cura DEPENDS Uranium CuraEngine)
