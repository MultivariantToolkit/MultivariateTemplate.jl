"""
Here we store all functionality regarding the multi-index set. 

The initial version is based on `minterpy==0.2.0a0`
"""

struct MultiIndexSet{MT} <: AbstractArray{Int, 2}
    data::MT
    MultiIndexSet(mat::MT) where {MT<:AbstractMatrix} = new{MT}(mat) 
end

Base.size(mi::MultiIndexSet) = size(mi.data)
Base.getindex(mi::MultiIndexSet,i::Int) = getindex(mi.data,i)
Base.getindex(mi::MultiIndexSet,i::Int,j::Int) = getindex(mi.data,i,j)
