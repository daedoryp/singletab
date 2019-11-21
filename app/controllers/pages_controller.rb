class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :auth
  skip_before_action :verify_authenticity_token, only: :auth

  def visualisation
  end

  def data

    # Folder.all
    # http://api.myjson.com/bins/1f30qe
    # puis render.json(#)

# // This is a JSON String.
# var foo = '{ "prop": "val" }';

# # //this is how you serialize an Object into a JSON String.
# # var my_other_json_string = JSON.stringify( my_obj );

# # retrieve data from db tabs-controller.rb
#     folders = Folder.all
#     tabs = Tab.all

# # conditions
# folders.each

# # OPTION 1

folder = Folder.all
# var tab = JSON.stringify( tabs );



# # OPTION 2
# var folder = {
#   "folder": [
#     { user_id: current_user.id,
#       name: "name",
#       weight: 1
#     }
# ]
# };

# var tab = {
#   "tab": [
#     { name: "first",
#       url: tab["url"],
#       title: tab["title"],
#       icon: tab["icon"],
#       description: "",
#       comment: "",
#       folder_id: @folder.id
#     }]
# }

    render json:
    {
      "name":"variants","children":[
        folder.each do | x |
        {"name": "#{x.name}","size":1 }
        end
        ]
    }



# # => RESTITUE LE JSON

