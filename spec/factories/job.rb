FactoryBot.define do
  factory :job, class: Job do
    user
    city
    sequence(:title) { |n| "Fake Job Title #{n}" }
    sequence(:base_salary) { |n| ("#{n}".to_i*1000)+70000 }

    has_nearterm_perf_review { 1 }
    salary_notes { 'Random salary notes' }

    has_bonus { 1 }
    bonus_notes { 'Random bonus notes' }

    has_equity { 1 }
    sequence(:equity_count) { |n| ("#{n}".to_i*100) }
    sequence(:equity_strike_price) { |n| ("#{n}".to_i*0.10) }
    equity_notes { 'Random equity notes' }

    has_medical { 1 }
    has_dental { 1 }
    has_vision { 1 }
    other_benefits_notes { 'Random benefits notes' }

    sequence(:pto_days) { |n| ("#{n}".to_i*1.25) }
    sequence(:sick_days) { |n| ("#{n}".to_i) }
    has_wfh { 1 }
    sequence(:wfh_days) { |n| ("#{n}".to_i) % 3 }

    has_family_leave { 1 }
    sequence(:family_leave_days) { |n| ("#{n}".to_i*2.5)  }
    timeoff_notes { 'Random time off notes' }

    has_retirement { 1 }
    retirement_notes { 'Random retirement package notes' }

    has_prof_devel { 1 }
    prof_devel_notes { 'Random professional development notes' }

    hardware_provided { 1 }
    hardware_notes { 'Random hardware/equipment notes' }

    other_notes { 'Random other notes' }

    active { true }
  end
end
