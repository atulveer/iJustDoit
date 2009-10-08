module TasksHelper
  def priority_options
     [ ['Critial', 1], ['Medium', 2], ['Low', 3]]
   end
   def get_priority(priority)
     case priority
       when 1 then  return 'Critical'
       when 2  then return 'Medium'
       when 3  then return 'Low'
     end
   end
   def get_category(category_id)
     category = Category.find(category_id)
     if category
        return category.name.capitalize
     else
       return "-"
     end    
       
   end
  
   
end
