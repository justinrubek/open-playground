{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nix-filter.url = "github:numtide/nix-filter";
    fenix = {
      url = "github:nix-community/fenix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    crane = {
      url = "github:ipetkov/crane";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs:
    inputs.flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux"];
      imports = [
        ./flake-parts/shells.nix
        ./flake-parts/rust-toolchain.nix
        ./flake-parts/python.nix
        ./flake-parts/cargo.nix
        ./flake-parts/nodejs.nix
        ./flake-parts/dotnet.nix
        ./flake-parts/java.nix
      ];
    };
}