#     render json:
#     {
#       "name":"variants","children":[
#         {"name":"2","children":[
#         {"name":"p23.3","children":[
#         {"name":"IFT172","children":[
#         {"name":"undefined","size":28},
#       {"name":"aaaacxi7gjs3gascvqjaabaaaq","size":3},
#       {"name":"aaaacxi7gjs3eascvqjaabaaci","size":6},
#       {"name":"aaaacxi7gjs3gascvqjaabaabe","size":6},
#       {"name":"aaaacxi7gjs3gascvqjaabaacm","size":1},
#       {"name":"aaaacxi7gjs3eascvqjaabaaca","size":8},
#       {"name":"aaaacxi7gjs3gascvqjaabaace","size":7},
#       {"name":"aaaacxi7gjs3eascvqjaabaab4","size":5},
#       {"name":"aaaacxi7gjs3gascvqjaabaaae","size":3},
#       {"name":"aaaacxi7gjs3eascvqjaabaace","size":9},
#       {"name":"aaaacxi7gjs3eascvqjaabaacq","size":9},
#       {"name":"aaaacxi7gjs3gascvqjaabaaa4","size":4},
#       {"name":"aaaacxi7gjs3eascvqjaabaaau","size":13},
#       {"name":"aaaacxi7gjs3gascvqjaabaaay","size":5},
#       {"name":"aaaacxi7gjs3eascvqjaabaaby","size":6},
#       {"name":"aaaacxi7gjs3eascvqjaabaabq","size":5},
#       {"name":"aaaacxi7gjs3gascvqjaabaaam","size":6},
#       {"name":"aaaacxi7gjs3iascvqjaabaaaq","size":6},
#       {"name":"aaaacxi7gjs3eascvqjaabaabi","size":5},
#       {"name":"aaaacxi7gjs3iascvqjaabaaae","size":3},
#       {"name":"aaaacxi7gjs3gascvqjaabaacu","size":2},
#       {"name":"aaaacxi7gjs3eascvqjaabaabm","size":3},
#       {"name":"aaaacxi7gjs3gascvqjaabaabu","size":3},
#       {"name":"aaaacxi7gjs3iascvqjaabaaai","size":7},
#       {"name":"aaaacxi7gjs3gascvqjaabaac4","size":3},
#       {"name":"aaaacxi7gjs3gascvqjaabaabq","size":4},
#       {"name":"aaaacxi7gjs3eascvqjaabaaay","size":6},
#       {"name":"aaaacxi7gjs3gascvqjaabaabm","size":2},
#       {"name":"aaaacxi7gjs3iascvqjaabaaa4","size":5},
#       {"name":"aaaacxi7gjs3iascvqjaabaaau","size":7},
#       {"name":"aaaacxi7gjs3gascvqjaabaabi","size":5},
#       {"name":"aaaacxi7gjs3iascvqjaabaaba","size":12},
#       {"name":"aaaacxi7gjs3iascvqjaabaaay","size":4},
#       {"name":"aaaacxi7gjs3gascvqjaabaaca","size":6},
#       {"name":"aaaacxi7gjs3gascvqjaabaacq","size":4},
#       {"name":"aaaacxi7gjs3eascvqjaabaaa4","size":4},
#       {"name":"aaaacxi7gjs3iascvqjaabaabi","size":5},
#       {"name":"aaaacxi7gjs3iascvqjaabaabe","size":1},
#       {"name":"aaaacxi7gjs3gascvqjaabaaci","size":4},
#       {"name":"aaaacxi7gjs3gascvqjaabaaai","size":4},
#       {"name":"aaaacxi7gjs3gascvqjaabaaba","size":2},
#       {"name":"aaaacxi7gjs3gascvqjaabaada","size":1},
#       {"name":"aaaacxi7gjs3eascvqjaabaabe","size":2},
#       {"name":"aaaacxi7gjs3eascvqjaabaacm","size":5},
#       {"name":"aaaacxi7gjs3gascvqjaabaaau","size":2},
#       {"name":"aaaacxi7gjs3iascvqjaabaaam","size":1},
#       {"name":"aaaacxi7gjs3eascvqjaabaaba","size":1},
#       {"name":"aaaacxi7gjs3gascvqjaabaab4","size":3}]}]}]},
#       {"name":"3","children":[
#         {"name":"p21.31","children":[
#         {"name":"CACNA2D2","children":[
#         {"name":"aaaacxi7gjufoascvqjaabaafi","size":2},
#       {"name":"undefined","size":1},
#       {"name":"aaaacxi7gjufqascvqjaabaaae","size":2},
#       {"name":"aaaacxi7gjufqascvqjaabaadu","size":1},
#       {"name":"aaaacxi7gjufqascvqjaabaaee","size":2},
#       {"name":"aaaacxi7gjufqascvqjaabaace","size":1},
#       {"name":"aaaacxi7gjufqascvqjaabaaca","size":2},
#       {"name":"aaaacxi7gjufqascvqjaabaad4","size":2}]},
#       {"name":"LARS2","children":[
#         {"name":"aaaacxi7gj6pmascvqjaabaag4","size":30},
#       {"name":"aaaacxi7gj6pmascvqjaabaagy","size":9},
#       {"name":"aaaacxi7gj6pmascvqjaabaaga","size":16},
#       {"name":"aaaacxi7gj6pmascvqjaabaagq","size":8},
#       {"name":"aaaacxi7gj6pmascvqjaabaahi","size":11},
#       {"name":"aaaacxi7gj6pmascvqjaabaagm","size":14},
#       {"name":"aaaacxi7gj6pmascvqjaabaage","size":1},
#       {"name":"undefined","size":10},
#       {"name":"aaaacxi7gj6pmascvqjaabaaia","size":12},
#       {"name":"aaaacxi7gj6pmascvqjaabaahy","size":15},
#       {"name":"aaaacxi7gj6pmascvqjaabaafq","size":8},
#       {"name":"aaaacxi7gj6pmascvqjaabaaha","size":10},
#       {"name":"aaaacxi7gj6pmascvqjaabaagu","size":12},
#       {"name":"aaaacxi7gj6pmascvqjaabaaf4","size":10},
#       {"name":"aaaacxi7gj6pmascvqjaabaahq","size":10}]}]}]},
#       {"name":"7","children":[
#         {"name":"q22.1","children":[
#         {"name":"TFR2","children":[
#         {"name":"aaaacxi7gjz4wascvqjaabaadq","size":2},
#       {"name":"aaaacxi7gjz4yascvqjaabaaaq","size":1},
#       {"name":"undefined","size":24},
#       {"name":"aaaacxi7gjz4wascvqjaabaacq","size":4},
#       {"name":"aaaacxi7gjz4yascvqjaabaaay","size":1},
#       {"name":"aaaacxi7gjz4wascvqjaabaadm","size":1},
#       {"name":"aaaacxi7gjz4wascvqjaabaacy","size":2},
#       {"name":"aaaacxi7gjz4yascvqjaabaabi","size":2},
#       {"name":"aaaacxi7gjz4yascvqjaabaaau","size":6}]}]}]},
#       {"name":"9","children":[
#         {"name":"q22.2","children":[
#         {"name":"SECISBP2","children":[
#         {"name":"undefined","size":30},
#       {"name":"aaaacxi7gkabkascvqjaabaaea","size":9},
#       {"name":"aaaacxi7gkabkascvqjaabaae4","size":6},
#       {"name":"aaaacxi7gkabkascvqjaabaaf4","size":6},
#       {"name":"aaaacxi7gkabkascvqjaabaaey","size":7},
#       {"name":"aaaacxi7gkabkascvqjaabaafq","size":10}]}]}]},
#       {"name":"12","children":[
#         {"name":"q15","children":[
#         {"name":"NUP107","children":[
#         {"name":"undefined","size":16},
#       {"name":"aaaacxi7gj74sascvqjaabaaby","size":10},
#       {"name":"aaaacxi7gj74sascvqjaabaade","size":7},
#       {"name":"aaaacxi7gj74sascvqjaabaadq","size":9},
#       {"name":"aaaacxi7gj74sascvqjaabaab4","size":7},
#       {"name":"aaaacxi7gj74sascvqjaabaacu","size":9},
#       {"name":"aaaacxi7gj74sascvqjaabaaem","size":7},
#       {"name":"aaaacxi7gj74sascvqjaabaaa4","size":3},
#       {"name":"aaaacxi7gj74sascvqjaabaace","size":8},
#       {"name":"aaaacxi7gj74sascvqjaabaaee","size":7},
#       {"name":"aaaacxi7gj74sascvqjaabaady","size":3},
#       {"name":"aaaacxi7gj74sascvqjaabaabq","size":6},
#       {"name":"aaaacxi7gj74sascvqjaabaaca","size":8},
#       {"name":"aaaacxi7gj74sascvqjaabaabi","size":10},
#       {"name":"aaaacxi7gj74sascvqjaabaabm","size":5},
#       {"name":"aaaacxi7gj74sascvqjaabaacy","size":4},
#       {"name":"aaaacxi7gj74sascvqjaabaada","size":10},
#       {"name":"aaaacxi7gj74sascvqjaabaac4","size":6},
#       {"name":"aaaacxi7gj74sascvqjaabaabu","size":9},
#       {"name":"aaaacxi7gj74sascvqjaabaacm","size":7},
#       {"name":"aaaacxi7gj74sascvqjaabaacq","size":3},
#       {"name":"aaaacxi7gj74sascvqjaabaadu","size":3},
#       {"name":"aaaacxi7gj74sascvqjaabaad4","size":1},
#       {"name":"aaaacxi7gj74sascvqjaabaadi","size":4}]}]}]},
#       {"name":"17","children":[
#         {"name":"p13.1","children":[
#         {"name":"SCO1","children":[
#         {"name":"aaaacxi7gjwlyascvqjaabaacu","size":25},
#       {"name":"aaaacxi7gjwlyascvqjaabaace","size":39}]}]}]},
#       {"name":"19","children":[
#         {"name":"q13.2","children":[
#         {"name":"SPINT2","children":[
#         {"name":"aaaacxi7gjuvmascvqjaabaadm","size":1},
#       {"name":"undefined","size":5},
#       {"name":"aaaacxi7gjuvmascvqjaabaadi","size":3},
#       {"name":"aaaacxi7gjuvmascvqjaabaade","size":6},
#       {"name":"aaaacxi7gjuvmascvqjaabaac4","size":6},
#       {"name":"aaaacxi7gjuvmascvqjaabaada","size":4},
#       {"name":"aaaacxi7gjuvmascvqjaabaadu","size":2},
#       {"name":"aaaacxi7gjuvmascvqjaabaadq","size":1}]}]},
#       {"name":"p13.12","children":[
#         {"name":"PRKACA","children":[
#         {"name":"aaaacxi7gkb32ascvqjaabaagi","size":9}]}]}]},
#       {"name":"22","children":[
#         {"name":"q13.33","children":[
#         {"name":"SCO2","children":[
#         {"name":"undefined","size":32},
#       {"name":"aaaacxi7gka5qascvqjaabaaai","size":35},
#       {"name":"aaaacxi7gka5oascvqjaabaacq","size":7},
#       {"name":"aaaacxi7gka5qascvqjaabaaay","size":21},
#       {"name":"aaaacxi7gj4eqascvqjaabaab4","size":115},
#       {"name":"aaaacxi7gka5oascvqjaabaacm","size":5}]}]}]}]}
  end

  def auth
  	user = User.where("email = ?", params["email"]).first
	if user.valid_password?(params["password"])
  		render json: { token: user.authentication_token }
  	else
  		render json: { error: 'failed' }
  	end
  end
end
