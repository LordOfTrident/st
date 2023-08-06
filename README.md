<p align="center"><img width="350px" src="./res/logo.png"></p>
<p align="center">
	<a href="./LICENSE">
		<img alt="License" src="https://img.shields.io/badge/license-MIT%2FX Consortium-26c374?style=for-the-badge">
	</a>
	<a href="https://github.com/LordOfTrident/st/issues">
		<img alt="Issues" src="https://img.shields.io/github/issues/LordOfTrident/st?style=for-the-badge&color=4f79e4">
	</a>
	<a href="https://github.com/LordOfTrident/st/pulls">
		<img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/LordOfTrident/st?style=for-the-badge&color=4f79e4">
	</a>
	<br><br><br>
</p>

This is my own [suckless st](https://st.suckless.org/) modification which adds:
- A blinking cursor
- Background transparency
- A JSON config file (`~/.config/st.json`)
- Rows and cols command line options
- New command line arguments system

## Table of contents
* [Quickstart](#quickstart)
* [Bugs](#bugs)

## Quickstart
```sh
$ git clone --recurse-submodules https://github.com/lordoftrident/st
$ cd st
$ make install
$ st
```

> Note: It has to be cloned with `--recurse-submodules`.

## Bugs
If you find any bugs, please create an issue and report them.
