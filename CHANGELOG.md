## Changes for Wed Sep 20 18:26:04 EDT 2023
### New Endpoints: 3
--------------------
GET /session/v1/player/{player_uuid}/session  
DELETE /session/v1/session/{session_id}/player/{player_uuid}  
POST /session/v1/session/{session_id}/player/{player_uuid}  

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 29
--------------------------
GET /session/v1/browser
- Description changed from 'Get all public sessions of a specific type

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:browser`


Required Permissions: None' to 'Get all public sessions of a specific type

Required Permissions: 
	For any player (including themselves)any of: `session:read:browser`, `session:*`


Required Permissions: None'

GET /session/v1/connection-info
- Description changed from 'Get public connection info for self

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Permissions: None' to 'Get public connection info for self

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Permissions: None'

GET /session/v1/instance-launch-templates/{instance_launch_template_id}
- Description changed from 'Get the config used to launch an instance by the launch template id. Launch template ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None
**DEPRECATED** - Use the /v1/instance-request-template endpoint instead. This endpoint does not support loading data from the developer-portal' to 'Get the config used to launch an instance by the launch template id. Launch template ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None
**DEPRECATED** - Use the /v1/instance-request-template endpoint instead. This endpoint does not support loading data from the developer-portal'

GET /session/v1/instance-request-template/{instance_request_template_id}
- Description changed from 'Get the config used to request an instance by the InstanceRequestTemplate ID. This ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None' to 'Get the config used to request an instance by the InstanceRequestTemplate ID. This ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None'

GET /session/v1/match-making-templates/{template_group_id}
- Description changed from 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`

            
Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead' to 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`

            
Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead'

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Description changed from 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Description changed from 'Join a platform session by ID, and the parent session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a platform session by ID, and the parent session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Description changed from 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Description changed from 'Join a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session, and be made its leader

Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session, and be made its leader

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

GET /session/v1/player/id/{player_id}/session
- Description changed from 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player/uuid endpoint instead' to 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player/uuid endpoint instead'

GET /session/v1/player/uuid/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead'
- Deprecated changed from false to true

GET /session/v1/queues
- Description changed from 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None
**DEPRECATED** - Use the V2 endpoint instead' to 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None
**DEPRECATED** - Use the V2 endpoint instead'

GET /session/v1/regions
- Description changed from 'Get all of the enabled regions and their configuration

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None' to 'Get all of the enabled regions and their configuration

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None'

POST /session/v1/session
- Description changed from 'Join the first publicly available session of given type. If there is no public session, and the session type
permits player made sessions, create a new session and put the player in it

Required Permissions: 
	For any player (including themselves)any of: `session:create`, `session:*`


Required Session Permissions: None' to 'Join the first publicly available session of given type. If there is no public session, and the session type
permits player made sessions, create a new session and put the player in it

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:create`


Required Session Permissions: None'

GET /session/v1/session/allocation/{allocation_id}
- Description changed from 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:read:allocation`, `session:*`


Required Session Permissions: None' to 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:allocation`


Required Session Permissions: None'

GET /session/v1/session/{session_id}
- Description changed from 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:self`, `session:read:any`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:any`, `session:read:self`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`, `session:read:event`


Required Session Permissions: None' to 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read:event`, `session:*`, `session:read-player:any`


Required Session Permissions: None'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:event`, `session:update:any`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:event`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player/uuid endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`, `session:update-player:self`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player/uuid endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player/uuid endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player/uuid endpoint instead'

POST /session/v1/session/{session_id}/player/me
- Description changed from 'Join a session with currently authed player

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a session with currently authed player

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'
- Deprecated changed from false to true

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'
- Deprecated changed from false to true

POST /session/v1/session/{session_id}/queue
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Required changed
          - Deleted required property: map_preferences
        - Properties changed
          - Modified property: map_preferences
            - Default changed from null to []

GET /session/v1/template
- Description changed from 'Get the config about all session templates

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None' to 'Get the config about all session templates

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None'

GET /session/v1/template/{session_type}
- Description changed from 'Get config about a session template by ID

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None' to 'Get config about a session template by ID

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None'

GET /session/v2/match-making-templates/{template_group_id}
- Description changed from 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead' to 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead'

GET /session/v2/queues
- Description changed from 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None' to 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None'
