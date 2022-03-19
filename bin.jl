function plotter(a::AbstractArray{<: Number}, outfolder::String, count::Integer, title::String, ylabel::String,
                xlabel::String)
    p = bar(1:25, a, orientation=:v, title=title, ylabel=ylabel, xlabel=xlabel, label="value at swap $count",
            legend=:topleft)
    # display(p)
    savefig(p, "$(outfolder)$(count).png")
end

function compressor(infolder::String, outfolder::String, title::String, fps::Integer)
    run(`ffmpeg -f image2 -framerate $fps -i $(infolder)%d.png -loop 1 $outfolder$title.avi`)
end

function rmexts(folder::String, ext::String)
    run(`find $folder -type f -iname \*.$ext -delete`)
end