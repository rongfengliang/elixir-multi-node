defmodule Clusterdemo do

  use  GenServer

  def start_link() do
     GenServer.start_link(__MODULE__,[],name: __MODULE__)
  end

  def getuser(name) do
    GenServer.call(__MODULE__, {:get, name})
  end

  def init(args) do
    {:ok,args}
  end

  def handle_call({:get, name}, _from, _data) do
    {:reply, name<>" appdemo ", name}
  end

  def main(_params) do
   IO.puts hello()
  end

  def hello do
    :world
  end
end
