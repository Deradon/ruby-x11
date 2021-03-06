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

require 'X11/Xlib/window/properties/property'

module X11; class Window < Drawable

class Properties
	include Enumerable
	extend  Forwardable

	attr_reader    :window
	def_delegators :@window, :display

	def initialize (window)
		@window = window
	end

	def [] (atom)
		if !(property = Property.new(window, Atom[atom, display])).nil?
			property
		end
	end

	def []= (atom, value, type=nil)
		Property.new(window, Atom[atom, display]).value = value, type
	end

	def has? (atom)
		!!self[atom]
	end

	def delete (atom)
		C::XDeleteProperty(display.to_native, window.to_native, Atom[atom, display].to_native)
	end

	def rotate (properties, positions=1)
		array = FFI::MemoryPointer.new(:Atom, properties.length)
		array.write_array_of(:Atom, properties.map { |name| name.to_native })

		C::XRotateWindowProperties(display.to_native, window.to_native, array, properties.length, positions)
	end

	def each (&block)
		number = FFI::MemoryPointer.new :int
		list   = C::XListProperties(display.to_native, window.to_native, number)

		return self if list.null?

		list.read_array_of(:Atom, number.typecast(:int)).each {|atom|
			block.call Property.new(window, Atom.new(atom.to_i, display))
		}

		C::XFree(list)

		self
	end
end

end; end
