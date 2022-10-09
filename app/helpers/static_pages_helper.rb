module StaticPagesHelper
  def full_title(page_title = '')                
    title = "SNS APP" 
    if page_title.empty?                              
      title                                      
    else
      page_title + " | " + title                 
    end
  end

  def name( n = '')                
    no_name = "名無しさん" 
    if n.empty?                              
      no_name                                     
    else
      n + "さん" + "はじめまして！！"   
    end
  end
end