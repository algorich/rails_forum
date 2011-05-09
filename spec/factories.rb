Factory.define :category, :class => RailsForum::Category do |c|
  c.name "Some name"
  c.description "Some description"
end

Factory.define :topic, :class => RailsForum::Topic do |t|
  t.title "This is a topic"
  t.content "This the content of this particular topic."
  t.association :category
end

Factory.define :message, :class => RailsForum::Message do |m|
  m.content "This is a message!!"
  m.association :topic
end

