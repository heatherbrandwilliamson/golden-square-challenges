require 'reading_text'

# estimate of reading time for a text, assuming that I can read 200 words a minute.

RSpec.describe "estimate reading time for a text" do
    it "returns number of minutes" do 
    text = "Aenean pharetra platea pulvinar porta 
    lacinia urna maecenas senectus quisque. Aenean primis euismod. 
    Quam vivamus cras elit. Lacinia lectus dignissim imperdiet massa. 
    Imperdiet pellentesque. Nec sit erat. Neque Vel, ultrices lobortis aliquam lectus 
    litora Vehicula, porttitor sollicitudin dignissim. Quam aenean Curae; convallis justo 
    sit amet tortor montes hac in varius. Placerat. Hac. Mauris eleifend commodo orci. 
    Magna etiam dolor augue pretium. Massa elit sed ridiculus, libero vitae. Interdum 
    penatibus fames cubilia enim risus pellentesque curae; fringilla. Vestibulum cubilia 
    non non volutpat litora posuere laoreet aliquet senectus suspendisse sem velit 
    inceptos, lectus etiam. Dolor urna id morbi quisque rhoncus ultricies facilisi. 
    Sagittis. Cursus platea metus, torquent velit habitant enim, ornare primis eleifend. 
    Sollicitudin nisi suscipit mattis orci libero tristique mi. Ad ad erat interdum. 
    Sit facilisis vestibulum risus odio. Morbi. Nulla Magna curae; dolor pretium 
    phasellus eleifend at inceptos tincidunt nisi tellus hac turpis. Facilisi aenean 
    feugiat vivamus per facilisi pretium sociosqu. Molestie tortor aptent conubia mauris, 
    interdum lobortis risus tortor viverra dapibus aenean, augue sociosqu nisl integer 
    habitant vivamus lorem et pretium adipiscing torquent sem nulla accumsan, nullam. 
    Varius aliquam habitasse maecenas habitant ligula curae; condimentum. Per vel velit
     ullamcorper magnis aliquam a sociis sed. Iaculis convallis parturient nullam velit 
     velit ultrices nec posuere rutrum. Quisque. Rutrum nonummy In sapien fames conubia 
     malesuada est Malesuada maecenas litora sed erat vestibulum class senectus tincidunt 
     donec parturient Sociis lorem convallis. Etiam viverra vehicula mi varius pulvinar, velit. 
     Nec cursus laoreet arcu arcu ullamcorper tempor proin dignissim venenatis dis vivamus ipsum 
     enim fames Fusce turpis pulvinar ad mattis Cras faucibus sollicitudin tincidunt orci venenatis 
     non primis nam Netus integer mollis mus lobortis blandit bibendum lorem egestas mus. Sit diam. 
     Vitae pede imperdiet sagittis quam rhoncus tellus blandit quisque cursus ligula. Elementum cursus 
     eros facilisi. Et egestas aliquam convallis ultrices consequat. Turpis quisque arcu. Commodo lorem 
     nibh quis sociosqu praesent cubilia. Litora cubilia diam suscipit rhoncus ac nascetur. Aptent conubia 
     augue diam. Ornare phasellus sapien est semper quisque. Justo. Metus magnis nibh sociis, integer 
     vestibulum euismod volutpat. Tellus dignissim massa sed etiam eget lacinia morbi venenatis fringilla 
     in varius magna lorem fusce aliquam. Tortor augue facilisis vestibulum scelerisque, mi enim. Per 
     potenti torquent tortor ultrices. Cursus. Tincidunt sit mauris, euismod arcu luctus odio a ridiculus 
     quis, hymenaeos lobortis nullam maecenas. Varius ante massa. Cum eleifend pharetra eu rutrum erat. 
     Imperdiet eros blandit. Ornare hendrerit accumsan phasellus vivamus massa. Cras tellus porta habitasse 
     sollicitudin semper morbi ipsum consequat erat quis velit fames in Ullamcorper justo maecenas 
     lobortis suscipit hendrerit vehicula tempor Neque tempus sodales senectus. Metus penatibus dolor, a. 
     Libero, donec leo molestie sollicitudin blandit nisi mauris. Iaculis vivamus. Iaculis. 
     Non ultricies egestas hendrerit eros lectus, leo litora parturient. Ornare sem ac. 
     Vitae aliquet integer adipiscing praesent lorem lorem, cursus nisl lorem Sed sociosqu 
     pretium justo massa tristique consequat Nibh mauris sapien imperdiet curabitur, auctor ligula 
     habitant. Neque cubilia pede cubilia aliquet curae; tempor odio taciti dapibus Habitant leo sociosqu, 
     cursus eleifend. Ut est nunc elit duis amet. Dictum class conubia. Hymenaeos nisi eros nostra aptent 
     suspendisse erat enim varius hac donec mauris diam justo conubia mus. Pretium dui a habitasse interdum 
     suscipit eros consectetuer hendrerit orci nulla euismod Sit neque magna aliquam at erat maecenas platea 
     mi eleifend ridiculus ornare. Phasellus tempus mollis per laoreet. Laoreet, feugiat lobortis eleifend 
     nullam aliquet dui curabitur sagittis orci porttitor sollicitudin, torquent primis metus magna hac 
     sociis etiam. Potenti faucibus, nisi leo faucibus vehicula, lorem cubilia. Iaculis consequat cubilia 
     class felis. Fringilla feugiat purus. Faucibus, proin duis vestibulum. Lorem egestas diam risus, 
    elementum aptent malesuada Aenean convallis penatibus leo luctus suscipit et. Tincidunt 
    parturient augue bibendum congue libero." 
    result = Reading_text(text) 
      expect(result).to eq 3 # equates to 5 mins.
    end 
    it "returns zero if empty string" do 
    text = "" 
    result = Reading_text(text) 
      expect(result).to eq 0 # equates to 0 mins.
    end   
end 