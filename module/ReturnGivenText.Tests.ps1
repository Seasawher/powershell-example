$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.ps1', '.ps1'
Import-Module "$here\$sut" -Force

describe 'ReturnGivenText' {
    it "入力として何か文字列が与えられたら，それを返す" {
        ReturnGivenText -text "HelloWorld" | Should Be "HelloWorld"
        ReturnGivenText -text "GoodMorning" | Should Be "GoodMorning"
    }
}