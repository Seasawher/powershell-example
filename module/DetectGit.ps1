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

describe 'DetectGit' {
    BeforeAll {
        $testPath = "TestDrive:\test.txt"
        Set-Content $testPath -value "my test text."
    }

    it "Gitリポジトリでなければ False を返す" {
        DetectGit -workdir $TestDrive | Should Be $false
    }

    it "Gitリポジトリなら True を返す" {
        Set-Location -Path $TestDrive
        git init
        DetectGit -workdir $TestDrive | Should Be $true
    }
}