$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.ps1', '.ps1'
Import-Module "$here\$sut" -Force

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
