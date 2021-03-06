#--
# Copyleft meh. [http://meh.paranoid.pk | meh@paranoici.org]
#
# Redistribution and use in source and binary forms, with or without modification, are
# permitted provided that the following conditions are met:
#
#    1. Redistributions of source code must retain the above copyright notice, this list of
#       conditions and the following disclaimer.
#
#    2. Redistributions in binary form must reproduce the above copyright notice, this list
#       of conditions and the following disclaimer in the documentation and/or other materials
#       provided with the distribution.
#
# THIS SOFTWARE IS PROVIDED BY meh ''AS IS'' AND ANY EXPRESS OR IMPLIED
# WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
# FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL meh OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
# SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
# ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
# ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# The views and conclusions contained in the software and documentation are those of the
# authors and should not be interpreted as representing official policies, either expressed
# or implied.
#++

require 'X11/misc/temperature'

require 'X11/extensions/Xrandr/crtc/info'
require 'X11/extensions/Xrandr/crtc/gamma'
require 'X11/extensions/Xrandr/crtc/panning'

module X11; module Xrandr

class Crtc < ID
	extend Forwardable

	attr_reader    :resources
	def_delegators :@resources, :screen

	def initialize (resources, id)
		super(resources.screen.display, id)

		@resources = resources
	end

	def info
		Crtc::Info.get(self)
	end

	def gamma
		Crtc::Gamma.get(self)
	end

	named :value, :brightness, :correction, :optional => 1 .. -1
	def temperature (value, brightness=1.0, correction=nil)
		Temperature.gamma(value, gamma.size, brightness, correction).tap {|ramps|
			gamma.set(:red => ramps.red, :green => ramps.green, :blue => ramps.blue)
			display.flush
		}
	end

	def panning
		Crtc::Panning.get(self)
	end
end

end; end
