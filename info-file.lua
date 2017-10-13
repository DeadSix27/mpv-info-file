-- ####################################################
-- Copyright (C) 2017 DeadSix27
--
-- This Source Code Form is subject to the terms of the Mozilla Public
-- License, v. 2.0. If a copy of the MPL was not distributed with this
-- file, You can obtain one at https://mozilla.org/MPL/2.0/.
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
-- ###################################################

-- Simple script to write info files to be used by other programs 

-- Config options

local intervalLength = 2 -- refresh interval in seconds
local outputFilePath = "infofile.csv" -- path to save info file to, includes folder by default will write file into mpv binary directory
local verbose = false -- if true it will show a when it writes the file
local props = { -- list of properties to keep track of
	"filename",
	"media-title",
	"file-size",
	"path",
	"stream-open-filename",
	"stream-path",
	"current-demuxer",
	"file-format",
	"stream-pos",
	"stream-end",
	"duration",
	"audio-codec-name",
	"audio-codec",
	"current-ao",
	"channel-count",
	"audio-samplerate",
	"width",
	"height",
	"video-format",
	"video-codec",
	"current-vo ",
	"container-fps",
	"estimated-vf-fps",
	"video-aspect",
	"hwdec-current",
	"mpv-version",
	"ffmpeg-version",
	"vo",
	"vulkan-device",
	"gpu-api"
}

--

local mp = require 'mp'

function write_info_file()
	local tl = { }
	for i,name in ipairs(props) do
		tl[name] = mp.get_property_osd(name)
	end
	saveFile(tl,outputFilePath)
	if verbose then
		print("Wrote file to: " .. outputFilePath)
	end
end

function saveFile( table, filename )
	local charE = "\n"
	local file,err = io.open( filename, "wb" )
	file:write("infofile;csv\n")
	for i,name in ipairs(props) do
		file:write( name .. ";" .. table[name] ..charE )
	end
	file:close()
end
mp.add_periodic_timer(intervalLength, write_info_file)