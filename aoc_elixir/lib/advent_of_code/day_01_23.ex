defmodule AdventOfCode.Day0123 do
  def part1(path) do
    case File.open(path,[:read]) do
      {:ok,file} ->
        Stream.unfold(file, fn f ->
          case IO.read(f, :line) do
            :eof -> nil
            line -> {line, f}
          end
        end)
        |> Enum.each(fn zeile ->
          IO.puts("Gelesene Zeile: #{zeile}")
        end)
        File.close(file)
        {:error, reason} ->
          IO.puts("Fehler beim Öffnen der Datei: #{reason}")
    end
  end

  def part2(_args) do
  end
end