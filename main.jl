using Plots
include("./bubbleSort/bubbleSort.jl")
include("./selectionSort/selectionSort.jl")
include("./insertionSort/insertionSort.jl")
include("./quickSort/quickSort.jl")
include("./bin.jl")
randarr = rand(0:4:100, 25)

cpy_randarr = copy(randarr)
bubbleSort(cpy_randarr)
compressor("./bubbleSort/", "./avis/", "bubbleSort", 15)
rmexts("./bubbleSort/", "png")

cpy_randarr = copy(randarr)
selectionSort(cpy_randarr)
compressor("./selectionSort/", "./avis/", "selectionSort", 15)
rmexts("./selectionSort/", "png")

cpy_randarr = copy(randarr)
insertionSort(cpy_randarr)
compressor("./insertionSort/", "./avis/", "insertionSort", 15)
rmexts("./insertionSort/", "png")

cpy_randarr = copy(randarr)
quickSort(cpy_randarr)
compressor("./quickSort/", "./avis/", "quickSort", 15)
rmexts("./quickSort/", "png")
