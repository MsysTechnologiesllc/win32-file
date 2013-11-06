module Windows
  module File
    module Functions
      extend FFI::Library
      ffi_lib :kernel32

      attach_function :CloseHandle, [:ulong], :bool
      attach_function :CreateFileW, [:buffer_in, :ulong, :ulong, :pointer, :ulong, :ulong, :ulong], :ulong
      attach_function :CreateSymbolicLinkW, [:buffer_in, :buffer_in, :ulong], :bool
      attach_function :FindFirstFileW, [:buffer_in, :pointer], :ulong
      attach_function :GetDiskFreeSpaceW, [:buffer_in, :pointer, :pointer, :pointer, :pointer], :bool
      attach_function :GetDriveTypeW, [:buffer_in], :uint
      attach_function :GetFileType, [:ulong], :ulong
      attach_function :GetFileAttributesW, [:buffer_in], :ulong
      attach_function :GetFinalPathNameByHandleW, [:ulong, :buffer_out, :ulong, :ulong], :ulong
      attach_function :GetShortPathNameW, [:buffer_in, :buffer_out, :ulong], :ulong
      attach_function :GetLongPathNameW, [:buffer_in, :buffer_out, :ulong], :ulong
      attach_function :QueryDosDeviceA, [:string, :buffer_out, :ulong], :ulong

      ffi_lib :shlwapi

      attach_function :PathFindExtensionW, [:buffer_in], :pointer
      attach_function :PathIsRootW, [:buffer_in], :bool
      attach_function :PathStripPathW, [:buffer_in], :void
      attach_function :PathRemoveBackslashW, [:buffer_in], :string
      attach_function :PathRemoveFileSpecW, [:buffer_in], :bool
      attach_function :PathRemoveExtensionW, [:buffer_in], :void
      attach_function :PathStripToRootW, [:buffer_in], :bool
    end
  end
end
