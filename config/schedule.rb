every :hour do
  command "ping -c 1 www.ericrstensland.com"
end

every :minute do
  command "echo blah"
end