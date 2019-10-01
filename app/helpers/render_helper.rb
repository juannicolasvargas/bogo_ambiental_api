module RenderHelper
  
  def render_success(data, status=200)
    render json: {
      success: status,
      data: data
    }
  end
end
