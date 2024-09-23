class Avo::Resources::Address < Avo::BaseResource
  # self.includes = []
  # self.attachments = []
  # self.search = {
  #   query: -> { query.ransack(id_eq: params[:q], m: "or").result(distinct: false) }
  # }

  def fields
    field :user, as: :belongs_to, placeholder: 'Choose User'
    field :name, as: :textarea
    field 'Address', as: :text, only_on: [:index] do
      record.name[0..80]
    end
  end
end
