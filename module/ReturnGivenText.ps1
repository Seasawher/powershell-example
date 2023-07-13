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
