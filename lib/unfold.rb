# frozen_string_literal: true

# @param [Object] seed
# @param [#to_proc] finish
# @yieldparam [Object] seed
# @yieldreturn [Object, Object] element, seed
# @return [<Object>]
def Enumerator.unfold(seed, finish = :nil?, &_block)
  new do |y|
    fin = finish.to_proc
    until fin.call(seed)
      elem, seed = yield(seed)
      y << elem
    end
  end
end
