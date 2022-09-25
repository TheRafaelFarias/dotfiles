#!/usr/bin/env node

const fs = require("fs");
const globby = require("fast-glob");
const path = require("path");
const { exec } = require("child_process");

async function deleteAllFolders(folder) {
  const folders = await globby(`**/${folder}/**/**/**/**/**/**/**`, {
    onlyDirectories: true,
    dot: true,
  });

  folders.map((folderToDelete) => exec(`rm -rf ${folderToDelete}`));
}

console.log("Deleting all node_modules in this folder and it's subfolders");
deleteAllFolders("node_modules");

console.log("Deleting all .next in this folder and it's subfolders");
deleteAllFolders(".next");
