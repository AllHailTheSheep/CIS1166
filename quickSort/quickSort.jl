function quickSort(a::AbstractArray{<: Number}, i::Int64 = 1,j::Int64 = length(a), c::Int64 = 0)
    title = "Quick Sort"
    loc = "./quickSort/"
    count = c
    plotter(a, loc, count, title, "Value", "Index")
    count += 1
    if j > i
        pivot = a[rand(i:j)] # random element of A
        left, right = i, j
        while left <= right
            #plotter(a, loc, count, title, "Value", "Index")
            #count += 1
            while a[left] < pivot
                left += 1
            end
            while a[right] > pivot
                right -= 1
            end
            if left <= right
                plotter(a, loc, count, title, "Value", "Index")
                count += 1
                a[left], a[right] = a[right], a[left]
                left += 1
                right -= 1
            end
        end
        count = quickSort(a,i,right, count)
        count = quickSort(a,left,j, count)
    end
    return count
end