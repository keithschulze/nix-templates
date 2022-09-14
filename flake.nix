{
  description = "Keith's flake templates";

  outputs = { self, nixpkgs }: {
    templates = {
      pythonPoetry = {
        path = ./poetry;
        description = "A basic Poetry project template";
      };
      node = {
        path = ./node;
        description = "A basic Node project template";
      };
    };
  };
}
