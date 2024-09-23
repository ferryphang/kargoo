class Avo::Resources::User < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }
  def form_fields
    field :email, as: :text
    field :password, as: :password
    field :name, as: :text
    field :phonenumber, as: :text
    field :markingcode, as: :text
  end

  def display_fields
    field :id, as: :id
    field :email, as: :text
    field :name, as: :text
    field :phonenumber, as: :text
    field :markingcode, as: :text
    field :created_at, as: :date

    field :address, as: :has_many
  end
end
