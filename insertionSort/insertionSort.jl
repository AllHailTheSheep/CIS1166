function insertionSort(a::AbstractArray{<: Number})
    title = "Insertion Sort"
    loc = "./insertionSort/"
    count = 0
    plotter(a, loc, count, title, "Value", "Index")
    count += 1
    len = length(a)
    for i in 2:len
        key = a[i]
        j = i - 1
        while j >= 1 && a[j] > key
            a[j + 1] = a[j]
            j = j - 1
            plotter(a, loc, count, title, "Value", "Index")
            count += 1
        end
        a[j + 1] = key
    end
    plotter(a, loc, count, title, "Value", "Index")
    count += 1
    return a
end