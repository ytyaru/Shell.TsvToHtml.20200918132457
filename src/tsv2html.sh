#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# TSVをHTMLに変換する。
# CreatedAt: 2020-09-18
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$HERE";
	ToHtmlUl() { echo "<ul>$1</ul>"; }
	ToHtmlLi() { echo "<li>$1</li>"; }
	ToHtmlRuby() { echo "<ruby>$2<rt>$1</rt></ruby>"; }
	NAMES=()
	IFS=$'\n'
	for YK in $(cat -); do
		YOMI="$(echo -e "$YK" | cut -f1)"
		KAKI="$(echo -e "$YK" | cut -f2)"
		NAMES+=("$(ToHtmlLi "$(ToHtmlRuby "$YOMI" "$KAKI")")")
	done
	HTML="$(ToHtmlUl "$(IFS=$'\n'; echo "${NAMES[*]}")")"
	zenity --text-info --html --title='日本人名をランダム生成する' --filename=<(echo "$HTML")
}
Run
