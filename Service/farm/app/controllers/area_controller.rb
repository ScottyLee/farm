require 'builder'

class AreaController < ApplicationController


def gettypes
  doc = Builder::XmlMarkup.new( :target => out_string = "", :indent => 2 )
  doc.AreaTypes{
  ItemType.find(:all).each { |item|
      doc.ItemType("id" => item[:id], "name" => item[:name])
    }
  }
  render :xml => out_string;
end;

def getitems
  @area = Area.find(params[:id]);
  doc = Builder::XmlMarkup.new( :target => out_string = "", :indent => 2 )
  doc.Area{
      @area.area_items.each { |element|
        doc.AreaItem("id" => element[:id]);
      }
  }

  render :xml => out_string;
end

def getallitems
  #@area = Area.find(params[:id]);
  doc = Builder::XmlMarkup.new( :target => out_string = "", :indent => 2 )
  doc.AreaItem{
      AreaItem.find(:all).each { |element|
        doc.AreaItem("id" => element[:id], "x" => element[:x], "y" => element[:y] , "area_id" => element[:area_id], "item_type_id" => element[:item_type_id]);
      }
  }

  render :xml => out_string;
end

def getalltypeimg
  doc = Builder::XmlMarkup.new( :target => out_string = "", :indent => 2 )
  doc.ImgTypes{
      TypePic.find(:all).each { |element|
        doc.AreaItem("id" => element[:id], "src" => element[:src]);
      }
  }
  render :xml => out_string;
end



def inst
  begin
    @area = Area.new()
    #думал завести таблицу toolbox'ов но решил не пыжится ибо они в большинстве своем одинаковы
    #обойдусь картинками кнопок
    @area.inc_button = "http://"+request.host_with_port + "/images/inc.png";
    @area.dec_button = "http://"+request.host_with_port + "/images/dec.png";
    @area.collect_button = "http://"+request.host_with_port + "/images/collect.png";
    @area.background = "http://"+request.host_with_port + "/images/BG.jpg";
    @area.storage_button = "http://"+request.host_with_port + "/images/collect.png";
    @area.storage = 0;
    @area.save!();

    ['sunflower', 'potato', 'clover'].each { |item|
      @item_type = ItemType.new();
      @item_type.name = item;
      @item_type.maxstate = 4;#Вроде как 4 :))
      @item_type.save!();
      i=0;
      while i<=4
        @type_pic = TypePic.new();
        @type_pic.src = "http://"+request.host_with_port + "/images/#{item}/Image #{i}.png";
        @type_pic.state = i;

        @type_pic.save();

        @item_type.type_pics << @type_pic;
        i+=1;
      end
    }
    ret_ok("inst: sunccesful");
  rescue Exception=>e
    ret_err(e)
  end
end;

def incall
  begin
    @area = Area.find(params[:id]);
    @area.area_items.each { |element|
      element.inc_state;
    }
  ret_ok("incall: sunccesful");
  rescue Exception=>e
    ret_err(e)
  end
end

def ret_ok(msg)
  doc = Builder::XmlMarkup.new( :target => out_string = "", :indent => 2 )
    doc.Message{
      doc.Status("Type" => "0", "Message" => msg);
    }
   render :xml => out_string;
end

def ret_err(e)
  doc = Builder::XmlMarkup.new( :target => out_string = "", :indent => 2 )
    doc.Message{
      doc.Status("Type" => "1", "Message" => e.message);
    }
    render :xml => out_string;
end

def decall
  begin
    @area = Area.find(params[:id]);
      @area.area_items.each { |element|
    element.dec_state;
    }
    ret_ok("decall: sunccesful");
  rescue Exception=>e
    ret_err(e)
  end
end


def plant
  begin
    @_area = Area.find(params[:area]);
    @_type = ItemType.find(params[:type]);
    @_item = AreaItem.new();
    @_item.x = params[:x];
    @_item.y = params[:y];
    @_item.maxstate = 4;
    @_item.state = params[:state];
    @_item.save();
    @_area.area_items << @_item;
    @_type.area_items << @_item;

    doc = Builder::XmlMarkup.new( :target => out_string = "", :indent => 2 )
    doc.AreaItem("id" => @_item[:id], "x" => @_item[:x], "y" => @_item[:y], "item_type_id" => @_item[:item_type_id], "state" => @_item[:state], "maxstate" => @_item[:maxstate]);
    render :xml => out_string;

#    ret_ok("Plant: sunccesful");

  rescue Exception=>e
    ret_err(e)
  end
end

def getarea
  @area = Area.find(params[:id]);
  doc = Builder::XmlMarkup.new( :target => out_string = "", :indent => 2 )
  doc.Area("background" => @area[:background], "storagevolume" => @area[:storage] ){
      doc.Field{
          @area.area_items.each { |element|
          doc.AreaItem("id" => element[:id], "x" => element[:x], "y" => element[:y], "item_type_id" => element[:item_type_id], "state" => element[:state], "maxstate" => element[:maxstate]);
        }
      }

    doc.AreaType{
      ItemType.find(:all).each { |t_it|
        doc.ItemType("item_type_id" => t_it[:id], "name" => t_it[:name], "maxstate" => t_it[:maxstate]){
            t_it.type_pics.each { |pic|
              doc.TypePic("src" => pic[:src], "state" => pic[:state]);
            }
         }
       }
     }
    doc.ToolBox{#Эти кнопи есть и будут всегда независимо от типов растений
      doc.IncButton("src" => @area[:inc_button]);
      doc.DecButton("src" => @area[:dec_button]);
      doc.CollectButton("src" => @area[:collect_button]);
      doc.StorageButton("src" => @area[:collect_button]);
    }
  }
  
  render :xml => out_string;
end

def collect
    begin
      #Собираем итем
      @_area = Area.find(params[:area]);
      @item = @_area.area_items.find(params[:item]);
      @item.delete();#SQL Delete тут самое оно ибо ссылки обеспечивались аттрибутами в таблице
      @_area.storage+=1;
      @_area.save();
      doc = Builder::XmlMarkup.new( :target => out_string = "", :indent => 2 )
      doc.Storage("volume" => @_area[:storage], "lastitem" => params[:item]);
      render :xml => out_string;
   rescue Exception=>e
    ret_err(e)
  end
end
end;
