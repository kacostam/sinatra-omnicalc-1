require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:hello)
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square_root/new") do
  erb(:square_root)
end

get("/payment/new") do
  erb(:payment)
end

get("/random/new") do
  erb(:random)
end

get("/square/results") do
  erb(:square_results)
end
