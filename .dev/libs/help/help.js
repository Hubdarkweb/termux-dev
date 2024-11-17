import Table from "cli-table3";
import chalk from "chalk";

const table = new Table({
  head: ["Argument", "Option", "Description"],
  colWidths: [10, 10, 30],
  style: {
    head: ["red", "bold"],
    border: ["grey"],
    compact: true,
    'column-separator': ' ',
  },
});

table.push(
  [chalk.green("init"), chalk.cyan("react"), "init a setup for frontend"],
  [chalk.green("init"), chalk.cyan("express"), "init a setup for backend"],
  [chalk.green("deploy"), chalk.cyan("github"), "upload files to github"]
);

console.log('');
console.log(chalk.green("dev"), chalk.cyan("help"));
console.log('');
console.log(table.toString());
