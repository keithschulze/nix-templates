{
  description = "Keith's flake templates";

  outputs = { self, nixpkgs }: {
    templates = {
      basic = {
        path = ./basic;
        description = "A very basic project template";
      };
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
