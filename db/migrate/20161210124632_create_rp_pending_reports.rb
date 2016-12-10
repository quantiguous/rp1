class CreateRpPendingReports < ActiveRecord::Migration
  def change
    create_table :rp_pending_reports do |t|
      t.string   :broker_uuid, :limit => 500, :comment => "the uuid of the broker that will generate the file"
      t.integer  :rp_report_id, :comment => "the foreign key to the rp_reports table"
      t.datetime :created_at,  :comment => "the timestamp when this record was created"
    end
  end
end
