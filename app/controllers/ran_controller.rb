class RanController < ApplicationController
  def new
    xt=0
    nn = params[:N].to_i
    d = params[:d].to_i
    a = params[:a].to_i
    c = params[:c].to_i
    arr = [0]
    1.upto(nn-1) do |n|
      xt=(d.to_i*xt*xt+a*xt+c) % n
      arr.push(xt)
    end
    render json: arr.to_json
  end
end
