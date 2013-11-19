module SpreeRichCMS::Config
  mattr_accessor :frontend_mount_point
  @@frontend_mount_point = '/'

  mattr_accessor :mount_frontend
  @@mount_frontend = true
end