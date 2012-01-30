require 'spec_helper'

describe Win32::InputDevice do
  it 'keybd_event should no exception' do
    sleep 5
    Win32::InputDevice.keybd(0x31, 0, 0, 0 )
    sleep 0.2
    Win32::InputDevice.keybd(0x31, 0, 2, 0 )
  end
  
  it 'mouse_event should move' do
    sleep 2
    Win32::InputDevice.mouse(Windows::InputDevice::MOUSEEVENTF_MOVE, 0,0)
  end
end