command: "/usr/local/bin/chunkc tiling::query --desktop id"

refreshFrequency: 500

renderSpace: (index, active) ->
  """
    <li class="#{if active then 'active' else ''}">
      #{index}
    </li>
  """

render: (output) ->
  activeIndex = parseInt(output)
  """
    <ul>
      #{(this.renderSpace(i, activeIndex is i) for i in [1..4]).join(' ')}
    </ul>
  """

style: """
  -webkit-font-smoothing: antialiased
  color: #eee8d5
  font: 10px Fira Code Retina
  left: 5px
  top: 0px
  span
    color: #aaa
  ul
    list-style-type: none
    margin: 0
    padding: 0
    display: inline-block
    li
      opacity: .9;
      display: inline-block;
      height: 20px;
      width: 20px;
      text-align: center;
      line-height: 20px;
    li.active
      background: rgba(#0A84FF, .5);
"""
