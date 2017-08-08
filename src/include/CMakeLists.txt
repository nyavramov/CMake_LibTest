add_library(Megatron megatron.cpp)

install (TARGETS Megatron DESTINATION bin)
install (FILES Megatron.h DESTINATION include)
