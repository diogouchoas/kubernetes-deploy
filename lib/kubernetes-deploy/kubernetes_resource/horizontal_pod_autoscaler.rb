# frozen_string_literal: true
module KubernetesDeploy
  class HorizontalPodAutoscaler < KubernetesResource
    PRUNABLE = true
    TIMEOUT = 30.seconds

    def deploy_succeeded?
      exists?
    end

    def deploy_failed?
      !exists?
    end

    def timeout_message
      UNUSUAL_FAILURE_MESSAGE
    end
  end
end
