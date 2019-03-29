class ApplicationController < ActionController::Base

  def respond_modal_with(*args, &blk)
      options = args.extract_options!
      options[:responder] = ModalResponder
      respond_with *args, options, &blk
    end
    
end
