function ReturnGivenText {
    <#
    .SYNOPSIS
    Returns the string given as argument as is
    #>
    Param(
        [string]$text
    )

    return $text
}