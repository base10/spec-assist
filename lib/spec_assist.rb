module SpecAssist
  LORUM = "Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummynibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.  Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.  Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummynibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.  Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.  Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummynibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.  Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.  Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummynibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.  Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.  Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi."

  def check_nullness(fields)
    fields.each do |method|
      it "should not allow #{method} to be nil" do
        @obj.send( method.to_s + '=', nil )
        @obj.should_not be_valid
      end
    end
  end

  def check_min_length(fields, length)
    fields.each do |method|
      it "should require #{method} to be at least #{length.to_s} chars." do
        min = length.to_i - 1
        @obj.send( method.to_s + '=', get_string(min) )

        @obj.should_not be_valid
      end
    end
  end

  def check_max_length(fields, length)
    fields.each do |method|
      it "should require #{method} to be #{length.to_s} chars or less." do
        max = length.to_i + 1
        @obj.send( method.to_s + '=', get_string(max) )

        @obj.should_not be_valid
      end
    end
  end

  def check_unique_field(a, b, field)
    b.send( field.to_s + '=', a.send( field ) )
    b.should_not be_valid
  end

  def get_string(length=255)
    str = LORUM[0, length.to_i]
    return str
  end

  def varchar32
    return get_string(33)
  end

  def varchar100
    return get_string(103)
  end

  def varchar255
    return get_string(260)
  end
end
