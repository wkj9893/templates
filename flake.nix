{
  description = "Nix Flake Templates";

  outputs = { self }: {
    templates = {
      default = {
        path = ./default;
      };

      go = {
        path = ./go;
      };
    };
  };
}
