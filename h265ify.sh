#for /R H:\Video\ %%F in (*.mkv) do (
#    "C:\Program Files\HandBrake\HandBrakeCLI.exe" --preset-import-file "C:\Users\user1\Desktop\bluraypreset.json" -Z "bluraypreset" -i "%%~fF" -o "%%~dpF%%~nF_conv.mkv"
#    if exist "%%~dpF%%~nF_conv.mkv" (
#        del "%%~fF"
#        ren "%%~dpF%%~nF_conv.mkv" "%%~nxF"
#    )
#)



for root in "/Passport"; do
	find . -name "*.MP4" ! -path './Archive/*' ! -path './Assets/*'	 | read convert
	HandBrakeCLI --preset-import-file '/home/monica/H265 Converstion.json' -i $convert -o ./output.mp4
done
