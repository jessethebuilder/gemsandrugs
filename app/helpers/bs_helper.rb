module BsHelper
  def bs_top_nav(brand_name, div_id: 'top_nav')
    render :partial => 'parts/bs_top_nav', :locals => { brand_name: brand_name, :id => div_id }
  end
end