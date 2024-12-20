# @dedevs/vscode-web

This is the companion NPM package to support dedevs. The NPM package is [@dedevs/vscode-web](https://www.npmjs.com/package/@dedevs/vscode-web).

## Commands

`yarn clone` - clone the official VS Code repo.

`yarn build` - build the VS Code with the custom code under `src`.

`yarn watch` - watch the code change under `src` directory and rebuild VS Code.

## Local Development

There are two ways to do local development with vscode-web. For feature development, you could use the `yarn watch-with-vscode` under the root directory.

To verify the NPM package content itself before publish. You need to install the [yalc](https://github.com/wclr/yalc) first (`yarn global add yalc`).

Then run the following commands:

```sh
cd dedevs-vscode
yarn build:vscode # Build VSCode
yarn yalc # Install local package via yalc

yarn build # Build dedevs-vscode & other extensions
yarn serve
```

And visit the http://localhost:8080 to verify the change. Please revert any changes related to `yalc` before commit, i.e. the `package.json`, the `.yalc/` and `yalc.lock` files.

## Publish

To publish the NPM package, please make sure you have the right access via https://www.npmjs.com/ and run the following commands:

```sh
cd dedevs-vscode
cd vscode-web
yarn build
# bump the `version` field in vscode-web/package.json file.
npm publish --access public
```
