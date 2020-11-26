$i=0;
$header = Get-Content F:\\title.basics.tsv\\data.tsv -TotalCount 1
Get-Content F:\\title.basics.tsv\\data.tsv -ReadCount 50000 | ForEach-Object {
    $i++
    if ($i -ne 1)
    {
    	$header | Set-Content F:\\title.basics.tsv\\Pending\\out_$i.tsv
    }
    $_ | Add-Content F:\\title.basics.tsv\\Pending\\out_$i.tsv
    
}