build_package(){
    ./build-package.sh $1
}
		build_package apt
		build_package game-repo
		build_package science-repo

	# Core utilities.
	build_package bash
	build_package bzip2
	build_package command-not-found
	
    build_package proot
	
	build_package coreutils
	build_package curl
	build_package dash
	build_package diffutils
	build_package findutils
	build_package gawk
	build_package grep
	build_package gzip
	build_package less
	build_package procps
	build_package psmisc
	build_package sed
	build_package tar
	build_package termux-exec
	build_package termux-tools
	build_package util-linux
	build_package xz-utils

	# Additional.
	build_package ed
	build_package debianutils
	build_package dos2unix
	build_package inetutils
	build_package lsof
	build_package nano
	build_package net-tools
	build_package patch
	build_package unzip