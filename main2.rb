class Hash
  def safe_invert
    dict = Hash.new
    each do |key,value|      
      if !dict[value]   
        dict[value] = []
      end 
      dict[value] << key
    end
    dict
  end
end

fruits =  {
'orange' => 'Marocco',
'banana' => 'Ecuador',
'lemon' => 'Marocco'
} 

invert_fruits = fruits.safe_invert
p invert_fruits['Marocco'] 
p invert_fruits['Ecuador'] 
