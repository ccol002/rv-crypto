cmake_minimum_required(VERSION 3.1)

project(crypto_benchmark)

option(nss "Build NSS benchmark" ON)

set(CMAKE_CXX_FLAGS_RELEASE "-O3")

include_directories("secube-host")

find_package(Threads
	REQUIRED
)

if(nss)
	find_package(PkgConfig
		REQUIRED
	)
endif()


add_executable(crypto_benchmark
	"main.c"
	"utils.c"
	"utils.h"
		secube-host/aes256.c
		secube-host/aes256.h secube-host/crc16.h secube-host/crc16.c secube-host/L0.c secube-host/L0.h secube-host/L1.c
		secube-host/pbkdf2.c secube-host/L1.h secube-host/pbkdf2.h secube-host/se3_common.c secube-host/se3_common.h
		secube-host/se3c0def.h secube-host/se3c1def.h secube-host/se3comm.c secube-host/se3comm.h secube-host/sha256.c secube-host/sha256.h
)

target_link_libraries(crypto_benchmark
	PRIVATE
		Threads::Threads
)
if(nss)
	pkg_search_module(nss
		REQUIRED
		nss
	)

	target_compile_definitions(crypto_benchmark
		PRIVATE
			"BENCHMARK_NSS"
	)

	target_include_directories(crypto_benchmark
		PRIVATE
			${nss_INCLUDE_DIRS}
	)

	target_sources(crypto_benchmark
		PRIVATE
			"nss.c"
			"nss.h"
	)

	target_link_libraries(crypto_benchmark
		PRIVATE
			${nss_LIBRARIES}
	)
endif()
