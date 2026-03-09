module test_pkgs_kangarootwelve_k12

using Test
using KangarooTwelve

@test k12("a")   == 0x127fe10dabd37226d158e632536bad9e
@test k12("abc") == 0x608bbf9197200b0b51a5558c324f17ab

end # module test_pkgs_kangarootwelve_k12
