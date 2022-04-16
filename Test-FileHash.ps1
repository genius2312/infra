function Test-FileHash{
    [OutputType([bool])]
    param(
        $filepath,
        $md5
    )
    process{
        $realvalue = (get-FileHash -path $filepath -algorithm md5).md5
        return ($realvalue -eq $md5)
    }
}
