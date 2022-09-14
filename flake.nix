{
  description = "Keith's flake templates";

  outputs = { self, nixpkgs }: {
    templates = {
      pythonPoetry = {
        path = ./poetry;
        description = "A basic Poetry project template";
      };
    };
  };
}
