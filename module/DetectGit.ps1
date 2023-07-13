function DetectGit {
    <#
    .SYNOPSIS
    Gitリポジトリかどうか判定する

    .OUTPUTS
    GitリポジトリならTrue, そうでなければFalse
    #>
    Param (
        [String]
        # 対象となるディレクトリ
        $workdir
    )
    Set-Location -Path $workdir

    $gitPath = Join-Path $workdir ".git"
    $gitExists = Test-Path -Path $gitPath

    Set-Location -Path $PSScriptRoot
    return $gitExists
}
