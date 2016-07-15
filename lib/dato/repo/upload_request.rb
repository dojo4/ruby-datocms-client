require 'dato/repo/base'

module Dato
  module Repo
    class UploadRequest < Base

      def create(resource_attributes)
        body = JsonApiSerializer.new(
          type: :upload_request,
          attributes: %i(filename),
        ).serialize(resource_attributes)

        post_request "/upload-requests", body
      end

    end
  end
end