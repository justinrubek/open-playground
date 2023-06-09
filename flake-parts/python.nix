{inputs, ...}: {
  perSystem = {
    config,
    pkgs,
    system,
    inputs',
    self',
    ...
  }: let
    python-packages = (
      ps:
        with ps; [
          requests
        ]
    );

    python = pkgs.python3.withPackages python-packages;
  in {
    packages = {
      inherit python;
    };
  };
}
