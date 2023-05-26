{inputs, ...}: {
  perSystem = {
    config,
    pkgs,
    system,
    inputs',
    self',
    ...
  }: let
  in {
    packages = {
      inherit (pkgs) yarn nodejs;
    };
  };
}
