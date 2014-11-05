NR==1{
    su = $2-$1
    sum = su
    min= su
    max= su
}
{
    su=($2-$1)
    if(min>su)min = su
    if(max<su)max = su
    sum+=su 
}
END{
    print "avg,min,sub\n"
    print sum/NR,min,max
}
