class PageController < ApplicationController
  layout 'application'
  
  def index
    @title = "Homepage - Cameron Carroll"
  end
  
  def rubyboot
    @title = "Quick Start: Compiling Ruby and RVM"
  end
  
  def docroot
    @title = "Public Documents - Cameron Carroll"
  end
  
  def spree0
    @title = "Spree eCommerce Development: Step 0"
  end
  
  def spreeref
    @title ="Integrating Spree and Refinery using Rails Engines"
  end
  
  def gamedev
    @title = "Game Development & Design"
  end
  
  def resources
    @title = "Useful Resources"
  end
  
  def postgre
    @title = "Quick Start: PostgreSQL 9.1"
  end
  
  def random
    @title = "Various Projects"
  end
end
