xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Eventos"
    xml.description "RSS"
    xml.link posts_url(:rss)
    
    for post in @posts
      xml.item do
        xml.title post.nombre_evento
        xml.description post.descripcion
        xml.pubDate post.fecha
        xml.link post.id
        xml.guid post.id
      end
    end
  end
end
