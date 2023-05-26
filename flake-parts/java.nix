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
      jdk = pkgs.jdk17;
    };
  };
}
