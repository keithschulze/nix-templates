# nix-templates

Some basic Nix flake templates to use for projects.

Based on [peppe.rs blog](https://peppe.rs/posts/novice_nix:_flake_templates/).

# Usage

If you want to see the available templates:

```sh
❯ nix flake show github:keithschulze/nix-templates

github:keithschulze/nix-templates/8f619390bbafa988ee62a0f00e31fc3456c4561a
└───templates
    ├───basic: template: A very basic project template
    ├───node: template: A basic Node project template
    └───pythonPoetry: template: A basic Poetry project template
```

You can init a new project with:

```sh
nix flake init -t github:keithschulze/nix-templates#basic
```

[Optionally] alias template repo in your Nix registry for easier access:

```sh
nix registry add ks github:keithschulze/nix-templates
```

and then

```sh
nix flake init -t ks#basic
```
