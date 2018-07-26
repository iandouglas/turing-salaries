class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.references :user, foreign_key: true
      t.references :city, foreign_key: true

      t.string :title

      t.integer :base_salary
      t.integer :has_nearterm_perf_review, default: 2
      t.text :salary_notes

      t.integer :has_bonus, default: 2
      t.text :bonus_notes

      t.integer :has_equity, default: 2
      t.integer :equity_count, default: 0
      t.float :equity_strike_price, default: 0
      t.text :equity_notes

      t.integer :has_medical, default: 2
      t.integer :has_dental, default: 2
      t.integer :has_vision, default: 2
      t.text :other_benefits_notes

      t.integer :pto_days, default: 0
      t.integer :sick_days, default: 0
      t.integer :has_wfh, default: 2
      t.integer :wfh_days, default: 0
      t.integer :has_family_leave, default: 2
      t.integer :family_leave_days, default: 0
      t.text :timeoff_notes

      t.integer :has_retirement, default: 2
      t.text :retirement_notes

      t.integer :has_prof_devel, default: 2
      t.text :prof_devel_notes

      t.integer :hardware_provided, default: 2
      t.text :hardware_notes

      t.text :other_notes

      t.boolean :active
      t.timestamps
    end
  end
end
