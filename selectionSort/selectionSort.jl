function selectionSort(a::AbstractArray{<: Number})
    title = "Selection Sort"
    loc = "./selectionSort/"
    count = 0
    plotter(a, loc, count, title, "Value", "Index")
    count += 1
    len = length(a)
    for i in 1:len - 1
        min_idx = i
        for j in i + 1:len
            if a[j] < a[min_idx]
                plotter(a, loc, count, title, "Value", "Index")
                count += 1
                min_idx = j
            end
        end
        temp = a[min_idx]
        a[min_idx] = a[i]
        a[i] = temp
        plotter(a, loc, count, title, "Value", "Index")
        count += 1
    end
    return a
end