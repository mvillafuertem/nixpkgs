{
  lib,
  fetchCrate,
  rustPlatform,
}:

rustPlatform.buildRustPackage rec {
  pname = "b3sum";
  version = "1.5.5";

  src = fetchCrate {
    inherit version pname;
    hash = "sha256-PgtQc8rwIbiHAue323POh15png7DerZbCuAKLi+jEYE=";
  };

  useFetchCargoVendor = true;
  cargoHash = "sha256-4RD6GcBGUHMXS8BYs1NqpR3fVul2J3qh5E4MFnMbwoE=";

  meta = {
    description = "BLAKE3 cryptographic hash function";
    mainProgram = "b3sum";
    homepage = "https://github.com/BLAKE3-team/BLAKE3/";
    maintainers = with lib.maintainers; [
      fpletz
      ivan
    ];
    license = with lib.licenses; [
      cc0
      asl20
    ];
    changelog = "https://github.com/BLAKE3-team/BLAKE3/releases/tag/${version}";
  };
}
