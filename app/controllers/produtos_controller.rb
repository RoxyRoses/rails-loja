class ProdutosController < ApplicationController
  #chama funcao index na pagina index pois possui o mesmo nome, sera executada primeiro na page
  def index
    @produtos = Produto.order(nome: :asc).limit 6
    @produto_com_desconto = Produto.order(:preco).limit 1
  end

  def create
    #pegar parametros da url referentes a produto, permitir parametros nome, descricao, etc
     produto = params.require(:produto).permit(:nome, :descricao, :preco, :quantidade)
     Produto.create produto
     redirect_to root_path
  end

  def destroy
    #recebe id que recece pelo parametro da url
    id = params[:id]
    Produto.destroy id
    redirect_to root_path
  end

  def busca
    @nome = params[:nome]
    @produtos = Produto.where "nome like ?", "%#{@nome}%"
  end
end
