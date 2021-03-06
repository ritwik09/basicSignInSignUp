class V1::ContactsController < ApplicationController
	def create
		@account = current_user.accounts.build(account_params)a
		if @account.save
			render :create , status: :created
		else
			head(:unprocessable_entity)
		end
	end


	def update
		@account = current_user.accounts.friendly.find(params[:id])

		if @account.update(account_params)
			render :updae
		else
			head(:unprocessable_entity)
		end

	end
	end
private

def account_params
	params.require(:account).permit(
						:name, :address, :vat_rate, :tax_payer_id, :default_currency
				   )
end

end