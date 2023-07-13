function ReturnGivenText {
    <#
    .SYNOPSIS
    引数で与えられた文字列をそのまま返す関数

    .PARAMETER text
    文字列

    .OUTPUTS
    与えられた文字列
    #>
    Param(
        [parameter(Mandatory=$true)][string]$text
    )

    return $text
}

describe 'ReturnGivenText' {
    it "入力として HelloWorld が与えられたら，それを返す" {
        ReturnGivenText -text "HelloWorld" | Should Be "HelloWorld"
    }
}