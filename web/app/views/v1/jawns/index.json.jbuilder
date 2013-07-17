if params[:lite] == "true"
  json.array! @jawns do |jawn|
    type = jawn.class.to_s.downcase

    json.(jawn, :id)

    json.jawn_type type
  end
else
  json.array! @jawns do |jawn|
    type = jawn.class.to_s.downcase

    case type
    when "spark"
      json.partial! 'v1/sparks/spark', spark: jawn
    when "idea"
      json.partial! 'v1/ideas/idea', idea: jawn
    end

    json.jawn_type type
  end
end