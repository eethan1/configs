#! /usr/bin/env node
const yaml = require('js-yaml')
const fs = require('fs')
const filename = process.argv[2]

function extendRef(root, sub = root) {
  for (const k in sub) {
    if (k === '$ref') {
      let src = root
      for (const part of sub[k].split('/').slice(1)) {
        src = src[part]
      }
      extendRef(root, src)
      delete sub[k]
      Object.assign(sub, src)
    } else if (sub[k] !== null && typeof sub[k] === 'object') {
      extendRef(root, sub[k])
    }
  }
  return root
}

try {
  let doc = yaml.load(fs.readFileSync(filename, 'utf8'))
  const outputFile = filename.replace('.yaml', '.ext.yaml')
  doc = extendRef(doc)
  console.log(doc['definitions']['ErrorResponse']['properties'])
  const data = yaml.dump(doc, {noRefs: true})

  fs.writeFileSync(outputFile, data)
  console.log(`Succeed write to ${outputFile}`)
} catch (e) {
  console.error(e)
}
