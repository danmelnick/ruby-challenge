# frozen_string_literal: true

class DisputeStatus
  VALID_STATUSES = [
    AWAITING_EVIDENCE = 'awaiting_evidence',
    AWAITING_HEARING = 'awaiting_hearing',
    AWAITING_JUDGE_DECISION = 'awaiting_judge_decision',
    AWAITING_DECISION_SIGNATURES = 'awaiting_decision_signatures',

    CLOSED_DECISION_SIGNATURES_RECEIVED = 'closed_decision_signatures_received',
    CLOSED_SETTLED = 'closed_settled'
  ].freeze
end
