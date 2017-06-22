def subtractFrom100(n)
  if n == 0
    puts n
  else
    puts n
    subtractFrom100(n-1)
  end
end
# subtractFrom100 100

def subtractUpdate(n)
  puts n
  subtractUpdate(n-1) unless n == 0
end
subtractUpdate(100)
