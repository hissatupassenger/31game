function mex(num_list)
   if num_list ==[]
      return 0
   end
   if num_list ==[0]
       return 1
   end
   N = length(num_list)
   ord_num_list = sort(num_list)
   if ord_num_list[1] !=0
       return 0
   end
   i = 1
   while i != N
       if ord_num_list[i] + 1 == ord_num_list[i+1]
	   i = i+1
	   continue
       else
	   return i
       end
   end
   return N
end

function grundy(grun_seq,subt)
	N = length(grun_seq)
	return mex([grun_seq[N+1-i] for i in subt if i<N+1])
end


function main()
	cur =[];
	subt = [1,2,3]
	for i in 0:1000
		print(grundy(cur,subt))
		print(" ")
		cur = append!(cur,grundy(cur,subt))
	end
end

main()
