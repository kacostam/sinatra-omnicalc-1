require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:new_square_calc)
end


# number square calculator
get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num = params.fetch("number").to_f
  @the_result = @the_num ** 2
  erb(:square_results)
end


# number square root calculator
get("/square_root/new") do
  erb(:new_square_root_calc)
end

get("/square_root/results") do
  @the_num = params.fetch("user_number").to_f
  @the_result = @the_num ** 0.5
  erb(:square_root_results)
end


# payment calculator
get("/payment/new") do
  erb(:payment_calc)
end

get("/payment/results") do
  @the_apr = params.fetch("user_apr").to_f
  @num_periods = params.fetch("user_years").to_f
  @the_principal = params.fetch("user_pv").to_f


  @r = @the_apr / 100 / 12 
  @n = @num_periods*12

  @numerator = @r * (1 + @r) ** @n
  @denominator = (1 + @r) ** @n - 1

  @the_result =  @the_principal * @numerator / @denominator
  erb(:payment_results)
end


# random number picker
get("/random/new") do
  erb(:random_calc)
end

get("/random/results") do
  @min = params.fetch("user_min").to_f
  @max = params.fetch("user_max").to_f
  @the_result = rand(@min..@max)
  erb(:random_results)
end
