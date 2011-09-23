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

module X11

class Temperature
	Table = {
		1000  => [1.0000, 0.0337, 0.0000], # ff3300
		1100  => [1.0000, 0.0592, 0.0000], # ff4500
		1200  => [1.0000, 0.0846, 0.0000], # ff5200
		1300  => [1.0000, 0.1096, 0.0000], # ff5d00
		1400  => [1.0000, 0.1341, 0.0000], # ff6600
		1500  => [1.0000, 0.1578, 0.0000], # ff6f00
		1600  => [1.0000, 0.1806, 0.0000], # ff7600
		1700  => [1.0000, 0.2025, 0.0000], # ff7c00
		1800  => [1.0000, 0.2235, 0.0000], # ff8200
		1900  => [1.0000, 0.2434, 0.0000], # ff8700
		2000  => [1.0000, 0.2647, 0.0033], # ff8d0b
		2100  => [1.0000, 0.2889, 0.0120], # ff921d
		2200  => [1.0000, 0.3126, 0.0219], # ff9829
		2300  => [1.0000, 0.3360, 0.0331], # ff9d33
		2400  => [1.0000, 0.3589, 0.0454], # ffa23c
		2500  => [1.0000, 0.3814, 0.0588], # ffa645
		2600  => [1.0000, 0.4034, 0.0734], # ffaa4d
		2700  => [1.0000, 0.4250, 0.0889], # ffae54
		2800  => [1.0000, 0.4461, 0.1054], # ffb25b
		2900  => [1.0000, 0.4668, 0.1229], # ffb662
		3000  => [1.0000, 0.4870, 0.1411], # ffb969
		3100  => [1.0000, 0.5067, 0.1602], # ffbd6f
		3200  => [1.0000, 0.5259, 0.1800], # ffc076
		3300  => [1.0000, 0.5447, 0.2005], # ffc37c
		3400  => [1.0000, 0.5630, 0.2216], # ffc682
		3500  => [1.0000, 0.5809, 0.2433], # ffc987
		3600  => [1.0000, 0.5983, 0.2655], # ffcb8d
		3700  => [1.0000, 0.6153, 0.2881], # ffce92
		3800  => [1.0000, 0.6318, 0.3112], # ffd097
		3900  => [1.0000, 0.6480, 0.3346], # ffd39c
		4000  => [1.0000, 0.6636, 0.3583], # ffd5a1
		4100  => [1.0000, 0.6789, 0.3823], # ffd7a6
		4200  => [1.0000, 0.6938, 0.4066], # ffd9ab
		4300  => [1.0000, 0.7083, 0.4310], # ffdbaf
		4400  => [1.0000, 0.7223, 0.4556], # ffddb4
		4500  => [1.0000, 0.7360, 0.4803], # ffdfb8
		4600  => [1.0000, 0.7494, 0.5051], # ffe1bc
		4700  => [1.0000, 0.7623, 0.5299], # ffe2c0
		4800  => [1.0000, 0.7750, 0.5548], # ffe4c4
		4900  => [1.0000, 0.7872, 0.5797], # ffe5c8
		5000  => [1.0000, 0.7992, 0.6045], # ffe7cc
		5100  => [1.0000, 0.8108, 0.6293], # ffe8d0
		5200  => [1.0000, 0.8221, 0.6541], # ffead3
		5300  => [1.0000, 0.8330, 0.6787], # ffebd7
		5400  => [1.0000, 0.8437, 0.7032], # ffedda
		5500  => [1.0000, 0.8541, 0.7277], # ffeede
		5600  => [1.0000, 0.8642, 0.7519], # ffefe1
		5700  => [1.0000, 0.8740, 0.7760], # fff0e4
		5800  => [1.0000, 0.8836, 0.8000], # fff1e7
		5900  => [1.0000, 0.8929, 0.8238], # fff3ea
		6000  => [1.0000, 0.9019, 0.8473], # fff4ed
		6100  => [1.0000, 0.9107, 0.8707], # fff5f0
		6200  => [1.0000, 0.9193, 0.8939], # fff6f3
		6300  => [1.0000, 0.9276, 0.9168], # fff7f5
		6400  => [1.0000, 0.9357, 0.9396], # fff8f8
		6500  => [1.0000, 0.9436, 0.9621], # fff9fb
		6600  => [1.0000, 0.9513, 0.9844], # fff9fd
		6700  => [0.9937, 0.9526, 1.0000], # fefaff
		6800  => [0.9726, 0.9395, 1.0000], # fcf8ff
		6900  => [0.9526, 0.9270, 1.0000], # faf7ff
		7000  => [0.9337, 0.9150, 1.0000], # f7f5ff
		7100  => [0.9157, 0.9035, 1.0000], # f5f4ff
		7200  => [0.8986, 0.8925, 1.0000], # f3f3ff
		7300  => [0.8823, 0.8819, 1.0000], # f1f1ff
		7400  => [0.8668, 0.8718, 1.0000], # eff0ff
		7500  => [0.8520, 0.8621, 1.0000], # eeefff
		7600  => [0.8379, 0.8527, 1.0000], # eceeff
		7700  => [0.8244, 0.8437, 1.0000], # eaedff
		7800  => [0.8115, 0.8351, 1.0000], # e9ecff
		7900  => [0.7992, 0.8268, 1.0000], # e7eaff
		8000  => [0.7874, 0.8187, 1.0000], # e5e9ff
		8100  => [0.7761, 0.8110, 1.0000], # e4e9ff
		8200  => [0.7652, 0.8035, 1.0000], # e3e8ff
		8300  => [0.7548, 0.7963, 1.0000], # e1e7ff
		8400  => [0.7449, 0.7894, 1.0000], # e0e6ff
		8500  => [0.7353, 0.7827, 1.0000], # dfe5ff
		8600  => [0.7260, 0.7762, 1.0000], # dde4ff
		8700  => [0.7172, 0.7699, 1.0000], # dce3ff
		8800  => [0.7086, 0.7638, 1.0000], # dbe2ff
		8900  => [0.7004, 0.7579, 1.0000], # dae2ff
		9000  => [0.6925, 0.7522, 1.0000], # d9e1ff
		9100  => [0.6848, 0.7467, 1.0000], # d8e0ff
		9200  => [0.6774, 0.7414, 1.0000], # d7dfff
		9300  => [0.6703, 0.7362, 1.0000], # d6dfff
		9400  => [0.6635, 0.7311, 1.0000], # d5deff
		9500  => [0.6568, 0.7263, 1.0000], # d4ddff
		9600  => [0.6504, 0.7215, 1.0000], # d3ddff
		9700  => [0.6442, 0.7169, 1.0000], # d2dcff
		9800  => [0.6382, 0.7124, 1.0000], # d1dcff
		9900  => [0.6324, 0.7081, 1.0000], # d0dbff
		10000 => [0.6268, 0.7039, 1.0000], # cfdaff
		10100 => [0.6213, 0.6998, 1.0000], # cfdaff
		10200 => [0.6161, 0.6958, 1.0000], # ced9ff
		10300 => [0.6109, 0.6919, 1.0000], # cdd9ff
		10400 => [0.6060, 0.6881, 1.0000], # ccd8ff
		10500 => [0.6012, 0.6844, 1.0000], # ccd8ff
		10600 => [0.5965, 0.6808, 1.0000], # cbd7ff
		10700 => [0.5919, 0.6773, 1.0000], # cad7ff
		10800 => [0.5875, 0.6739, 1.0000], # cad6ff
		10900 => [0.5833, 0.6706, 1.0000], # c9d6ff
		11000 => [0.5791, 0.6674, 1.0000], # c8d5ff
		11100 => [0.5750, 0.6642, 1.0000], # c8d5ff
		11200 => [0.5711, 0.6611, 1.0000], # c7d4ff
		11300 => [0.5673, 0.6581, 1.0000], # c6d4ff
		11400 => [0.5636, 0.6552, 1.0000], # c6d4ff
		11500 => [0.5599, 0.6523, 1.0000], # c5d3ff
		11600 => [0.5564, 0.6495, 1.0000], # c5d3ff
		11700 => [0.5530, 0.6468, 1.0000], # c4d2ff
		11800 => [0.5496, 0.6441, 1.0000], # c4d2ff
		11900 => [0.5463, 0.6415, 1.0000], # c3d2ff
		12000 => [0.5431, 0.6389, 1.0000], # c3d1ff
		12100 => [0.5400, 0.6364, 1.0000], # c2d1ff
		12200 => [0.5370, 0.6340, 1.0000], # c2d0ff
		12300 => [0.5340, 0.6316, 1.0000], # c1d0ff
		12400 => [0.5312, 0.6293, 1.0000], # c1d0ff
		12500 => [0.5283, 0.6270, 1.0000], # c0cfff
		12600 => [0.5256, 0.6247, 1.0000], # c0cfff
		12700 => [0.5229, 0.6225, 1.0000], # bfcfff
		12800 => [0.5203, 0.6204, 1.0000], # bfceff
		12900 => [0.5177, 0.6183, 1.0000], # beceff
		13000 => [0.5152, 0.6162, 1.0000], # beceff
		13100 => [0.5128, 0.6142, 1.0000], # beceff
		13200 => [0.5104, 0.6122, 1.0000], # bdcdff
		13300 => [0.5080, 0.6103, 1.0000], # bdcdff
		13400 => [0.5057, 0.6084, 1.0000], # bccdff
		13500 => [0.5035, 0.6065, 1.0000], # bcccff
		13600 => [0.5013, 0.6047, 1.0000], # bcccff
		13700 => [0.4991, 0.6029, 1.0000], # bbccff
		13800 => [0.4970, 0.6012, 1.0000], # bbccff
		13900 => [0.4950, 0.5994, 1.0000], # bbcbff
		14000 => [0.4930, 0.5978, 1.0000], # bacbff
		14100 => [0.4910, 0.5961, 1.0000], # bacbff
		14200 => [0.4891, 0.5945, 1.0000], # bacbff
		14300 => [0.4872, 0.5929, 1.0000], # b9caff
		14400 => [0.4853, 0.5913, 1.0000], # b9caff
		14500 => [0.4835, 0.5898, 1.0000], # b9caff
		14600 => [0.4817, 0.5882, 1.0000], # b8caff
		14700 => [0.4799, 0.5868, 1.0000], # b8c9ff
		14800 => [0.4782, 0.5853, 1.0000], # b8c9ff
		14900 => [0.4765, 0.5839, 1.0000], # b8c9ff
		15000 => [0.4749, 0.5824, 1.0000], # b7c9ff
		15100 => [0.4733, 0.5811, 1.0000], # b7c9ff
		15200 => [0.4717, 0.5797, 1.0000], # b7c8ff
		15300 => [0.4701, 0.5784, 1.0000], # b6c8ff
		15400 => [0.4686, 0.5770, 1.0000], # b6c8ff
		15500 => [0.4671, 0.5757, 1.0000], # b6c8ff
		15600 => [0.4656, 0.5745, 1.0000], # b6c8ff
		15700 => [0.4641, 0.5732, 1.0000], # b5c7ff
		15800 => [0.4627, 0.5720, 1.0000], # b5c7ff
		15900 => [0.4613, 0.5708, 1.0000], # b5c7ff
		16000 => [0.4599, 0.5696, 1.0000], # b5c7ff
		16100 => [0.4586, 0.5684, 1.0000], # b4c7ff
		16200 => [0.4572, 0.5673, 1.0000], # b4c6ff
		16300 => [0.4559, 0.5661, 1.0000], # b4c6ff
		16400 => [0.4546, 0.5650, 1.0000], # b4c6ff
		16500 => [0.4534, 0.5639, 1.0000], # b3c6ff
		16600 => [0.4521, 0.5628, 1.0000], # b3c6ff
		16700 => [0.4509, 0.5617, 1.0000], # b3c6ff
		16800 => [0.4497, 0.5607, 1.0000], # b3c5ff
		16900 => [0.4485, 0.5597, 1.0000], # b3c5ff
		17000 => [0.4474, 0.5586, 1.0000], # b2c5ff
		17100 => [0.4462, 0.5576, 1.0000], # b2c5ff
		17200 => [0.4451, 0.5566, 1.0000], # b2c5ff
		17300 => [0.4440, 0.5557, 1.0000], # b2c5ff
		17400 => [0.4429, 0.5547, 1.0000], # b2c4ff
		17500 => [0.4418, 0.5538, 1.0000], # b1c4ff
		17600 => [0.4408, 0.5528, 1.0000], # b1c4ff
		17700 => [0.4397, 0.5519, 1.0000], # b1c4ff
		17800 => [0.4387, 0.5510, 1.0000], # b1c4ff
		17900 => [0.4377, 0.5501, 1.0000], # b1c4ff
		18000 => [0.4367, 0.5492, 1.0000], # b0c4ff
		18100 => [0.4357, 0.5483, 1.0000], # b0c3ff
		18200 => [0.4348, 0.5475, 1.0000], # b0c3ff
		18300 => [0.4338, 0.5466, 1.0000], # b0c3ff
		18400 => [0.4329, 0.5458, 1.0000], # b0c3ff
		18500 => [0.4319, 0.5450, 1.0000], # b0c3ff
		18600 => [0.4310, 0.5442, 1.0000], # afc3ff
		18700 => [0.4301, 0.5434, 1.0000], # afc3ff
		18800 => [0.4293, 0.5426, 1.0000], # afc2ff
		18900 => [0.4284, 0.5418, 1.0000], # afc2ff
		19000 => [0.4275, 0.5410, 1.0000], # afc2ff
		19100 => [0.4267, 0.5403, 1.0000], # afc2ff
		19200 => [0.4258, 0.5395, 1.0000], # aec2ff
		19300 => [0.4250, 0.5388, 1.0000], # aec2ff
		19400 => [0.4242, 0.5381, 1.0000], # aec2ff
		19500 => [0.4234, 0.5373, 1.0000], # aec2ff
		19600 => [0.4226, 0.5366, 1.0000], # aec2ff
		19700 => [0.4218, 0.5359, 1.0000], # aec1ff
		19800 => [0.4211, 0.5352, 1.0000], # aec1ff
		19900 => [0.4203, 0.5345, 1.0000], # adc1ff
		20000 => [0.4196, 0.5339, 1.0000], # adc1ff
		20100 => [0.4188, 0.5332, 1.0000], # adc1ff
		20200 => [0.4181, 0.5325, 1.0000], # adc1ff
		20300 => [0.4174, 0.5319, 1.0000], # adc1ff
		20400 => [0.4167, 0.5312, 1.0000], # adc1ff
		20500 => [0.4160, 0.5306, 1.0000], # adc1ff
		20600 => [0.4153, 0.5300, 1.0000], # adc0ff
		20700 => [0.4146, 0.5293, 1.0000], # acc0ff
		20800 => [0.4139, 0.5287, 1.0000], # acc0ff
		20900 => [0.4133, 0.5281, 1.0000], # acc0ff
		21000 => [0.4126, 0.5275, 1.0000], # acc0ff
		21100 => [0.4119, 0.5269, 1.0000], # acc0ff
		21200 => [0.4113, 0.5264, 1.0000], # acc0ff
		21300 => [0.4107, 0.5258, 1.0000], # acc0ff
		21400 => [0.4100, 0.5252, 1.0000], # acc0ff
		21500 => [0.4094, 0.5246, 1.0000], # abc0ff
		21600 => [0.4088, 0.5241, 1.0000], # abc0ff
		21700 => [0.4082, 0.5235, 1.0000], # abbfff
		21800 => [0.4076, 0.5230, 1.0000], # abbfff
		21900 => [0.4070, 0.5224, 1.0000], # abbfff
		22000 => [0.4064, 0.5219, 1.0000], # abbfff
		22100 => [0.4059, 0.5214, 1.0000], # abbfff
		22200 => [0.4053, 0.5209, 1.0000], # abbfff
		22300 => [0.4047, 0.5203, 1.0000], # abbfff
		22400 => [0.4042, 0.5198, 1.0000], # aabfff
		22500 => [0.4036, 0.5193, 1.0000], # aabfff
		22600 => [0.4031, 0.5188, 1.0000], # aabfff
		22700 => [0.4026, 0.5183, 1.0000], # aabfff
		22800 => [0.4020, 0.5178, 1.0000], # aabeff
		22900 => [0.4015, 0.5174, 1.0000], # aabeff
		23000 => [0.4010, 0.5169, 1.0000], # aabeff
		23100 => [0.4005, 0.5164, 1.0000], # aabeff
		23200 => [0.4000, 0.5159, 1.0000], # aabeff
		23300 => [0.3995, 0.5155, 1.0000], # aabeff
		23400 => [0.3990, 0.5150, 1.0000], # a9beff
		23500 => [0.3985, 0.5146, 1.0000], # a9beff
		23600 => [0.3980, 0.5141, 1.0000], # a9beff
		23700 => [0.3975, 0.5137, 1.0000], # a9beff
		23800 => [0.3970, 0.5132, 1.0000], # a9beff
		23900 => [0.3966, 0.5128, 1.0000], # a9beff
		24000 => [0.3961, 0.5123, 1.0000], # a9beff
		24100 => [0.3956, 0.5119, 1.0000], # a9beff
		24200 => [0.3952, 0.5115, 1.0000], # a9bdff
		24300 => [0.3947, 0.5111, 1.0000], # a9bdff
		24400 => [0.3943, 0.5107, 1.0000], # a9bdff
		24500 => [0.3938, 0.5103, 1.0000], # a8bdff
		24600 => [0.3934, 0.5098, 1.0000], # a8bdff
		24700 => [0.3930, 0.5094, 1.0000], # a8bdff
		24800 => [0.3925, 0.5090, 1.0000], # a8bdff
		24900 => [0.3921, 0.5086, 1.0000], # a8bdff
		25000 => [0.3917, 0.5083, 1.0000], # a8bdff
		25100 => [0.3913, 0.5079, 1.0000], # a8bdff
		25200 => [0.3909, 0.5075, 1.0000], # a8bdff
		25300 => [0.3905, 0.5071, 1.0000], # a8bdff
		25400 => [0.3901, 0.5067, 1.0000], # a8bdff
		25500 => [0.3897, 0.5064, 1.0000], # a8bdff
		25600 => [0.3893, 0.5060, 1.0000], # a8bdff
		25700 => [0.3889, 0.5056, 1.0000], # a7bcff
		25800 => [0.3885, 0.5053, 1.0000], # a7bcff
		25900 => [0.3881, 0.5049, 1.0000], # a7bcff
		26000 => [0.3877, 0.5045, 1.0000], # a7bcff
		26100 => [0.3874, 0.5042, 1.0000], # a7bcff
		26200 => [0.3870, 0.5038, 1.0000], # a7bcff
		26300 => [0.3866, 0.5035, 1.0000], # a7bcff
		26400 => [0.3863, 0.5032, 1.0000], # a7bcff
		26500 => [0.3859, 0.5028, 1.0000], # a7bcff
		26600 => [0.3855, 0.5025, 1.0000], # a7bcff
		26700 => [0.3852, 0.5021, 1.0000], # a7bcff
		26800 => [0.3848, 0.5018, 1.0000], # a7bcff
		26900 => [0.3845, 0.5015, 1.0000], # a7bcff
		27000 => [0.3841, 0.5012, 1.0000], # a7bcff
		27100 => [0.3838, 0.5008, 1.0000], # a6bcff
		27200 => [0.3835, 0.5005, 1.0000], # a6bcff
		27300 => [0.3831, 0.5002, 1.0000], # a6bcff
		27400 => [0.3828, 0.4999, 1.0000], # a6bbff
		27500 => [0.3825, 0.4996, 1.0000], # a6bbff
		27600 => [0.3821, 0.4993, 1.0000], # a6bbff
		27700 => [0.3818, 0.4990, 1.0000], # a6bbff
		27800 => [0.3815, 0.4987, 1.0000], # a6bbff
		27900 => [0.3812, 0.4984, 1.0000], # a6bbff
		28000 => [0.3809, 0.4981, 1.0000], # a6bbff
		28100 => [0.3805, 0.4978, 1.0000], # a6bbff
		28200 => [0.3802, 0.4975, 1.0000], # a6bbff
		28300 => [0.3799, 0.4972, 1.0000], # a6bbff
		28400 => [0.3796, 0.4969, 1.0000], # a6bbff
		28500 => [0.3793, 0.4966, 1.0000], # a6bbff
		28600 => [0.3790, 0.4963, 1.0000], # a6bbff
		28700 => [0.3787, 0.4960, 1.0000], # a5bbff
		28800 => [0.3784, 0.4958, 1.0000], # a5bbff
		28900 => [0.3781, 0.4955, 1.0000], # a5bbff
		29000 => [0.3779, 0.4952, 1.0000], # a5bbff
		29100 => [0.3776, 0.4949, 1.0000], # a5bbff
		29200 => [0.3773, 0.4947, 1.0000], # a5bbff
		29300 => [0.3770, 0.4944, 1.0000], # a5bbff
		29400 => [0.3767, 0.4941, 1.0000], # a5bbff
		29500 => [0.3764, 0.4939, 1.0000], # a5baff
		29600 => [0.3762, 0.4936, 1.0000], # a5baff
		29700 => [0.3759, 0.4934, 1.0000], # a5baff
		29800 => [0.3756, 0.4931, 1.0000], # a5baff
		29900 => [0.3754, 0.4928, 1.0000], # a5baff
		30000 => [0.3751, 0.4926, 1.0000], # a5baff
		30100 => [0.3748, 0.4923, 1.0000], # a5baff
		30200 => [0.3746, 0.4921, 1.0000], # a5baff
		30300 => [0.3743, 0.4918, 1.0000], # a5baff
		30400 => [0.3741, 0.4916, 1.0000], # a5baff
		30500 => [0.3738, 0.4914, 1.0000], # a5baff
		30600 => [0.3735, 0.4911, 1.0000], # a4baff
		30700 => [0.3733, 0.4909, 1.0000], # a4baff
		30800 => [0.3730, 0.4906, 1.0000], # a4baff
		30900 => [0.3728, 0.4904, 1.0000], # a4baff
		31000 => [0.3726, 0.4902, 1.0000], # a4baff
		31100 => [0.3723, 0.4899, 1.0000], # a4baff
		31200 => [0.3721, 0.4897, 1.0000], # a4baff
		31300 => [0.3718, 0.4895, 1.0000], # a4baff
		31400 => [0.3716, 0.4893, 1.0000], # a4baff
		31500 => [0.3714, 0.4890, 1.0000], # a4baff
		31600 => [0.3711, 0.4888, 1.0000], # a4baff
		31700 => [0.3709, 0.4886, 1.0000], # a4baff
		31800 => [0.3707, 0.4884, 1.0000], # a4baff
		31900 => [0.3704, 0.4881, 1.0000], # a4baff
		32000 => [0.3702, 0.4879, 1.0000], # a4b9ff
		32100 => [0.3700, 0.4877, 1.0000], # a4b9ff
		32200 => [0.3698, 0.4875, 1.0000], # a4b9ff
		32300 => [0.3695, 0.4873, 1.0000], # a4b9ff
		32400 => [0.3693, 0.4871, 1.0000], # a4b9ff
		32500 => [0.3691, 0.4869, 1.0000], # a4b9ff
		32600 => [0.3689, 0.4867, 1.0000], # a4b9ff
		32700 => [0.3687, 0.4864, 1.0000], # a3b9ff
		32800 => [0.3684, 0.4862, 1.0000], # a3b9ff
		32900 => [0.3682, 0.4860, 1.0000], # a3b9ff
		33000 => [0.3680, 0.4858, 1.0000], # a3b9ff
		33100 => [0.3678, 0.4856, 1.0000], # a3b9ff
		33200 => [0.3676, 0.4854, 1.0000], # a3b9ff
		33300 => [0.3674, 0.4852, 1.0000], # a3b9ff
		33400 => [0.3672, 0.4850, 1.0000], # a3b9ff
		33500 => [0.3670, 0.4848, 1.0000], # a3b9ff
		33600 => [0.3668, 0.4847, 1.0000], # a3b9ff
		33700 => [0.3666, 0.4845, 1.0000], # a3b9ff
		33800 => [0.3664, 0.4843, 1.0000], # a3b9ff
		33900 => [0.3662, 0.4841, 1.0000], # a3b9ff
		34000 => [0.3660, 0.4839, 1.0000], # a3b9ff
		34100 => [0.3658, 0.4837, 1.0000], # a3b9ff
		34200 => [0.3656, 0.4835, 1.0000], # a3b9ff
		34300 => [0.3654, 0.4833, 1.0000], # a3b9ff
		34400 => [0.3652, 0.4831, 1.0000], # a3b9ff
		34500 => [0.3650, 0.4830, 1.0000], # a3b9ff
		34600 => [0.3649, 0.4828, 1.0000], # a3b9ff
		34700 => [0.3647, 0.4826, 1.0000], # a3b9ff
		34800 => [0.3645, 0.4824, 1.0000], # a3b9ff
		34900 => [0.3643, 0.4822, 1.0000], # a3b9ff
		35000 => [0.3641, 0.4821, 1.0000], # a3b8ff
		35100 => [0.3639, 0.4819, 1.0000], # a3b8ff
		35200 => [0.3638, 0.4817, 1.0000], # a2b8ff
		35300 => [0.3636, 0.4815, 1.0000], # a2b8ff
		35400 => [0.3634, 0.4814, 1.0000], # a2b8ff
		35500 => [0.3632, 0.4812, 1.0000], # a2b8ff
		35600 => [0.3630, 0.4810, 1.0000], # a2b8ff
		35700 => [0.3629, 0.4809, 1.0000], # a2b8ff
		35800 => [0.3627, 0.4807, 1.0000], # a2b8ff
		35900 => [0.3625, 0.4805, 1.0000], # a2b8ff
		36000 => [0.3624, 0.4804, 1.0000], # a2b8ff
		36100 => [0.3622, 0.4802, 1.0000], # a2b8ff
		36200 => [0.3620, 0.4800, 1.0000], # a2b8ff
		36300 => [0.3619, 0.4799, 1.0000], # a2b8ff
		36400 => [0.3617, 0.4797, 1.0000], # a2b8ff
		36500 => [0.3615, 0.4796, 1.0000], # a2b8ff
		36600 => [0.3614, 0.4794, 1.0000], # a2b8ff
		36700 => [0.3612, 0.4792, 1.0000], # a2b8ff
		36800 => [0.3610, 0.4791, 1.0000], # a2b8ff
		36900 => [0.3609, 0.4789, 1.0000], # a2b8ff
		37000 => [0.3607, 0.4788, 1.0000], # a2b8ff
		37100 => [0.3605, 0.4786, 1.0000], # a2b8ff
		37200 => [0.3604, 0.4785, 1.0000], # a2b8ff
		37300 => [0.3602, 0.4783, 1.0000], # a2b8ff
		37400 => [0.3601, 0.4782, 1.0000], # a2b8ff
		37500 => [0.3599, 0.4780, 1.0000], # a2b8ff
		37600 => [0.3598, 0.4779, 1.0000], # a2b8ff
		37700 => [0.3596, 0.4777, 1.0000], # a2b8ff
		37800 => [0.3595, 0.4776, 1.0000], # a2b8ff
		37900 => [0.3593, 0.4774, 1.0000], # a2b8ff
		38000 => [0.3592, 0.4773, 1.0000], # a2b8ff
		38100 => [0.3590, 0.4771, 1.0000], # a2b8ff
		38200 => [0.3589, 0.4770, 1.0000], # a2b8ff
		38300 => [0.3587, 0.4768, 1.0000], # a1b8ff
		38400 => [0.3586, 0.4767, 1.0000], # a1b8ff
		38500 => [0.3584, 0.4766, 1.0000], # a1b8ff
		38600 => [0.3583, 0.4764, 1.0000], # a1b7ff
		38700 => [0.3581, 0.4763, 1.0000], # a1b7ff
		38800 => [0.3580, 0.4761, 1.0000], # a1b7ff
		38900 => [0.3579, 0.4760, 1.0000], # a1b7ff
		39000 => [0.3577, 0.4759, 1.0000], # a1b7ff
		39100 => [0.3576, 0.4757, 1.0000], # a1b7ff
		39200 => [0.3574, 0.4756, 1.0000], # a1b7ff
		39300 => [0.3573, 0.4755, 1.0000], # a1b7ff
		39400 => [0.3572, 0.4753, 1.0000], # a1b7ff
		39500 => [0.3570, 0.4752, 1.0000], # a1b7ff
		39600 => [0.3569, 0.4751, 1.0000], # a1b7ff
		39700 => [0.3567, 0.4749, 1.0000], # a1b7ff
		39800 => [0.3566, 0.4748, 1.0000], # a1b7ff
		39900 => [0.3565, 0.4747, 1.0000], # a1b7ff
		40000 => [0.3563, 0.4745, 1.0000], # a1b7ff
	}

	def self.normalize (number)
		number - (number % 100)
	end

	def self.white_point (temperature)
		alpha = (temperature % 100) / 100.0
		a, b  = Table[normalize(temperature)], Table[normalize(temperature) + 100]

		Struct.new(:red, :green, :blue).new(*0.upto(2).map {|index|
			(1.0 - alpha) * a[index] + alpha * b[index]
		})
	end

	singleton_namedic :temperature, :size, :brightness, :correction, :optional => 2 .. -1
	def self.gamma (temperature, size, brightness=1.0, correction=nil)
		white_point = white_point(temperature)
		correction  = Struct.new(:red, :green, :blue).new(*case correction
			when Array then correction
			when Hash  then [correction[:red], correction[:green], correction[:blue]]
			else            [1, 1, 1]
		end)

		Struct.new(:red, :green, :blue).new([], [], []).tap {|result|
			0.upto(size - 1).map {|n|
				result[:red]   << (((n.to_f / size) ** (1.0 / correction[:red]))   * 65535 * brightness * white_point[:red]).to_i   % 65535
				result[:green] << (((n.to_f / size) ** (1.0 / correction[:green])) * 65535 * brightness * white_point[:green]).to_i % 65535
				result[:blue]  << (((n.to_f / size) ** (1.0 / correction[:blue]))  * 65535 * brightness * white_point[:blue]).to_i  % 65535
			}
		}
	end
end

end
