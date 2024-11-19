case File.read("data/2023/012023.txt") do
  {:ok,file} ->
    splitted_string = String.split(file,"\n")
    sum = 0
    Enum.map(splitted_string,fn val ->
      {int_val,"\r"} = Integer.parse(Regex.replace(~r/[a-z]/,val,""))
    end)
  {:error, reason} -> IO.puts reason
end
