{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  packages = with pkgs; [
    bun
    svelte-language-server
    typescript-language-server
  ];

  shellHook = ''
    # Lägger till lokala binärer från projektet i PATH
    export PATH="$PWD/node_modules/.bin:$PATH"
    echo "Bun $(bun --version) redo för Svelte-utveckling!"
  '';
}
