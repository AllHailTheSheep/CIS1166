function bubbleSort(a::AbstractArray{<: Number})
    title = "Bubble Sort"
    loc = "./bubbleSort/"
    count = 0
    plotter(a, loc, count, title, "Value", "Index")
    count += 1
    len = length(a)
    for i in 1:len
        swapped = false
        for j in 1:len - i
            if a[j] > a[j + 1]
                temp = a[j]
                a[j] = a[j + 1]
                a[j + 1] = temp
                plotter(a, loc, count,  title, "Value", "Index")
                count += 1
                swapped = true
            end
        end
        if swapped == false
            break;
        end
    end
    plotter(a, loc, count,  title, "Value", "Index")
    return a
end