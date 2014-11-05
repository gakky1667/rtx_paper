#!/bin/sh

cat $1 | awk -F "," -v OFS=, '
NR==1{
  max_init = $1
  min_init = $1
  sum_init = $1
  max_notify = $2
  min_notify = $2
  sum_init = $2
}
{
  if($1 > max_init) max_init = $1
  if($2 > max_notify) max_notify = $2
  if($1 < min_init) min_init = $1
  if($2 < min_notify) min_notify = $2
  sum_init += $1
  sum_notify += $2
}
END{
print 0,"Init",sum_init/NR, min_init, max_init
print 1,"Notify",sum_notify/NR, min_notify, max_notify
}

'

