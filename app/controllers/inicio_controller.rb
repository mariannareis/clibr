class InicioController < ApplicationController
  def index
    exibir = ''

    if params[:parametro] == 'net'
      conteudo = Paragrafo.find(:all, :conditions => {:categoria => "interne"})
      for x in (0...conteudo.size)
        exibaesse = rand(conteudo.size)      
        exibir += "&nbsp; &nbsp; &nbsp; &nbsp;" + conteudo[exibaesse].conteudo + "<br/>"
      end


      render :update do |page|
        page.replace_html 'conteudocaixa', exibir
      end   
    end
  end


end
