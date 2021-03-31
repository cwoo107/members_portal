class DeliverTicket

  def initialize(id)
    @ticket = ConcernedCitizenTicket.find(id)
  end

  def deliver
    @deliveries = Delivery.all.where(city: @ticket.city).where(state: @ticket.state)

    @deliveries.each do |deliver|
      Notification.create(group_id: deliver.group_id, delivery_id: deliver.id, concerned_citizen_ticket_id: @ticket.id, description: "New Ticket Recieved on #{@ticket.created_at}")
    end
  end

end