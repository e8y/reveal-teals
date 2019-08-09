## Building the TEALS theme

Note: you _only_ need to do this if you modify `source/teals.scss` and need to regenerate `teals.css`

1. Copy the following from `revealjs/` to `teals/`

    * `gruntfile.js`
    * `package*.json`

2. Install the `node.js` dependencies: `npm install`

    * Per instructions from `revealjs/README.md#full-setup`

3. Rebuild CSS from the `teals/` directory: `npm run build -- css-themes`

    * Per instructions from `revealjs/css/theme/README.md`

4. When done, you can remove the files copied from step 1

