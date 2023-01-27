const path = require('path');
const fs = require('fs')

test('Dockerfile exists', () => {
  const filePath = path.join(__dirname, "Dockerfile")
  expect(fs.existsSync(filePath)).toBeTruthy();
});

test('Jenkinsfile file exists', () => {
  const filePath = path.join(__dirname, "Jenkinsfile")
  expect(fs.existsSync(filePath)).toBeTruthy();
});

