String.class_eval do
  
  # encryp one string with key

  def to_encryp(key)
    src = self

    key_len = key.size
    key = 'Think Space' if key_len == 0
    key_pos = 0

    offset = rand(256);
    dest = sprintf("%1.2x", offset)
    src_pos = 0

    begin 
      src_asc = (src[src_pos].ord + offset) % 255
      src_asc = src_asc ^ key[key_pos].ord
      dest = dest + sprintf("%1.2x", src_asc)
      offset = src_asc;
      key_pos = key_pos < key_len - 1 ? key_pos + 1 : 0
      src_pos = src_pos + 1
    end until src_pos >= src.size

    dest
  end

  # uncryp one encryped string with key

  def to_uncryp(key)
    src = self

    key_len = key.size
    key = 'Think Space' if key_len == 0
    key_pos = 0

    offset = sprintf("%d", '0x' + src[0,2]).to_i
    src_pos = 2
    dest = ''

    begin
      src_asc = sprintf("%d", '0x' + src[src_pos,2]).to_i
      tmp_src_asc = src_asc ^ key[key_pos].ord
      tmp_src_asc = tmp_src_asc <= offset ? 255 + tmp_src_asc - offset : tmp_src_asc - offset
      dest = dest + tmp_src_asc.chr
      offset = src_asc
      key_pos = key_pos < key_len - 1 ? key_pos + 1 : 0
      src_pos = src_pos + 2
    end until src_pos >= src.size
    
    dest
  end
end

# format an integer

BigDecimal.class_eval do
  def commas
    str = sprintf("%0.2f",self).to_s.reverse
    str.gsub!(/([0-9]{3})/,"\\1,")
    str.gsub(/,$/,"").reverse
  end  
end

Integer.class_eval do
  def commas
    str = sprintf("%0.2f",self).to_s.reverse
    str.gsub!(/([0-9]{3})/,"\\1,")
    str.gsub(/,$/,"").reverse
  end  
end

# format a float

Float.class_eval do
  def commas
    str = sprintf("%0.2f",self).to_s.reverse
    str.gsub!(/([0-9]{3})/,"\\1,")
    str.gsub(/,$/,"").reverse
  end  
end

