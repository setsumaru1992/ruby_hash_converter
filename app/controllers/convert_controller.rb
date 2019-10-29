class ConvertController < ApplicationController
  def index
    @convert_target ||= "{'a' => 1, b: {x: 9, y: 8}}"
  end

  def convert
    @convert_target = params[:convert_target]
    converted_hash = eval(@convert_target)
    @converted = JSON.pretty_generate(converted_hash)
    render "convert/index"
  end
end
