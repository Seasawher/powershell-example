$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.ps1', '.psm1'
Import-Module "$here\$sut" -Force

describe 'ReturnGivenText' {
    it "入力として HelloWorld が与えられたら，それを返す" {
        ReturnGivenText -text "HelloWorld" | Should Be "HelloWorld"
    }
}