{inputs, ...}: {
  perSystem = {
    config,
    pkgs,
    system,
    inputs',
    self',
    ...
  }: {
    packages = {
      dotnet-sdk = pkgs.dotnet-sdk_7;
    };
  };
}
