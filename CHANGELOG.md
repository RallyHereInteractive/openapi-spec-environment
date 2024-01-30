## Changes for Tue Jan 30 14:55:57 EST 2024
### New Endpoints: 3
--------------------
GET /events/v1/event-params-schema  
GET /session/v1/match-making-profile/{match_making_profile_id}  
GET /session/v2/match-making-profile/{match_making_profile_id}  

### Deleted Endpoints: 3
------------------------
DELETE /session/v1/session/{session_id}/match  
PATCH /session/v1/session/{session_id}/match  
POST /session/v1/session/{session_id}/match  

### Modified Endpoints: 29
--------------------------
POST /inventory/v2/player/me/entitlement
- Description changed from 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /inventory/v2/player/me/entitlement/request/{request_id}
- Description changed from 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

POST /inventory/v2/player/{player_uuid}/entitlement
- Description changed from 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /inventory/v2/player/{player_uuid}/entitlement/request/{request_id}
- Description changed from 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /session/v1/browser
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: browser_sessions
              - Items changed
                - Properties changed
                  - Modified property: max_player_count
                    - Max changed from null to 100

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: matchmaking_results
            - Modified property: match
              - Property 'AllOf' changed
                - Schema #/components/schemas/MatchInfo modified
                  - Description changed from 'Information about a match' to 'DEPRECATED Information about a match'
            - Modified property: matchmaking
              - Description changed from 'Info about the matchmaking state of the session, if it is in the process of matchmaking' to 'DEPRECATED Info about the matchmaking state of the session, if it is in the process of matchmaking'
            - Modified property: teams
              - Items changed
                - Properties changed
                  - Modified property: max_size
                    - Max changed from null to 100

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: matchmaking_results
            - Modified property: match
              - Property 'AllOf' changed
                - Schema #/components/schemas/MatchInfo modified
                  - Description changed from 'Information about a match' to 'DEPRECATED Information about a match'
            - Modified property: matchmaking
              - Description changed from 'Info about the matchmaking state of the session, if it is in the process of matchmaking' to 'DEPRECATED Info about the matchmaking state of the session, if it is in the process of matchmaking'
            - Modified property: teams
              - Items changed
                - Properties changed
                  - Modified property: max_size
                    - Max changed from null to 100

GET /session/v1/player/id/{player_id}/session
- Description changed from 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead' to 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead'

GET /session/v1/player/uuid/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

GET /session/v1/player/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None'

GET /session/v1/session/allocation/{allocation_id}
- Description changed from 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:allocation`


Required Session Permissions: None' to 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:read:allocation`, `session:*`


Required Session Permissions: None'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: matchmaking_results
            - Modified property: match
              - Property 'AllOf' changed
                - Schema #/components/schemas/MatchInfo modified
                  - Description changed from 'Information about a match' to 'DEPRECATED Information about a match'
            - Modified property: matchmaking
              - Description changed from 'Info about the matchmaking state of the session, if it is in the process of matchmaking' to 'DEPRECATED Info about the matchmaking state of the session, if it is in the process of matchmaking'
            - Modified property: teams
              - Items changed
                - Properties changed
                  - Modified property: max_size
                    - Max changed from null to 100

GET /session/v1/session/{session_id}
- Description changed from 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:any`, `session:read:self`, `session:*`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:self`, `session:read:any`, `session:*`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: matchmaking_results
            - Modified property: match
              - Property 'AllOf' changed
                - Schema #/components/schemas/MatchInfo modified
                  - Description changed from 'Information about a match' to 'DEPRECATED Information about a match'
            - Modified property: matchmaking
              - Description changed from 'Info about the matchmaking state of the session, if it is in the process of matchmaking' to 'DEPRECATED Info about the matchmaking state of the session, if it is in the process of matchmaking'
            - Modified property: teams
              - Items changed
                - Properties changed
                  - Modified property: max_size
                    - Max changed from null to 100

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: teams
            - MaxItems changed from null to 50
            - Items changed
              - Properties changed
                - Modified property: max_size
                  - Min changed from null to 1
                  - Max changed from null to 100
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: matchmaking_results
            - Modified property: match
              - Property 'AllOf' changed
                - Schema #/components/schemas/MatchInfo modified
                  - Description changed from 'Information about a match' to 'DEPRECATED Information about a match'
            - Modified property: matchmaking
              - Description changed from 'Info about the matchmaking state of the session, if it is in the process of matchmaking' to 'DEPRECATED Info about the matchmaking state of the session, if it is in the process of matchmaking'
            - Modified property: teams
              - Items changed
                - Properties changed
                  - Modified property: max_size
                    - Max changed from null to 100

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read:event`, `session:*`, `session:read-player:any`


Required Session Permissions: None' to 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`, `session:read:event`


Required Session Permissions: None'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:event`, `session:*`, `session:update:any`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:event`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/invited-session/{invited_session_id}:invite
- Description changed from 'Invite an entire session to a target session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
 to invite any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`
 to invite a session you are part of

Required Session Permissions: None' to 'Invite an entire session to a target session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
 to invite any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`
 to invite a session you are part of

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/kicked-session/{kicked_session_id}
- Description changed from 'Remove players from a session, `{kicked_session_id}`, if they are also in the session `{session_id}`

Required Permissions: 
	For any player (including themselves): `session:*`
 to kick any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`
 to invite a session you are part of

Required Session Permissions: None' to 'Remove players from a session, `{kicked_session_id}`, if they are also in the session `{session_id}`

Required Permissions: 
	For any player (including themselves): `session:*`
 to kick any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`
 to invite a session you are part of

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`'

GET /session/v1/template
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: templates
              - AdditionalProperties changed
                - Properties changed
                  - Modified property: num_teams
                    - Max changed from null to 50
                  - Modified property: platform_templates
                    - AdditionalProperties changed
                      - Properties changed
                        - Modified property: max_players
                          - Max changed from null to 100
                  - Modified property: players_per_team
                    - Max changed from null to 100

GET /session/v1/template/{session_type}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: num_teams
              - Max changed from null to 50
            - Modified property: platform_templates
              - AdditionalProperties changed
                - Properties changed
                  - Modified property: max_players
                    - Max changed from null to 100
            - Modified property: players_per_team
              - Max changed from null to 100

GET /users/v1/platform-user
- Description changed from 'Find an existing platform user with their platform identity.

Required Permissions: 
	For any player (including themselves)any of: `user:*`, `user:platform:read`' to 'Find an existing platform user with their platform identity.

Required Permissions: 
	For any player (including themselves)any of: `user:platform:read`, `user:*`'

POST /users/v1/platform-user
- Description changed from 'Create a new platform user from a platform identity.

WARNING: This endpoint does not validate that the provided user ID is valid, and should only be used after validating a user's identity.

Required Permissions: 
	For any player (including themselves)any of: `user:*`, `user:platform:create`' to 'Create a new platform user from a platform identity.

WARNING: This endpoint does not validate that the provided user ID is valid, and should only be used after validating a user's identity.

Required Permissions: 
	For any player (including themselves)any of: `user:platform:create`, `user:*`'
## Changes for Tue Jan 23 17:24:27 EST 2024
### New Endpoints: None
-----------------------

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 30
--------------------------
GET /session/v1/browser
- Description changed from 'Get all public sessions of a specific type

Required Permissions: 
	For any player (including themselves)any of: `session:read:browser`, `session:*`


Required Permissions: None' to 'Get all public sessions of a specific type

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:browser`


Required Permissions: None'

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Description changed from 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Description changed from 'Join a platform session by ID, and the parent session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a platform session by ID, and the parent session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - Modified property: instance_health
                      - Property 'AnyOf' changed
                        - Schemas deleted: [InstanceHealthStatus InstanceStatus]
                      - Property 'AllOf' changed
                        - Schemas added: [InstanceHealthStatus]
                      - Title changed from 'Instance Health' to ''

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Description changed from 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Description changed from 'Join a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - Modified property: instance_health
                      - Property 'AnyOf' changed
                        - Schemas deleted: [InstanceHealthStatus InstanceStatus]
                      - Property 'AllOf' changed
                        - Schemas added: [InstanceHealthStatus]
                      - Title changed from 'Instance Health' to ''

GET /session/v1/player/id/{player_id}/session
- Description changed from 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead' to 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead'

GET /session/v1/player/uuid/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

GET /session/v1/player/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None'

GET /session/v1/session/allocation/{allocation_id}
- Description changed from 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:read:allocation`, `session:*`


Required Session Permissions: None' to 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:allocation`


Required Session Permissions: None'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - Modified property: instance_health
                      - Property 'AnyOf' changed
                        - Schemas deleted: [InstanceHealthStatus InstanceStatus]
                      - Property 'AllOf' changed
                        - Schemas added: [InstanceHealthStatus]
                      - Title changed from 'Instance Health' to ''

GET /session/v1/session/{session_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - Modified property: instance_health
                      - Property 'AnyOf' changed
                        - Schemas deleted: [InstanceHealthStatus InstanceStatus]
                      - Property 'AllOf' changed
                        - Schemas added: [InstanceHealthStatus]
                      - Title changed from 'Instance Health' to ''

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - New property: teams
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - Modified property: instance_health
                      - Property 'AnyOf' changed
                        - Schemas deleted: [InstanceHealthStatus InstanceStatus]
                      - Property 'AllOf' changed
                        - Schemas added: [InstanceHealthStatus]
                      - Title changed from 'Instance Health' to ''

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:read:event`, `session:*`


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
	For any player (including themselves)any of: `session:update:any`, `session:update:event`, `session:*`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:event`, `session:*`, `session:update:any`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance_health
              - Property 'AnyOf' changed
                - Schemas deleted: [InstanceHealthStatus InstanceStatus]
              - Property 'AllOf' changed
                - Schemas added: [InstanceHealthStatus]
              - Title changed from 'Instance Health' to ''

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance_health
              - Property 'AnyOf' changed
                - Schemas deleted: [InstanceHealthStatus InstanceStatus]
              - Property 'AllOf' changed
                - Schemas added: [InstanceHealthStatus]
              - Title changed from 'Instance Health' to ''

POST /session/v1/session/{session_id}/invited-session/{invited_session_id}:invite
- Description changed from 'Invite an entire session to a target session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
 to invite any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`
 to invite a session you are part of

Required Session Permissions: None' to 'Invite an entire session to a target session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
 to invite any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`
 to invite a session you are part of

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/kicked-session/{kicked_session_id}
- Description changed from 'Remove players from a session, `{kicked_session_id}`, if they are also in the session `{session_id}`

Required Permissions: 
	For any player (including themselves): `session:*`
 to kick any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`
 to invite a session you are part of

Required Session Permissions: None' to 'Remove players from a session, `{kicked_session_id}`, if they are also in the session `{session_id}`

Required Permissions: 
	For any player (including themselves): `session:*`
 to kick any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`
 to invite a session you are part of

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/me
- Description changed from 'Join a session with currently authed player

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a session with currently authed player

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin`'
## Changes for Tue Jan 23 15:21:51 EST 2024
### New Endpoints: 3
--------------------
POST /rank/v1/rank:calculate  
GET /users/v1/platform-user  
POST /users/v1/platform-user  

### Deleted Endpoints: 2
------------------------
POST /rank/v1/rank:calculate-trueskill  
POST /rank/v2/rank:calculate-trueskill  

### Modified Endpoints: 132
---------------------------
POST /events/v1/events
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: event_list
            - Items changed
              - Properties changed
                - Modified property: custom_data
                  - Default changed from map[] to null

GET /inventory/v1/marketing/campaign
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: campaigns
              - Items changed
                - Properties changed
                  - Modified property: portal_id
                    - Property 'AllOf' changed
                      - Schemas added: [Portal]
                      - Schemas deleted: [InventoryPortal]

POST /inventory/v1/player/me/inventory
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

PUT /inventory/v1/player/me/inventory
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

PUT /inventory/v1/player/me/inventory/{inventory_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

GET /inventory/v1/player/me/keyClaim
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: claims
              - Items changed
                - Properties changed
                  - Modified property: portal_id
                    - Property 'AllOf' changed
                      - Schemas added: [Portal]
                      - Schemas deleted: [InventoryPortal]

GET /inventory/v1/player/me/keyClaim/{key_claim_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

POST /inventory/v1/player/me/keyClaim/{key_claim_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

GET /inventory/v1/player/me/order
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: data
              - Items changed
                - Properties changed
                  - Modified property: entries
                    - Items changed
                      - Properties changed
                        - Modified property: details
                          - Items changed
                            - Properties changed
                              - Modified property: order
                                - Property 'AllOf' changed
                                  - Schema #/components/schemas/PlayerOrderCreate modified
                                    - Properties changed
                                      - Modified property: portal_id
                                        - Property 'AllOf' changed
                                          - Schemas added: [Portal]
                                          - Schemas deleted: [InventoryPortal]
                  - Modified property: portal_id
                    - Property 'AllOf' changed
                      - Schemas added: [Portal]
                      - Schemas deleted: [InventoryPortal]

POST /inventory/v1/player/me/order
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: portal_id
            - Property 'AllOf' changed
              - Schemas added: [Portal]
              - Schemas deleted: [InventoryPortal]
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

GET /inventory/v1/player/me/order/{order_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

POST /inventory/v1/player/{player_id}/inventory
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

PUT /inventory/v1/player/{player_id}/inventory
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

PUT /inventory/v1/player/{player_id}/inventory/{inventory_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

GET /inventory/v1/player/{player_id}/keyClaim
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: claims
              - Items changed
                - Properties changed
                  - Modified property: portal_id
                    - Property 'AllOf' changed
                      - Schemas added: [Portal]
                      - Schemas deleted: [InventoryPortal]

GET /inventory/v1/player/{player_id}/keyClaim/{key_claim_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

POST /inventory/v1/player/{player_id}/keyClaim/{key_claim_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

GET /inventory/v1/player/{player_id}/order
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: data
              - Items changed
                - Properties changed
                  - Modified property: entries
                    - Items changed
                      - Properties changed
                        - Modified property: details
                          - Items changed
                            - Properties changed
                              - Modified property: order
                                - Property 'AllOf' changed
                                  - Schema #/components/schemas/PlayerOrderCreate modified
                                    - Properties changed
                                      - Modified property: portal_id
                                        - Property 'AllOf' changed
                                          - Schemas added: [Portal]
                                          - Schemas deleted: [InventoryPortal]
                  - Modified property: portal_id
                    - Property 'AllOf' changed
                      - Schemas added: [Portal]
                      - Schemas deleted: [InventoryPortal]

POST /inventory/v1/player/{player_id}/order
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: portal_id
            - Property 'AllOf' changed
              - Schemas added: [Portal]
              - Schemas deleted: [InventoryPortal]
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

GET /inventory/v1/player/{player_id}/order/{order_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

POST /inventory/v2/player/me/inventory
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

PUT /inventory/v2/player/me/inventory
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

PUT /inventory/v2/player/me/inventory/{inventory_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

GET /inventory/v2/player/me/keyClaim
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: claims
              - Items changed
                - Properties changed
                  - Modified property: portal_id
                    - Property 'AllOf' changed
                      - Schemas added: [Portal]
                      - Schemas deleted: [InventoryPortal]

GET /inventory/v2/player/me/keyClaim/{key_claim_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

POST /inventory/v2/player/me/keyClaim/{key_claim_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

GET /inventory/v2/player/me/order
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: data
              - Items changed
                - Properties changed
                  - Modified property: entries
                    - Items changed
                      - Properties changed
                        - Modified property: details
                          - Items changed
                            - Properties changed
                              - Modified property: order
                                - Property 'AllOf' changed
                                  - Schema #/components/schemas/PlayerOrderCreate modified
                                    - Properties changed
                                      - Modified property: portal_id
                                        - Property 'AllOf' changed
                                          - Schemas added: [Portal]
                                          - Schemas deleted: [InventoryPortal]
                  - Modified property: portal_id
                    - Property 'AllOf' changed
                      - Schemas added: [Portal]
                      - Schemas deleted: [InventoryPortal]

POST /inventory/v2/player/me/order
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: portal_id
            - Property 'AllOf' changed
              - Schemas added: [Portal]
              - Schemas deleted: [InventoryPortal]
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

GET /inventory/v2/player/me/order/{order_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

POST /inventory/v2/player/{player_uuid}/inventory
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

PUT /inventory/v2/player/{player_uuid}/inventory
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

PUT /inventory/v2/player/{player_uuid}/inventory/{inventory_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

GET /inventory/v2/player/{player_uuid}/keyClaim
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: claims
              - Items changed
                - Properties changed
                  - Modified property: portal_id
                    - Property 'AllOf' changed
                      - Schemas added: [Portal]
                      - Schemas deleted: [InventoryPortal]

GET /inventory/v2/player/{player_uuid}/keyClaim/{key_claim_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

POST /inventory/v2/player/{player_uuid}/keyClaim/{key_claim_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

GET /inventory/v2/player/{player_uuid}/order
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: data
              - Items changed
                - Properties changed
                  - Modified property: entries
                    - Items changed
                      - Properties changed
                        - Modified property: details
                          - Items changed
                            - Properties changed
                              - Modified property: order
                                - Property 'AllOf' changed
                                  - Schema #/components/schemas/PlayerOrderCreate modified
                                    - Properties changed
                                      - Modified property: portal_id
                                        - Property 'AllOf' changed
                                          - Schemas added: [Portal]
                                          - Schemas deleted: [InventoryPortal]
                  - Modified property: portal_id
                    - Property 'AllOf' changed
                      - Schemas added: [Portal]
                      - Schemas deleted: [InventoryPortal]

POST /inventory/v2/player/{player_uuid}/order
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: portal_id
            - Property 'AllOf' changed
              - Schemas added: [Portal]
              - Schemas deleted: [InventoryPortal]
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]
  - Modified response: 202
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

GET /inventory/v2/player/{player_uuid}/order/{order_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: entries
              - Items changed
                - Properties changed
                  - Modified property: details
                    - Items changed
                      - Properties changed
                        - Modified property: order
                          - Property 'AllOf' changed
                            - Schema #/components/schemas/PlayerOrderCreate modified
                              - Properties changed
                                - Modified property: portal_id
                                  - Property 'AllOf' changed
                                    - Schemas added: [Portal]
                                    - Schemas deleted: [InventoryPortal]
            - Modified property: portal_id
              - Property 'AllOf' changed
                - Schemas added: [Portal]
                - Schemas deleted: [InventoryPortal]

GET /notification/v1/instance/{instance_id}/notification
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: cursor
          - Properties changed
            - New property: cursor
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

POST /notification/v1/instance/{instance_id}/notification
- Responses changed
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /notification/v1/instance/{instance_id}/notification/{notification_id}
- Responses changed
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /notification/v1/instance/{instance_id}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:instance:*`,`notification:instance:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.  The returned `cursor` value can be used as
`exclude_before` in subsequent polls to ensure you only receive new notifications.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:instance:*`,`notification:instance:read`'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: cursor
          - Properties changed
            - New property: cursor
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /notification/v1/player/me/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:player:read`,`notification:player:*`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:player:*`,`notification:player:read`'
- Responses changed
  - New response: 400
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: cursor
          - Properties changed
            - New property: cursor
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /notification/v1/player/me/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

Requires permissions: Any of `notification:player:read`,`notification:player:*`' to 'Retrieve a single notification by id

Requires permissions: Any of `notification:player:*`,`notification:player:read`'
- Responses changed
  - New response: 400
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /notification/v1/player/me/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:player:read`,`notification:player:*`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.  The returned `cursor` value can be used as
`exclude_before` in subsequent polls to ensure you only receive new notifications.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:player:*`,`notification:player:read`'
- Responses changed
  - New response: 400
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: cursor
          - Properties changed
            - New property: cursor
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /notification/v1/player/{player_uuid}/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:read`,`notification:player:*`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:*`,`notification:player:read`'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: cursor
          - Properties changed
            - New property: cursor
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

POST /notification/v1/player/{player_uuid}/notification
- Description changed from 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:player:write`, `notification:player:*`' to 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:player:*`, `notification:player:write`'
- Responses changed
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /notification/v1/player/{player_uuid}/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:read`,`notification:player:*`' to 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:*`,`notification:player:read`'
- Responses changed
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /notification/v1/player/{player_uuid}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:read`,`notification:player:*`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.  The returned `cursor` value can be used as
`exclude_before` in subsequent polls to ensure you only receive new notifications.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:*`,`notification:player:read`'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: cursor
          - Properties changed
            - New property: cursor
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /notification/v1/playerid/me/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'
- Responses changed
  - New response: 400
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: cursor
          - Properties changed
            - New property: cursor
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /notification/v1/playerid/me/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'
- Responses changed
  - New response: 400
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /notification/v1/playerid/me/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.  The returned `cursor` value can be used as
`exclude_before` in subsequent polls to ensure you only receive new notifications.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'
- Responses changed
  - New response: 400
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: cursor
          - Properties changed
            - New property: cursor
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /notification/v1/playerid/{player_id}/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: cursor
          - Properties changed
            - New property: cursor
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

POST /notification/v1/playerid/{player_id}/notification
- Description changed from 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:playerid:write`, `notification:playerid:*`' to 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:playerid:*`, `notification:playerid:write`'
- Responses changed
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /notification/v1/playerid/{player_id}/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'
- Responses changed
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /notification/v1/playerid/{player_id}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.  The returned `cursor` value can be used as
`exclude_before` in subsequent polls to ensure you only receive new notifications.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: cursor
          - Properties changed
            - New property: cursor
  - Modified response: 403
    - Description changed from '
Error Codes:
- insufficient_role - Insufficient Role access
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
- auth_not_jwt - Invalid Authorization
- auth_invalid_version - Invalid Authorization - version
- auth_token_expired - Token is expired
- auth_token_sig_invalid - Token Signature is invalid
- auth_token_unknown - Failed to parse token
- auth_token_invalid_claim - Token contained invalid claim value: {}
' to '
Error Codes:
- auth_token_invalid_claim - Token contained invalid claim value: {}
- auth_invalid_version - Invalid Authorization - version
- insufficient_permissions - Insufficient Permissions
- auth_token_sig_invalid - Token Signature is invalid
- auth_malformed_access - Invalid Authorization - malformed access token
- auth_token_expired - Token is expired
- auth_not_jwt - Invalid Authorization
- auth_token_unknown - Failed to parse token
- auth_invalid_key_id - Invalid Authorization - Invalid Key ID in Access Token
- auth_token_format - Invalid Authorization - {}
'

GET /presence/v1/admin/ccu/platforms
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'Platforms'
          - Required changed
            - New required property: platforms
          - Properties changed
            - New property: platforms

GET /presence/v1/admin/ccu/requesting/allplatforms/combined
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'PlatformUnionCCUs'
          - Required changed
            - New required property: platform_counts
          - Properties changed
            - New property: platform_counts

GET /presence/v1/admin/ccu/requesting/allplatforms/individual
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'PlatformIndividualCCUs'
          - Required changed
            - New required property: platform_ccus
          - Properties changed
            - New property: platform_ccus

GET /presence/v1/admin/ccu/requesting/combined
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'UnionCCU'
          - Required changed
            - New required property: count
            - New required property: timestamps
          - Properties changed
            - New property: count
            - New property: timestamps

GET /presence/v1/admin/ccu/requesting/individual
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'IndividualCCUs'
          - Required changed
            - New required property: ccus
          - Properties changed
            - New property: ccus

GET /presence/v1/admin/ccu/requesting/platform/{platform}/combined
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'PlatformUnionCCUs'
          - Required changed
            - New required property: platform_counts
          - Properties changed
            - New property: platform_counts

GET /presence/v1/admin/ccu/requesting/platform/{platform}/individual
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'PlatformIndividualCCUs'
          - Required changed
            - New required property: platform_ccus
          - Properties changed
            - New property: platform_ccus

GET /presence/v1/admin/ccu/total/allplatforms/combined
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'PlatformUnionCCUs'
          - Required changed
            - New required property: platform_counts
          - Properties changed
            - New property: platform_counts

GET /presence/v1/admin/ccu/total/allplatforms/individual
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'PlatformIndividualCCUs'
          - Required changed
            - New required property: platform_ccus
          - Properties changed
            - New property: platform_ccus

GET /presence/v1/admin/ccu/total/combined
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'UnionCCU'
          - Required changed
            - New required property: count
            - New required property: timestamps
          - Properties changed
            - New property: count
            - New property: timestamps

GET /presence/v1/admin/ccu/total/individual
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'IndividualCCUs'
          - Required changed
            - New required property: ccus
          - Properties changed
            - New property: ccus

GET /presence/v1/admin/ccu/total/platform/{platform}/combined
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'PlatformUnionCCUs'
          - Required changed
            - New required property: platform_counts
          - Properties changed
            - New property: platform_counts

GET /presence/v1/admin/ccu/total/platform/{platform}/individual
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'PlatformIndividualCCUs'
          - Required changed
            - New required property: platform_ccus
          - Properties changed
            - New property: platform_ccus

GET /presence/v1/admin/ccu/updating/allplatforms/combined
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Property 'AnyOf' changed
            - Schemas deleted: [PlatformUnionCCUs PlatformUnionCCUsAnyPlatform]
          - Type changed from '' to 'object'
          - Title changed from 'Response Admin Get Updating Ccu All Platform Combined V1 Admin Ccu Updating Allplatforms Combined Get' to 'PlatformUnionCCUs'
          - Required changed
            - New required property: platform_counts
          - Properties changed
            - New property: platform_counts

GET /presence/v1/admin/ccu/updating/allplatforms/individual
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'PlatformIndividualCCUs'
          - Required changed
            - New required property: platform_ccus
          - Properties changed
            - New property: platform_ccus

GET /presence/v1/admin/ccu/updating/combined
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'UnionCCU'
          - Required changed
            - New required property: count
            - New required property: timestamps
          - Properties changed
            - New property: count
            - New property: timestamps

GET /presence/v1/admin/ccu/updating/individual
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'IndividualCCUs'
          - Required changed
            - New required property: ccus
          - Properties changed
            - New property: ccus

GET /presence/v1/admin/ccu/updating/platform/{platform}/combined
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'PlatformUnionCCUs'
          - Required changed
            - New required property: platform_counts
          - Properties changed
            - New property: platform_counts

GET /presence/v1/admin/ccu/updating/platform/{platform}/individual
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Type changed from '' to 'object'
          - Title changed from '' to 'PlatformIndividualCCUs'
          - Required changed
            - New required property: platform_ccus
          - Properties changed
            - New property: platform_ccus

PATCH /presence/v1/admin/player/id/{player_id}/last_seen
- Responses changed
  - Modified response: 200
    - Content changed
      - Deleted media type: application/json

PATCH /presence/v1/player/me/presence
- Responses changed
  - Modified response: 200
    - Content changed
      - Deleted media type: application/json

GET /rank/v1/player/me/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank
                    - Property 'AllOf' changed
                      - Schema #/components/schemas/RankData modified
                        - Properties changed
                          - Modified property: sigma
                            - Min changed from 5 to 2

GET /rank/v1/player/me/rank/{rank_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank
                    - Property 'AllOf' changed
                      - Schema #/components/schemas/RankData modified
                        - Properties changed
                          - Modified property: sigma
                            - Min changed from 5 to 2

POST /rank/v1/player/me/rank/{rank_id}
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: rank
            - Property 'AllOf' changed
              - Schema #/components/schemas/RankData modified
                - Properties changed
                  - Modified property: sigma
                    - Min changed from 5 to 2
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank
                    - Property 'AllOf' changed
                      - Schema #/components/schemas/RankData modified
                        - Properties changed
                          - Modified property: sigma
                            - Min changed from 5 to 2

GET /rank/v1/player/{player_uuid}/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank
                    - Property 'AllOf' changed
                      - Schema #/components/schemas/RankData modified
                        - Properties changed
                          - Modified property: sigma
                            - Min changed from 5 to 2

GET /rank/v1/player/{player_uuid}/rank/{rank_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank
                    - Property 'AllOf' changed
                      - Schema #/components/schemas/RankData modified
                        - Properties changed
                          - Modified property: sigma
                            - Min changed from 5 to 2

POST /rank/v1/player/{player_uuid}/rank/{rank_id}
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: rank
            - Property 'AllOf' changed
              - Schema #/components/schemas/RankData modified
                - Properties changed
                  - Modified property: sigma
                    - Min changed from 5 to 2
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank
                    - Property 'AllOf' changed
                      - Schema #/components/schemas/RankData modified
                        - Properties changed
                          - Modified property: sigma
                            - Min changed from 5 to 2

GET /rank/v1/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: rank_configs
              - Items changed
                - Properties changed
                  - Modified property: default_variance
                    - Min changed from 5 to 2
                  - Modified property: min_variance_allowed
                    - Min changed from 5 to 2

GET /rank/v1/rank/{rank_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: rank_configs
              - Items changed
                - Properties changed
                  - Modified property: default_variance
                    - Min changed from 5 to 2
                  - Modified property: min_variance_allowed
                    - Min changed from 5 to 2

GET /rank/v2/player/me/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank
                    - Property 'AllOf' changed
                      - Schema #/components/schemas/RankData modified
                        - Properties changed
                          - Modified property: sigma
                            - Min changed from 5 to 2

GET /rank/v2/player/me/rank/{rank_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank
                    - Property 'AllOf' changed
                      - Schema #/components/schemas/RankData modified
                        - Properties changed
                          - Modified property: sigma
                            - Min changed from 5 to 2

POST /rank/v2/player/me/rank/{rank_id}
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: rank
            - Property 'AllOf' changed
              - Schema #/components/schemas/RankData modified
                - Properties changed
                  - Modified property: sigma
                    - Min changed from 5 to 2
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank
                    - Property 'AllOf' changed
                      - Schema #/components/schemas/RankData modified
                        - Properties changed
                          - Modified property: sigma
                            - Min changed from 5 to 2

GET /rank/v2/player/{player_uuid}/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank
                    - Property 'AllOf' changed
                      - Schema #/components/schemas/RankData modified
                        - Properties changed
                          - Modified property: sigma
                            - Min changed from 5 to 2

GET /rank/v2/player/{player_uuid}/rank/{rank_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank
                    - Property 'AllOf' changed
                      - Schema #/components/schemas/RankData modified
                        - Properties changed
                          - Modified property: sigma
                            - Min changed from 5 to 2

POST /rank/v2/player/{player_uuid}/rank/{rank_id}
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: rank
            - Property 'AllOf' changed
              - Schema #/components/schemas/RankData modified
                - Properties changed
                  - Modified property: sigma
                    - Min changed from 5 to 2
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank
                    - Property 'AllOf' changed
                      - Schema #/components/schemas/RankData modified
                        - Properties changed
                          - Modified property: sigma
                            - Min changed from 5 to 2

GET /rank/v2/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: rank_configs
              - Items changed
                - Properties changed
                  - Modified property: default_variance
                    - Min changed from 5 to 2
                  - Modified property: min_variance_allowed
                    - Min changed from 5 to 2

GET /rank/v2/rank/{rank_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: rank_configs
              - Items changed
                - Properties changed
                  - Modified property: default_variance
                    - Min changed from 5 to 2
                  - Modified property: min_variance_allowed
                    - Min changed from 5 to 2

GET /session/v1/browser
- Description changed from 'Get all public sessions of a specific type

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:browser`


Required Permissions: None' to 'Get all public sessions of a specific type

Required Permissions: 
	For any player (including themselves)any of: `session:read:browser`, `session:*`


Required Permissions: None'

GET /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}
- Description changed from 'Get information about a platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:read:any` auth permission' to 'Get information about a platform session

Required Permissions: 
	For any player (including themselves)any of: `session:read:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:read:any` auth permission'

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
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - Modified property: instance_health
                      - Property 'AnyOf' changed
                        - Schemas added: [InstanceHealthStatus InstanceStatus]
                      - Property 'AllOf' changed
                        - Schemas deleted: [InstanceHealthStatus]
                      - Title changed from '' to 'Instance Health'

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
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - Modified property: instance_health
                      - Property 'AnyOf' changed
                        - Schemas added: [InstanceHealthStatus InstanceStatus]
                      - Property 'AllOf' changed
                        - Schemas deleted: [InstanceHealthStatus]
                      - Title changed from '' to 'Instance Health'

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Remove a platform session from a Rally Here session
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Remove a platform session from a Rally Here session
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

GET /session/v1/player/id/{player_id}/session
- Description changed from 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead' to 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead'

GET /session/v1/player/uuid/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

GET /session/v1/player/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None'

POST /session/v1/session
- Description changed from 'Join the first publicly available session of given type. If there is no public session, and the session type
permits player made sessions, create a new session and put the player in it

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:create`


Required Session Permissions: None' to 'Join the first publicly available session of given type. If there is no public session, and the session type
permits player made sessions, create a new session and put the player in it

Required Permissions: 
	For any player (including themselves)any of: `session:create`, `session:*`


Required Session Permissions: None'

GET /session/v1/session/allocation/{allocation_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - Modified property: instance_health
                      - Property 'AnyOf' changed
                        - Schemas added: [InstanceHealthStatus InstanceStatus]
                      - Property 'AllOf' changed
                        - Schemas deleted: [InstanceHealthStatus]
                      - Title changed from '' to 'Instance Health'

GET /session/v1/session/{session_id}
- Description changed from 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:self`, `session:*`, `session:read:any`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:any`, `session:read:self`, `session:*`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - Modified property: instance_health
                      - Property 'AnyOf' changed
                        - Schemas added: [InstanceHealthStatus InstanceStatus]
                      - Property 'AllOf' changed
                        - Schemas deleted: [InstanceHealthStatus]
                      - Title changed from '' to 'Instance Health'

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - Modified property: instance_health
                      - Property 'AnyOf' changed
                        - Schemas added: [InstanceHealthStatus InstanceStatus]
                      - Property 'AllOf' changed
                        - Schemas deleted: [InstanceHealthStatus]
                      - Title changed from '' to 'Instance Health'

DELETE /session/v1/session/{session_id}/browser
- Description changed from 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

PATCH /session/v1/session/{session_id}/browser
- Description changed from 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/browser
- Description changed from 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:event`, `session:read-player:any`


Required Session Permissions: None' to 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:read:event`, `session:*`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance_health
              - Property 'AnyOf' changed
                - Schemas added: [InstanceHealthStatus InstanceStatus]
              - Property 'AllOf' changed
                - Schemas deleted: [InstanceHealthStatus]
              - Title changed from '' to 'Instance Health'

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance_health
              - Property 'AnyOf' changed
                - Schemas added: [InstanceHealthStatus InstanceStatus]
              - Property 'AllOf' changed
                - Schemas deleted: [InstanceHealthStatus]
              - Title changed from '' to 'Instance Health'

POST /session/v1/session/{session_id}/invited-session/{invited_session_id}:invite
- Description changed from 'Invite an entire session to a target session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
 to invite any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`
 to invite a session you are part of

Required Session Permissions: None' to 'Invite an entire session to a target session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
 to invite any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`
 to invite a session you are part of

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/kicked-session/{kicked_session_id}
- Description changed from 'Remove players from a session, `{kicked_session_id}`, if they are also in the session `{session_id}`

Required Permissions: 
	For any player (including themselves): `session:*`
 to kick any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`
 to invite a session you are part of

Required Session Permissions: None' to 'Remove players from a session, `{kicked_session_id}`, if they are also in the session `{session_id}`

Required Permissions: 
	For any player (including themselves): `session:*`
 to kick any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`
 to invite a session you are part of

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'

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
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`'

POST /users/v1/link
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Description changed from '' to 'The HTTP authorization credentials in the result of using `HTTPBearer` or
`HTTPDigest` in a dependency.

The HTTP authorization header value is split by the first space.

The first part is the `scheme`, the second part is the `credentials`.

For example, in an HTTP Bearer token scheme, the client will send a header
like:

```
Authorization: Bearer deadbeef12346
```

In this case:

* `scheme` will have the value `"Bearer"`
* `credentials` will have the value `"deadbeef12346"`'

POST /users/v1/login
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: portal_parent_auth_result
              - Property 'AllOf' changed
                - Schema #/components/schemas/PortalUserInfo modified
                  - Properties changed
                    - Modified property: portal_id
                      - Property 'AllOf' changed
                        - Schemas added: [dependencies__schemas__Portal]
                        - Schemas deleted: [Portal]

GET /users/v1/player
- Modified query param: identity_platform
  - Schema changed
    - Property 'AllOf' changed
      - Schemas added: [fastapicommon__platforms__Portal]
      - Schemas deleted: [Portal]
## Changes for Mon Dec 18 19:42:39 EST 2023
### New Endpoints: 1
--------------------
GET /config/v1/environment  

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 44
--------------------------
POST /events/v1/events
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Required changed
          - New required property: event_list
          - Deleted required property: eventList
        - Properties changed
          - New property: event_list
          - Deleted property: eventList

POST /inventory/v2/player/me/entitlement
- Description changed from 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`' to 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`'

GET /inventory/v2/player/me/entitlement/request/{request_id}
- Description changed from 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`' to 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`'

POST /inventory/v2/player/{player_uuid}/entitlement
- Description changed from 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`' to 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`'

GET /inventory/v2/player/{player_uuid}/entitlement/request/{request_id}
- Description changed from 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`' to 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`'

POST /notification/v1/player/{player_uuid}/notification
- Description changed from 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:player:*`, `notification:player:write`' to 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:player:write`, `notification:player:*`'

GET /presence/v1/admin/ccu/updating/allplatforms/combined
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Property 'AnyOf' changed
            - Schemas added: [PlatformUnionCCUs PlatformUnionCCUsAnyPlatform]
          - Title changed from '' to 'Response Admin Get Updating Ccu All Platform Combined V1 Admin Ccu Updating Allplatforms Combined Get'

GET /session/v1/backfill/config
- Description changed from 'Get config about how often backfill heartbeats must be sent in order to prevent the backfill resource from being deleted

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`' to 'Get config about how often backfill heartbeats must be sent in order to prevent the backfill resource from being deleted

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`'

POST /session/v1/backfill/session/{session_id}
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - New property: overflow_action

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

GET /session/v1/instance/health/config
- Description changed from 'Get config about expected poll rates for instance health, and when instances will go missing/unhealthy

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`' to 'Get config about expected poll rates for instance health, and when instances will go missing/unhealthy

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`'

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

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: match_making_profile_id
            - Modified property: teams
              - Items changed
                - Properties changed
                  - New property: ticket_ids

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: match_making_profile_id
            - Modified property: teams
              - Items changed
                - Properties changed
                  - New property: ticket_ids

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

GET /session/v1/session/allocation/{allocation_id}
- Description changed from 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:allocation`


Required Session Permissions: None' to 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:read:allocation`, `session:*`


Required Session Permissions: None'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: match_making_profile_id
            - Modified property: teams
              - Items changed
                - Properties changed
                  - New property: ticket_ids

GET /session/v1/session/{session_id}
- Description changed from 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:any`, `session:read:self`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:self`, `session:*`, `session:read:any`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: match_making_profile_id
            - Modified property: teams
              - Items changed
                - Properties changed
                  - New property: ticket_ids

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: match_making_profile_id
            - Modified property: teams
              - Items changed
                - Properties changed
                  - New property: ticket_ids

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
	For any player (including themselves)any of: `session:update:any`, `session:update:event`, `session:*`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: match_making_profile_id

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: match_making_profile_id

POST /session/v1/session/{session_id}/instance/fubar
- Description changed from 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:fubar`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:update:fubar`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/invited-session/{invited_session_id}:invite
- Description changed from 'Invite an entire session to a target session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
 to invite any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`
 to invite a session you are part of

Required Session Permissions: None' to 'Invite an entire session to a target session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
 to invite any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`
 to invite a session you are part of

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/kicked-session/{kicked_session_id}
- Description changed from 'Remove players from a session, `{kicked_session_id}`, if they are also in the session `{session_id}`

Required Permissions: 
	For any player (including themselves): `session:*`
 to kick any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`
 to invite a session you are part of

Required Session Permissions: None' to 'Remove players from a session, `{kicked_session_id}`, if they are also in the session `{session_id}`

Required Permissions: 
	For any player (including themselves): `session:*`
 to kick any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`
 to invite a session you are part of

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - New property: overflow_action

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - New property: overflow_action

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - New property: overflow_action

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

               
Required Session Permissions: `SessionPermissions.session_admin`'
- New query param: reason

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin`'

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

GET /users/v1/role
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Items changed
            - Properties changed
              - New property: legacy_role_id
              - Modified property: login_loot_rewards
                - Description changed from 'List of loot table item ids that are fulfilled for the player when they begin a new inventory session' to 'List of loot ids that are fulfilled for the player when they begin a new inventory session'
                - Items changed
                  - Type changed from 'integer' to 'object'
                  - Title changed from '' to 'LoginLootReward'
                  - Description changed from '' to 'Login loot reward'
                  - Required changed
                    - New required property: legacy_loot_id
                  - Properties changed
                    - New property: legacy_loot_id
                    - New property: loot_id
## Changes for Thu Nov 30 11:34:36 EST 2023
### New Endpoints: None
-----------------------

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 48
--------------------------
GET /session/v1/backfill/config
- Description changed from 'Get config about how often backfill heartbeats must be sent in order to prevent the backfill resource from being deleted

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`' to 'Get config about how often backfill heartbeats must be sent in order to prevent the backfill resource from being deleted

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`'

GET /session/v1/connection-info
- Description changed from 'Get public connection info for self

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Permissions: None' to 'Get public connection info for self

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Permissions: None'

GET /session/v1/instance-launch-templates/{instance_launch_template_id}
- Description changed from 'Get the config used to launch an instance by the launch template id. Launch template ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None
**DEPRECATED** - Use the /v1/instance-request-template endpoint instead. This endpoint does not support loading data from the developer-portal' to 'Get the config used to launch an instance by the launch template id. Launch template ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None
**DEPRECATED** - Use the /v1/instance-request-template endpoint instead. This endpoint does not support loading data from the developer-portal'

GET /session/v1/instance-request-template/{instance_request_template_id}
- Description changed from 'Get the config used to request an instance by the InstanceRequestTemplate ID. This ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get the config used to request an instance by the InstanceRequestTemplate ID. This ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None'

GET /session/v1/instance/health/config
- Description changed from 'Get config about expected poll rates for instance health, and when instances will go missing/unhealthy

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`' to 'Get config about expected poll rates for instance health, and when instances will go missing/unhealthy

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`'

GET /session/v1/match-making-templates/{template_group_id}
- Description changed from 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`

            
Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead' to 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`

            
Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead'

GET /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}
- Description changed from 'Get information about a platform session

Required Permissions: 
	For any player (including themselves)any of: `session:read:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:read:any` auth permission' to 'Get information about a platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:read:any` auth permission'

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Description changed from 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Description changed from 'Join a platform session by ID, and the parent session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a platform session by ID, and the parent session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Description changed from 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Description changed from 'Join a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Remove a platform session from a Rally Here session
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Remove a platform session from a Rally Here session
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

GET /session/v1/player/id/{player_id}/session
- Description changed from 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead' to 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead'

GET /session/v1/player/uuid/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

GET /session/v1/player/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None'

GET /session/v1/queues
- Description changed from 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None
**DEPRECATED** - Use the V2 endpoint instead' to 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None
**DEPRECATED** - Use the V2 endpoint instead'

GET /session/v1/regions
- Description changed from 'Get all of the enabled regions and their configuration

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get all of the enabled regions and their configuration

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


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
	For any player (including themselves)any of: `session:read:any`, `session:read:self`, `session:*`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:any`, `session:read:self`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/browser
- Description changed from 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

PATCH /session/v1/session/{session_id}/browser
- Description changed from 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/browser
- Description changed from 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:read:event`, `session:*`


Required Session Permissions: None' to 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:event`, `session:read-player:any`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance/fubar
- Description changed from 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:update:fubar`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:fubar`


Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/invited-session/{invited_session_id}:invite
- Description changed from 'Invite an entire session to a target session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
 to invite any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`
 to invite a session you are part of

Required Session Permissions: None' to 'Invite an entire session to a target session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
 to invite any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`
 to invite a session you are part of

Required Session Permissions: None'
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Title changed from 'CohortInviteRequest' to 'SessionInviteRequest'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Title changed from 'CohortInviteResponse' to 'SessionInviteResponse'

DELETE /session/v1/session/{session_id}/kicked-session/{kicked_session_id}
- Description changed from 'Remove players from a session, `{kicked_session_id}`, if they are also in the session `{session_id}`

Required Permissions: 
	For any player (including themselves): `session:*`
 to kick any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`
 to invite a session you are part of

Required Session Permissions: None' to 'Remove players from a session, `{kicked_session_id}`, if they are also in the session `{session_id}`

Required Permissions: 
	For any player (including themselves): `session:*`
 to kick any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`
 to invite a session you are part of

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/me
- Description changed from 'Join a session with currently authed player

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a session with currently authed player

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin`'

GET /session/v1/template
- Description changed from 'Get the config about all session templates

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get the config about all session templates

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None'

GET /session/v1/template/{session_type}
- Description changed from 'Get config about a session template by ID

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get config about a session template by ID

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None'

GET /session/v2/match-making-templates/{template_group_id}
- Description changed from 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead' to 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead'

GET /session/v2/queues
- Description changed from 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None'
## Changes for Thu Nov 30 11:18:45 EST 2023
### New Endpoints: None
-----------------------

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 43
--------------------------
POST /events/v1/events
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: eventList
            - Items changed
              - AdditionalProperties changed from null to false
              - Required changed
                - Deleted required property: sessionID
                - Deleted required property: userID
              - Properties changed
                - New property: customData
                - Modified property: eventName
                  - MinLength changed from 0 to 1
                  - MaxLength changed from null to 128
                - Modified property: eventParams
                  - AdditionalProperties changed
                    - Schema added
                - Modified property: sessionID
                  - MinLength changed from 0 to 1
                  - MaxLength changed from null to 128
                - Modified property: userID
                  - MinLength changed from 0 to 1
                  - MaxLength changed from null to 128
- Responses changed
  - New response: 207
  - New response: 400
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: errors

POST /inventory/v2/player/me/entitlement
- Description changed from 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /inventory/v2/player/me/entitlement/request/{request_id}
- Description changed from 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

POST /inventory/v2/player/{player_uuid}/entitlement
- Description changed from 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /inventory/v2/player/{player_uuid}/entitlement/request/{request_id}
- Description changed from 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /notification/v1/player/me/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:player:*`,`notification:player:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:player:read`,`notification:player:*`'

GET /notification/v1/player/me/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

Requires permissions: Any of `notification:player:*`,`notification:player:read`' to 'Retrieve a single notification by id

Requires permissions: Any of `notification:player:read`,`notification:player:*`'

GET /notification/v1/player/me/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:player:*`,`notification:player:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:player:read`,`notification:player:*`'

GET /notification/v1/player/{player_uuid}/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:*`,`notification:player:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:read`,`notification:player:*`'

GET /notification/v1/player/{player_uuid}/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:*`,`notification:player:read`' to 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:read`,`notification:player:*`'

GET /notification/v1/player/{player_uuid}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:*`,`notification:player:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:read`,`notification:player:*`'

GET /notification/v1/playerid/me/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/me/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/me/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

PATCH /session/v1/backfill/session/{session_id}
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: instance_id
            - Description changed from 'The instance ID for the instance acknowledging backfill.' to 'The instance ID for this backfill request'

POST /session/v1/backfill/session/{session_id}
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Deleted property: overflow_action
          - Modified property: instance_id
            - Description changed from 'The instance ID for the instance acknowledging backfill.' to 'The instance ID for this backfill request'

GET /session/v1/browser
- Description changed from 'Get all public sessions of a specific type

Required Permissions: 
	For any player (including themselves)any of: `session:read:browser`, `session:*`


Required Permissions: None' to 'Get all public sessions of a specific type

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:browser`


Required Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Required changed
                    - New required property: instance_id

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Required changed
                    - New required property: instance_id

GET /session/v1/session/allocation/{allocation_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Required changed
                    - New required property: instance_id

GET /session/v1/session/{session_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Required changed
                    - New required property: instance_id

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Required changed
                    - New required property: instance_id

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read:event`, `session:read-player:any`, `session:*`


Required Session Permissions: None' to 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:read:event`, `session:*`


Required Session Permissions: None'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:event`, `session:*`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:event`, `session:update:any`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: instance_id

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: instance_id

POST /session/v1/session/{session_id}/invited-session/{invited_session_id}:invite
- Description changed from 'Invite an entire session to a target session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
 to invite any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`
 to invite a session you are part of

Required Session Permissions: None' to 'Invite an entire session to a target session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
 to invite any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`
 to invite a session you are part of

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/kicked-session/{kicked_session_id}
- Description changed from 'Remove players from a session, `{kicked_session_id}`, if they are also in the session `{session_id}`

Required Permissions: 
	For any player (including themselves): `session:*`
 to kick any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`
 to invite a session you are part of

Required Session Permissions: None' to 'Remove players from a session, `{kicked_session_id}`, if they are also in the session `{session_id}`

Required Permissions: 
	For any player (including themselves): `session:*`
 to kick any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`
 to invite a session you are part of

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin`'
## Changes for Thu Nov 30 11:15:54 EST 2023
### New Endpoints: None
-----------------------

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 43
--------------------------
POST /events/v1/events
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: eventList
            - Items changed
              - AdditionalProperties changed from null to false
              - Required changed
                - Deleted required property: sessionID
                - Deleted required property: userID
              - Properties changed
                - New property: customData
                - Modified property: eventName
                  - MinLength changed from 0 to 1
                  - MaxLength changed from null to 128
                - Modified property: eventParams
                  - AdditionalProperties changed
                    - Schema added
                - Modified property: sessionID
                  - MinLength changed from 0 to 1
                  - MaxLength changed from null to 128
                - Modified property: userID
                  - MinLength changed from 0 to 1
                  - MaxLength changed from null to 128
- Responses changed
  - New response: 207
  - New response: 400
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: errors

POST /inventory/v2/player/me/entitlement
- Description changed from 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /inventory/v2/player/me/entitlement/request/{request_id}
- Description changed from 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

POST /inventory/v2/player/{player_uuid}/entitlement
- Description changed from 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /inventory/v2/player/{player_uuid}/entitlement/request/{request_id}
- Description changed from 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /notification/v1/player/me/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:player:*`,`notification:player:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:player:read`,`notification:player:*`'

GET /notification/v1/player/me/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

Requires permissions: Any of `notification:player:*`,`notification:player:read`' to 'Retrieve a single notification by id

Requires permissions: Any of `notification:player:read`,`notification:player:*`'

GET /notification/v1/player/me/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:player:*`,`notification:player:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:player:read`,`notification:player:*`'

GET /notification/v1/player/{player_uuid}/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:*`,`notification:player:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:read`,`notification:player:*`'

GET /notification/v1/player/{player_uuid}/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:*`,`notification:player:read`' to 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:read`,`notification:player:*`'

GET /notification/v1/player/{player_uuid}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:*`,`notification:player:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:read`,`notification:player:*`'

GET /notification/v1/playerid/me/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/me/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/me/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

PATCH /session/v1/backfill/session/{session_id}
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: instance_id
            - Description changed from 'The instance ID for the instance acknowledging backfill.' to 'The instance ID for this backfill request'

POST /session/v1/backfill/session/{session_id}
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Deleted property: overflow_action
          - Modified property: instance_id
            - Description changed from 'The instance ID for the instance acknowledging backfill.' to 'The instance ID for this backfill request'

GET /session/v1/browser
- Description changed from 'Get all public sessions of a specific type

Required Permissions: 
	For any player (including themselves)any of: `session:read:browser`, `session:*`


Required Permissions: None' to 'Get all public sessions of a specific type

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:browser`


Required Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Required changed
                    - New required property: instance_id

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Required changed
                    - New required property: instance_id

GET /session/v1/session/allocation/{allocation_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Required changed
                    - New required property: instance_id

GET /session/v1/session/{session_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Required changed
                    - New required property: instance_id

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Required changed
                    - New required property: instance_id

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read:event`, `session:read-player:any`, `session:*`


Required Session Permissions: None' to 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:read:event`, `session:*`


Required Session Permissions: None'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:event`, `session:*`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:event`, `session:update:any`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: instance_id

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: instance_id

POST /session/v1/session/{session_id}/invited-session/{invited_session_id}:invite
- Description changed from 'Invite an entire session to a target session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
 to invite any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`
 to invite a session you are part of

Required Session Permissions: None' to 'Invite an entire session to a target session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
 to invite any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`
 to invite a session you are part of

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/kicked-session/{kicked_session_id}
- Description changed from 'Remove players from a session, `{kicked_session_id}`, if they are also in the session `{session_id}`

Required Permissions: 
	For any player (including themselves): `session:*`
 to kick any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`
 to invite a session you are part of

Required Session Permissions: None' to 'Remove players from a session, `{kicked_session_id}`, if they are also in the session `{session_id}`

Required Permissions: 
	For any player (including themselves): `session:*`
 to kick any session regardless of membership status

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`
 to invite a session you are part of

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:update-player:self`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:*`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin`'
## Changes for Mon Nov 20 13:47:36 EST 2023
### New Endpoints: 3
--------------------
POST /session/v1/backfill/session/{session_id}  
POST /session/v1/session/{session_id}/invited-session/{invited_session_id}:invite  
DELETE /session/v1/session/{session_id}/kicked-session/{kicked_session_id}  

### Deleted Endpoints: 3
------------------------
POST /session/v1/backfill/session/{session_id}/  
DELETE /session/v1/session/{session_id}/target-session/{target_session_id}  
POST /session/v1/session/{session_id}/target-session/{target_session_id}:invite  

### Modified Endpoints: 49
--------------------------
GET /session/v1/backfill/config
- Description changed from 'Get config about how often backfill heartbeats must be sent in order to prevent the backfill resource from being deleted

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`' to 'Get config about how often backfill heartbeats must be sent in order to prevent the backfill resource from being deleted

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`'

PATCH /session/v1/backfill/session/{session_id}
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - New property: teams

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

GET /session/v1/instance/health/config
- Description changed from 'Get config about expected poll rates for instance health, and when instances will go missing/unhealthy

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`' to 'Get config about expected poll rates for instance health, and when instances will go missing/unhealthy

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`'

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

GET /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}
- Description changed from 'Get information about a platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:read:any` auth permission' to 'Get information about a platform session

Required Permissions: 
	For any player (including themselves)any of: `session:read:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:read:any` auth permission'

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

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Remove a platform session from a Rally Here session
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Remove a platform session from a Rally Here session
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

GET /session/v1/player/id/{player_id}/session
- Description changed from 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead' to 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead'

GET /session/v1/player/uuid/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

GET /session/v1/player/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None'

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
	For any player (including themselves)any of: `session:*`, `session:create`


Required Session Permissions: None' to 'Join the first publicly available session of given type. If there is no public session, and the session type
permits player made sessions, create a new session and put the player in it

Required Permissions: 
	For any player (including themselves)any of: `session:create`, `session:*`


Required Session Permissions: None'

GET /session/v1/session/allocation/{allocation_id}
- Description changed from 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:allocation`


Required Session Permissions: None' to 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:read:allocation`, `session:*`


Required Session Permissions: None'

GET /session/v1/session/{session_id}
- Description changed from 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:any`, `session:read:self`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:any`, `session:read:self`, `session:*`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/browser
- Description changed from 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

PATCH /session/v1/session/{session_id}/browser
- Description changed from 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/browser
- Description changed from 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`, `session:read:event`


Required Session Permissions: None' to 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read:event`, `session:read-player:any`, `session:*`


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
	For any player (including themselves)any of: `session:update:any`, `session:update:event`, `session:*`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance/fubar
- Description changed from 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:fubar`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:update:fubar`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'

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
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`'

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
## Changes for Wed Nov 15 14:27:03 EST 2023
### New Endpoints: 2
--------------------
DELETE /session/v1/session/{session_id}/target-session/{target_session_id}  
POST /session/v1/session/{session_id}/target-session/{target_session_id}:invite  

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 43
--------------------------
GET /session/v1/backfill/config
- Description changed from 'Get config about how often backfill heartbeats must be sent in order to prevent the backfill resource from being deleted

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`' to 'Get config about how often backfill heartbeats must be sent in order to prevent the backfill resource from being deleted

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`'

GET /session/v1/connection-info
- Description changed from 'Get public connection info for self

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Permissions: None' to 'Get public connection info for self

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Permissions: None'

GET /session/v1/instance-launch-templates/{instance_launch_template_id}
- Description changed from 'Get the config used to launch an instance by the launch template id. Launch template ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None
**DEPRECATED** - Use the /v1/instance-request-template endpoint instead. This endpoint does not support loading data from the developer-portal' to 'Get the config used to launch an instance by the launch template id. Launch template ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None
**DEPRECATED** - Use the /v1/instance-request-template endpoint instead. This endpoint does not support loading data from the developer-portal'

GET /session/v1/instance-request-template/{instance_request_template_id}
- Description changed from 'Get the config used to request an instance by the InstanceRequestTemplate ID. This ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get the config used to request an instance by the InstanceRequestTemplate ID. This ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None'

GET /session/v1/instance/health/config
- Description changed from 'Get config about expected poll rates for instance health, and when instances will go missing/unhealthy

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`' to 'Get config about expected poll rates for instance health, and when instances will go missing/unhealthy

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`'

GET /session/v1/match-making-templates/{template_group_id}
- Description changed from 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`

            
Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead' to 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`

            
Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead'

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Description changed from 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Description changed from 'Join a platform session by ID, and the parent session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a platform session by ID, and the parent session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: teams
              - Items changed
                - Properties changed
                  - Modified property: players
                    - Items changed
                      - Properties changed
                        - New property: source_session_id
                        - Modified property: inviting_player_uuid
                          - Description changed from 'If the player is only a pending invite, this is the player that requested the invite' to 'UUID of the player who sent this players invite, if any'

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Description changed from 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Description changed from 'Join a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: teams
              - Items changed
                - Properties changed
                  - Modified property: players
                    - Items changed
                      - Properties changed
                        - New property: source_session_id
                        - Modified property: inviting_player_uuid
                          - Description changed from 'If the player is only a pending invite, this is the player that requested the invite' to 'UUID of the player who sent this players invite, if any'

GET /session/v1/player/id/{player_id}/session
- Description changed from 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead' to 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead'

GET /session/v1/player/uuid/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

GET /session/v1/player/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None'

GET /session/v1/queues
- Description changed from 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None
**DEPRECATED** - Use the V2 endpoint instead' to 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None
**DEPRECATED** - Use the V2 endpoint instead'

GET /session/v1/regions
- Description changed from 'Get all of the enabled regions and their configuration

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get all of the enabled regions and their configuration

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


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
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: teams
              - Items changed
                - Properties changed
                  - Modified property: players
                    - Items changed
                      - Properties changed
                        - New property: source_session_id
                        - Modified property: inviting_player_uuid
                          - Description changed from 'If the player is only a pending invite, this is the player that requested the invite' to 'UUID of the player who sent this players invite, if any'

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
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: teams
              - Items changed
                - Properties changed
                  - Modified property: players
                    - Items changed
                      - Properties changed
                        - New property: source_session_id
                        - Modified property: inviting_player_uuid
                          - Description changed from 'If the player is only a pending invite, this is the player that requested the invite' to 'UUID of the player who sent this players invite, if any'

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: teams
              - Items changed
                - Properties changed
                  - Modified property: players
                    - Items changed
                      - Properties changed
                        - New property: source_session_id
                        - Modified property: inviting_player_uuid
                          - Description changed from 'If the player is only a pending invite, this is the player that requested the invite' to 'UUID of the player who sent this players invite, if any'

DELETE /session/v1/session/{session_id}/browser
- Description changed from 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

PATCH /session/v1/session/{session_id}/browser
- Description changed from 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/browser
- Description changed from 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`, `session:read:event`


Required Session Permissions: None' to 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`, `session:read:event`


Required Session Permissions: None'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:event`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:event`, `session:update:any`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`, `session:update-player:self`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Description changed from 'Response to a reques tto update a player in a session' to 'Response to a request to update a player in a session'
          - Properties changed
            - New property: player_uuid

POST /session/v1/session/{session_id}/player/me
- Description changed from 'Join a session with currently authed player

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a session with currently authed player

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Description changed from 'Response to a reques tto update a player in a session' to 'Response to a request to update a player in a session'
          - Properties changed
            - New property: player_uuid

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Description changed from 'Response to a reques tto update a player in a session' to 'Response to a request to update a player in a session'
          - Properties changed
            - New property: player_uuid

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Description changed from 'Response to a reques tto update a player in a session' to 'Response to a request to update a player in a session'
          - Properties changed
            - New property: player_uuid

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin`'

GET /session/v1/template
- Description changed from 'Get the config about all session templates

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get the config about all session templates

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None'

GET /session/v1/template/{session_type}
- Description changed from 'Get config about a session template by ID

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get config about a session template by ID

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None'

GET /session/v2/match-making-templates/{template_group_id}
- Description changed from 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead' to 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead'

GET /session/v2/queues
- Description changed from 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None'
## Changes for Fri Nov 10 11:35:43 EST 2023

## Changes for Thu Nov  2 10:48:22 EDT 2023

## Changes for Wed Nov  1 17:30:48 EDT 2023

## Changes for Tue Oct 31 11:47:09 EDT 2023

## Changes for Mon Oct 30 16:06:33 EDT 2023

## Changes for Wed Oct 25 15:50:13 EDT 2023

## Changes for Wed Oct 25 15:22:47 EDT 2023
### New Endpoints: 1
--------------------
GET /session/v1/instance/health/config  

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 29
--------------------------
POST /inventory/v2/player/me/entitlement
- Description changed from 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /inventory/v2/player/me/entitlement/request/{request_id}
- Description changed from 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

POST /inventory/v2/player/{player_uuid}/entitlement
- Description changed from 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /inventory/v2/player/{player_uuid}/entitlement/request/{request_id}
- Description changed from 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}
- Description changed from 'Get information about a platform session

Required Permissions: 
	For any player (including themselves)any of: `session:read:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:read:any` auth permission' to 'Get information about a platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:read:any` auth permission'

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Remove a platform session from a Rally Here session
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Remove a platform session from a Rally Here session
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

GET /session/v1/player/id/{player_id}/session
- Description changed from 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead' to 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead'

GET /session/v1/player/uuid/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

GET /session/v1/player/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None'

GET /session/v1/session/{session_id}
- Description changed from 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:self`, `session:read:any`, `session:*`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:any`, `session:*`, `session:read:self`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/browser
- Description changed from 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

PATCH /session/v1/session/{session_id}/browser
- Description changed from 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/browser
- Description changed from 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read:event`, `session:read-player:any`, `session:*`


Required Session Permissions: None' to 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`, `session:read:event`


Required Session Permissions: None'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:event`, `session:*`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:event`, `session:*`, `session:update:any`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance/fubar
- Description changed from 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:update:fubar`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:fubar`


Required Session Permissions: `SessionPermissions.session_admin`'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin`'
## Changes for Wed Oct 25 15:13:38 EDT 2023
### New Endpoints: 1
--------------------
GET /session/v1/instance/health/config  

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 46
--------------------------
POST /notification/v1/instance/{instance_id}/notification
- Description changed from 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:instance:write`, `notification:instance:*`' to 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:instance:*`, `notification:instance:write`'

GET /notification/v1/player/me/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:player:read`,`notification:player:*`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:player:*`,`notification:player:read`'

GET /notification/v1/player/me/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

Requires permissions: Any of `notification:player:read`,`notification:player:*`' to 'Retrieve a single notification by id

Requires permissions: Any of `notification:player:*`,`notification:player:read`'

GET /notification/v1/player/me/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:player:read`,`notification:player:*`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:player:*`,`notification:player:read`'

GET /notification/v1/player/{player_uuid}/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:read`,`notification:player:*`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:*`,`notification:player:read`'

POST /notification/v1/player/{player_uuid}/notification
- Description changed from 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:player:write`, `notification:player:*`' to 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:player:*`, `notification:player:write`'

GET /notification/v1/player/{player_uuid}/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:read`,`notification:player:*`' to 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:*`,`notification:player:read`'

GET /notification/v1/player/{player_uuid}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:read`,`notification:player:*`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:player:*`,`notification:player:read`'

GET /notification/v1/playerid/me/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'

GET /notification/v1/playerid/me/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'

GET /notification/v1/playerid/me/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'

GET /notification/v1/playerid/{player_id}/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'

POST /notification/v1/playerid/{player_id}/notification
- Description changed from 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:playerid:*`, `notification:playerid:write`' to 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:playerid:write`, `notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'

GET /notification/v1/playerid/{player_id}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'

GET /rank/v1/player/me/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/me/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/player/me/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/{player_uuid}/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/{player_uuid}/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/player/{player_uuid}/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: rank_configs
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: rank_configs
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/rank:calculate-trueskill
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: rank_id
            - Type changed from 'integer' to 'string'
            - ExclusiveMin changed from true to false
            - Min changed from 0 to null
            - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Remove a platform session from a Rally Here session
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Remove a platform session from a Rally Here session
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

GET /session/v1/session/{session_id}
- Description changed from 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:self`, `session:read:any`, `session:*`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:self`, `session:*`, `session:read:any`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/browser
- Description changed from 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

PATCH /session/v1/session/{session_id}/browser
- Description changed from 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/browser
- Description changed from 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:event`, `session:*`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:event`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`, `session:update-player:self`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:promote:self`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:promote:self`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:update-player:any`, `session:*`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:promote:self`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`'
## Changes for Wed Oct 25 15:13:19 EDT 2023
### New Endpoints: 1
--------------------
GET /session/v1/instance/health/config  

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 38
--------------------------
POST /inventory/v2/player/me/entitlement
- Description changed from 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /inventory/v2/player/me/entitlement/request/{request_id}
- Description changed from 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

POST /inventory/v2/player/{player_uuid}/entitlement
- Description changed from 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /inventory/v2/player/{player_uuid}/entitlement/request/{request_id}
- Description changed from 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`' to 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`'

GET /rank/v1/player/me/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/me/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/player/me/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/{player_uuid}/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/{player_uuid}/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/player/{player_uuid}/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: rank_configs
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: rank_configs
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/rank:calculate-trueskill
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: rank_id
            - Type changed from 'integer' to 'string'
            - ExclusiveMin changed from true to false
            - Min changed from 0 to null
            - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}
- Description changed from 'Get information about a platform session

Required Permissions: 
	For any player (including themselves)any of: `session:read:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:read:any` auth permission' to 'Get information about a platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:read:any` auth permission'

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Remove a platform session from a Rally Here session
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Remove a platform session from a Rally Here session
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

GET /session/v1/player/id/{player_id}/session
- Description changed from 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead' to 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead'

GET /session/v1/player/uuid/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

GET /session/v1/player/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None'

GET /session/v1/session/{session_id}
- Description changed from 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:self`, `session:read:any`, `session:*`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:any`, `session:*`, `session:read:self`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/browser
- Description changed from 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

PATCH /session/v1/session/{session_id}/browser
- Description changed from 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/browser
- Description changed from 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read:event`, `session:read-player:any`, `session:*`


Required Session Permissions: None' to 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`, `session:read:event`


Required Session Permissions: None'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:event`, `session:*`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:event`, `session:*`, `session:update:any`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance/fubar
- Description changed from 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:update:fubar`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:fubar`


Required Session Permissions: `SessionPermissions.session_admin`'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:*`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin`'
## Changes for Tue Oct 24 10:47:45 EDT 2023
### New Endpoints: None
-----------------------

### Deleted Endpoints: 1
------------------------
POST /session/v1/match-made-session  

### Modified Endpoints: 35
--------------------------
GET /session/v1/browser
- Description changed from 'Get all public sessions of a specific type

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:browser`


Required Permissions: None' to 'Get all public sessions of a specific type

Required Permissions: 
	For any player (including themselves)any of: `session:read:browser`, `session:*`


Required Permissions: None'

GET /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}
- Description changed from 'Get information about a platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:read:any` auth permission' to 'Get information about a platform session

Required Permissions: 
	For any player (including themselves)any of: `session:read:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:read:any` auth permission'

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
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_health
                    - Deleted property: instance_status

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
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_health
                    - Deleted property: instance_status

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Remove a platform session from a Rally Here session
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Remove a platform session from a Rally Here session
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'
- New query param: refresh_ttl

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'
- New query param: refresh_ttl

GET /session/v1/player/id/{player_id}/session
- Description changed from 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead' to 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead'

GET /session/v1/player/uuid/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

GET /session/v1/player/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None'

POST /session/v1/session
- Description changed from 'Join the first publicly available session of given type. If there is no public session, and the session type
permits player made sessions, create a new session and put the player in it

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:create`


Required Session Permissions: None' to 'Join the first publicly available session of given type. If there is no public session, and the session type
permits player made sessions, create a new session and put the player in it

Required Permissions: 
	For any player (including themselves)any of: `session:create`, `session:*`


Required Session Permissions: None'

GET /session/v1/session/allocation/{allocation_id}
- Description changed from 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:allocation`


Required Session Permissions: None' to 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:read:allocation`, `session:*`


Required Session Permissions: None'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_health
                    - Deleted property: instance_status

GET /session/v1/session/{session_id}
- Description changed from 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:self`, `session:read:any`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:self`, `session:read:any`, `session:*`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'
- New query param: refresh_ttl
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_health
                    - Deleted property: instance_status

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_health
                    - Deleted property: instance_status

POST /session/v1/session/{session_id}/browser
- New query param: refresh_ttl

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`, `session:read:event`


Required Session Permissions: None' to 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read:event`, `session:read-player:any`, `session:*`


Required Session Permissions: None'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:event`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:event`, `session:*`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: instance_health
            - Deleted property: instance_status

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: instance_health
            - Deleted property: instance_status

POST /session/v1/session/{session_id}/instance/fubar
- Description changed from 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:fubar`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:update:fubar`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/instance/health
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Title changed from 'InstanceStatusUpdate' to 'InstanceHealthStatusUpdate'
        - Required changed
          - New required property: instance_health
          - Deleted required property: instance_status
        - Properties changed
          - New property: instance_health
          - Deleted property: instance_status
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Title changed from 'InstanceStatusResponse' to 'InstanceHealthStatusResponse'
          - Required changed
            - New required property: updated_instance_health
            - Deleted required property: updated_instance_status
          - Properties changed
            - New property: updated_instance_health
            - Deleted property: updated_instance_status

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`, `session:update-player:self`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'

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
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:self`, `session:promote:any`, `session:*`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:self`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`'
## Changes for Mon Oct 23 15:58:57 EDT 2023
### New Endpoints: 1
--------------------
POST /session/v1/session/{session_id}/instance/health  

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 42
--------------------------
GET /notification/v1/playerid/me/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/me/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/me/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /session/v1/browser
- New query param: region_id
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: browser_sessions
              - Items changed
                - Properties changed
                  - New property: max_player_count
                  - New property: player_count

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

POST /session/v1/match-made-session
- Description changed from 'Create a match session based on matchmaking results. Only used by the matchmaking system, and not players

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`


Required Session Permissions: None' to 'Create a match session based on matchmaking results. Only used by the matchmaking system, and not players

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`


Required Session Permissions: None'
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: teams
            - Items changed
              - Required changed
                - New required property: team_id
              - Properties changed
                - New property: team_id

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

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

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

GET /session/v1/session/allocation/{allocation_id}
- Description changed from 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:read:allocation`, `session:*`


Required Session Permissions: None' to 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:allocation`


Required Session Permissions: None'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

GET /session/v1/session/{session_id}
- Description changed from 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:any`, `session:*`, `session:read:self`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:self`, `session:read:any`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

DELETE /session/v1/session/{session_id}/browser
- Description changed from 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

PATCH /session/v1/session/{session_id}/browser
- Description changed from 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/browser
- Description changed from 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:event`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:event`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: instance_status

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: instance_status

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

POST /session/v1/session/{session_id}/player/me
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin`'

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
## Changes for Mon Oct 23 15:54:04 EDT 2023
### New Endpoints: 1
--------------------
POST /session/v1/session/{session_id}/instance/health  

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 51
--------------------------
GET /notification/v1/playerid/me/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/me/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/me/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /rank/v1/player/me/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/me/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/player/me/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/{player_uuid}/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/{player_uuid}/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/player/{player_uuid}/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: rank_configs
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: rank_configs
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/rank:calculate-trueskill
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: rank_id
            - Type changed from 'integer' to 'string'
            - ExclusiveMin changed from true to false
            - Min changed from 0 to null
            - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /session/v1/browser
- New query param: region_id
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: browser_sessions
              - Items changed
                - Properties changed
                  - New property: max_player_count
                  - New property: player_count

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

POST /session/v1/match-made-session
- Description changed from 'Create a match session based on matchmaking results. Only used by the matchmaking system, and not players

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`


Required Session Permissions: None' to 'Create a match session based on matchmaking results. Only used by the matchmaking system, and not players

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`


Required Session Permissions: None'
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: teams
            - Items changed
              - Required changed
                - New required property: team_id
              - Properties changed
                - New property: team_id

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

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

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

GET /session/v1/session/allocation/{allocation_id}
- Description changed from 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:read:allocation`, `session:*`


Required Session Permissions: None' to 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:allocation`


Required Session Permissions: None'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

GET /session/v1/session/{session_id}
- Description changed from 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:any`, `session:*`, `session:read:self`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:self`, `session:read:any`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

DELETE /session/v1/session/{session_id}/browser
- Description changed from 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

PATCH /session/v1/session/{session_id}/browser
- Description changed from 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/browser
- Description changed from 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:event`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:event`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: instance_status

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: instance_status

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

POST /session/v1/session/{session_id}/player/me
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin`'

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
## Changes for Mon Oct 23 15:52:34 EDT 2023
### New Endpoints: 1
--------------------
POST /session/v1/session/{session_id}/instance/health  

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 51
--------------------------
GET /notification/v1/playerid/me/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/me/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/me/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /rank/v1/player/me/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/me/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/player/me/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/{player_uuid}/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/{player_uuid}/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/player/{player_uuid}/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: rank_configs
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: rank_configs
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/rank:calculate-trueskill
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: rank_id
            - Type changed from 'integer' to 'string'
            - ExclusiveMin changed from true to false
            - Min changed from 0 to null
            - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /session/v1/browser
- New query param: region_id
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: browser_sessions
              - Items changed
                - Properties changed
                  - New property: max_player_count
                  - New property: player_count

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

POST /session/v1/match-made-session
- Description changed from 'Create a match session based on matchmaking results. Only used by the matchmaking system, and not players

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`


Required Session Permissions: None' to 'Create a match session based on matchmaking results. Only used by the matchmaking system, and not players

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`


Required Session Permissions: None'
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: teams
            - Items changed
              - Required changed
                - New required property: team_id
              - Properties changed
                - New property: team_id

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

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

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

GET /session/v1/session/allocation/{allocation_id}
- Description changed from 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:read:allocation`, `session:*`


Required Session Permissions: None' to 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:allocation`


Required Session Permissions: None'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

GET /session/v1/session/{session_id}
- Description changed from 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:any`, `session:*`, `session:read:self`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:self`, `session:read:any`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

DELETE /session/v1/session/{session_id}/browser
- Description changed from 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

PATCH /session/v1/session/{session_id}/browser
- Description changed from 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/browser
- Description changed from 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:event`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:event`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: instance_status

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: instance_status

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

POST /session/v1/session/{session_id}/player/me
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin`'

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
## Changes for Mon Oct 23 15:48:28 EDT 2023
### New Endpoints: 1
--------------------
POST /session/v1/session/{session_id}/instance/health  

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 51
--------------------------
GET /notification/v1/playerid/me/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/me/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/me/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /notification/v1/playerid/{player_id}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`'

GET /rank/v1/player/me/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/me/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/player/me/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/{player_uuid}/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/player/{player_uuid}/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: player_ranks
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/player/{player_uuid}/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/rank
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: rank_configs
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /rank/v1/rank/{rank_id}
- Modified path param: rank_id
  - Schema changed
    - Type changed from 'integer' to 'string'
    - ExclusiveMin changed from true to false
    - Min changed from 0 to null
    - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: rank_configs
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

POST /rank/v1/rank:calculate-trueskill
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: rank_id
            - Type changed from 'integer' to 'string'
            - ExclusiveMin changed from true to false
            - Min changed from 0 to null
            - MinLength changed from 0 to 1
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: updated_players
              - Items changed
                - Properties changed
                  - Modified property: rank_id
                    - Type changed from 'integer' to 'string'
                    - ExclusiveMin changed from true to false
                    - Min changed from 0 to null
                    - MinLength changed from 0 to 1

GET /session/v1/browser
- New query param: region_id
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: browser_sessions
              - Items changed
                - Properties changed
                  - New property: max_player_count
                  - New property: player_count

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

POST /session/v1/match-made-session
- Description changed from 'Create a match session based on matchmaking results. Only used by the matchmaking system, and not players

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`


Required Session Permissions: None' to 'Create a match session based on matchmaking results. Only used by the matchmaking system, and not players

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`


Required Session Permissions: None'
- Request body changed
  - Content changed
    - Modified media type: application/json
      - Schema changed
        - Properties changed
          - Modified property: teams
            - Items changed
              - Required changed
                - New required property: team_id
              - Properties changed
                - New property: team_id

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

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

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

GET /session/v1/session/allocation/{allocation_id}
- Description changed from 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:read:allocation`, `session:*`


Required Session Permissions: None' to 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:allocation`


Required Session Permissions: None'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

GET /session/v1/session/{session_id}
- Description changed from 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:any`, `session:*`, `session:read:self`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:self`, `session:read:any`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: instance
              - Property 'AllOf' changed
                - Schema #/components/schemas/InstanceInfo modified
                  - Properties changed
                    - New property: instance_status
            - Modified property: teams
              - Items changed
                - Required changed
                  - New required property: team_id
                - Properties changed
                  - New property: team_id

DELETE /session/v1/session/{session_id}/browser
- Description changed from 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

PATCH /session/v1/session/{session_id}/browser
- Description changed from 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/browser
- Description changed from 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:event`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:event`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: instance_status

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: instance_status

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

POST /session/v1/session/{session_id}/player/me
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: team_id
          - Properties changed
            - New property: team_id

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin`'

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
## Changes for Mon Oct 23 15:35:57 EDT 2023
No changes
## Changes for Mon Oct 23 15:07:52 EDT 2023
No changes
## Changes for Mon Oct 23 15:07:35 EDT 2023
No changes
## Changes for Mon Oct  9 14:36:16 EDT 2023
### New Endpoints: None
-----------------------

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 9
-------------------------
POST /custom/v1/custom/{endpoint_id}
- Request body changed

POST /notification/v1/instance/{instance_id}/notification
- Description changed from 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:instance:*`, `notification:instance:write`' to 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:instance:write`, `notification:instance:*`'

GET /notification/v1/playerid/me/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'

GET /notification/v1/playerid/me/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'Retrieve a single notification by id

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'

GET /notification/v1/playerid/me/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'

GET /notification/v1/playerid/{player_id}/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'

POST /notification/v1/playerid/{player_id}/notification
- Description changed from 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:playerid:write`, `notification:playerid:*`' to 'Create new notification for client.  Requires permission to create for a different client

Requires permissions: Any of `notification:playerid:*`, `notification:playerid:write`'

GET /notification/v1/playerid/{player_id}/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'

GET /notification/v1/playerid/{player_id}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:read`,`notification:playerid:*`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:playerid:*`,`notification:playerid:read`'
## Changes for Mon Oct  9 14:20:56 EDT 2023
### New Endpoints: None
-----------------------

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 36
--------------------------
POST /custom/v1/custom/{endpoint_id}
- Request body changed

POST /inventory/v2/player/me/entitlement
- Description changed from 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`' to 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`'

GET /inventory/v2/player/me/entitlement/request/{request_id}
- Description changed from 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`' to 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`'

POST /inventory/v2/player/{player_uuid}/entitlement
- Description changed from 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`' to 'Process platform entitlements, consuming from the platform inventory where possible and generating orders.  

Note that some orders may not be fulfilled at the completion of this request and need to be polled separately for results

Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`'

GET /inventory/v2/player/{player_uuid}/entitlement/request/{request_id}
- Description changed from 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:platform_entitlements:any`, `inv:*`
	For the player themselves: `inv:platform_entitlements:self`' to 'Get the status of a platform entitlement request by request id.
    
    Required Permissions: 
	For any player (including themselves)any of: `inv:*`, `inv:platform_entitlements:any`
	For the player themselves: `inv:platform_entitlements:self`'

GET /notification/v1/instance/{instance_id}/notification
- Description changed from 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:instance:read`,`notification:instance:*`' to 'Get recent notifications ordered from the newest to the oldest.

It is important to stress that this endpoint returns notifications in reverse order compared to the streaming API.
The first notification returned from this will be the newest one we can find, and older ones will be further down
the page (or on later pages).

This API is useful for displaying a list of the most recent notifications to the user, only requesting further
pages when the user requests a bigger list.

Client are expected to poll this endpoint regularly.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:instance:*`,`notification:instance:read`'

GET /notification/v1/instance/{instance_id}/notification/{notification_id}
- Description changed from 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:instance:read`,`notification:instance:*`' to 'Retrieve a single notification by id

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:instance:*`,`notification:instance:read`'

GET /notification/v1/instance/{instance_id}/stream/notification/lp
- Description changed from 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:instance:read`,`notification:instance:*`' to 'This endpoint will return notifications newer than `exclude_before`.  This endpoint returns notifications
from older to newer, which is the opposite of the paging API.

This operation is a long-poll.  That means we will keep the connection open until we get any notification
or until the passed in deadline (to the best of our ability).  Once one of these happens, we will return
the notifications found.

This version can be used for any client provided its id (with proper permissions)

Requires permissions: Any of `notification:instance:*`,`notification:instance:read`'

POST /session/v1/match-made-session
- Description changed from 'Create a match session based on matchmaking results. Only used by the matchmaking system, and not players

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`


Required Session Permissions: None' to 'Create a match session based on matchmaking results. Only used by the matchmaking system, and not players

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`


Required Session Permissions: None'

GET /session/v1/player/id/{player_id}/session
- Description changed from 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player/uuid endpoint instead' to 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player endpoint instead'

GET /session/v1/session/allocation/{allocation_id}
- Description changed from 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:allocation`


Required Session Permissions: None' to 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:read:allocation`, `session:*`


Required Session Permissions: None'

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/browser
- Description changed from 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

PATCH /session/v1/session/{session_id}/browser
- Description changed from 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/browser
- Description changed from 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read:event`, `session:*`, `session:read-player:any`


Required Session Permissions: None' to 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`, `session:read:event`


Required Session Permissions: None'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:event`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:event`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player/uuid endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player/uuid endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player endpoint instead'

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin`'

GET /session/v2/match-making-templates/{template_group_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: template_options
              - Items changed
                - Properties changed
                  - Modified property: profiles
                    - Items changed
                      - Properties changed
                        - Modified property: legacy_config
                          - Default changed from map[] to null
                          - AdditionalProperties changed
                            - Schema deleted

POST /users/v1/login
- Responses changed
  - Modified response: 403
    - Description changed from 'User authentication failed.  See error code and description for further details.

Error Codes:
- `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
- `no_redirects_configured` - No redirect urls setup for oauth.
- `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
- `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
- `failed_to_verify_state` - Failed to verify the state associated with the request.
- `failed_to_save_state` - Error occurred saving the state.
- `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
- `too_many_users` - Account has too many users associated with it.  Contact an administrator
- `user_auth_restricted` - Authentication for this user has been restricted
- `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
- `error_retrieving_player_results` - Error retrieving player results
- `failed_to_retrieve_roles` - Failed to retrieve roles
- `amazon_disabled` - Amazon authentication is currently disabled
- `amazon_token_empty` - Amazon access token is empty
- `amazon_invalid_access_token` - Amazon access token is invalid
- `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
- `anon_disabled` - Anon authentication is currently disabled
- `anon_token_empty` - Anon access token is empty
- `apple_disabled` - Apple authentication is currently disabled
- `apple_token_empty` - Apple access token is empty
- `apple_failed_key_lookup` - Failed to retrieve keys from Apple
- `apple_token_exchange_failed` - Problem exchanging code for token with Apple
- `apple_token_key_not_valid` - public key not found
- `apple_token_not_valid` - Apple access token is not valid
- `authorization_code_not_found` - Authorization code not found or expired
- `basic_disabled` - Basic authentication is currently disabled
- `basic_token_empty` - Basic access token is empty
- `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
- `basic_auth_credentials_not_found` - Basic auth credentials not found
- `epic_disabled` - Epic authentication is currently disabled
- `epic_token_empty` - Epic access token is empty
- `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
- `epic_v1_token_invalid` - Epic v1 token is invalid
- `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
- `epic_v2_token_invalid` - Epic v2 token is invalid
- `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
- `google_disabled` - Google authentication is currently disabled
- `google_token_empty` - Google access token is empty
- `google_keys_not_available` - Google keys are not available.  Please contact an administrator
- `google_token_not_valid` - Google access token is not valid
- `google_token_exchange_failed` - Problem exchanging code for token with Google
- `nintendo_disabled` - Nintendo authentication is currently disabled
- `nintendo_token_empty` - Nintendo access token is empty
- `nintendo_access_token_not_valid` - Nintendo access token is not valid
- `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
- `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
- `nintendo_ppid_conversion_failed` - error during PPID conversion
- `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
- `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
- `nintendo_ppid_missing` - PPID is missing for user
- `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
- `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
- `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
- `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
- `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
- `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
- `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
- `ps4_v1_token_empty` - PS4 v1 access token is empty
- `ps4_v1_token_expired` - PS4 v1 access token is expired
- `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
- `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
- `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
- `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
- `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
- `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
- `ps4_v3_token_empty` - PS4 v3 access token is empty
- `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
- `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
- `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
- `ps5_v3_token_empty` - PS5 v3 access token is empty
- `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
- `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
- `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
- `refresh_disabled` - Refresh authentication is currently disabled
- `refresh_token_empty` - Refresh token is empty
- `refresh_token_not_found` - Refresh token was not found or has expired
- `refresh_token_invalid_user` - Refresh token refrences invalid user
- `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
- `steam_disabled` - Steam authentication is currently disabled
- `steam_token_empty` - Steam code (Ticket) is empty
- `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
- `steam_user_vacbanned` - User is VAC banned
- `steam_user_publisherbanned` - User is publisher banned
- `twitch_disabled` - Twitch authentication is currently disabled
- `twitch_token_empty` - Twitch access token is empty
- `twitch_token_invalid` - Twitch access token is not valid
- `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
- `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
- `xbox_disabled` - Xbox authentication is currently disabled
- `xbox_xsts_token_empty` - Xbox XSTS token is empty
- `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
- `xbox_xtoken_invalid` - Xbox XToken is not valid
- `xbox_access_token_request_failed` - Problem requesting access token from Xbox
- `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
- `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

' to 'User authentication failed.  See error code and description for further details.

Error Codes:
- `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
- `no_redirects_configured` - No redirect urls setup for oauth.
- `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
- `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
- `failed_to_verify_state` - Failed to verify the state associated with the request.
- `failed_to_save_state` - Error occurred saving the state.
- `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
- `too_many_users` - Account has too many users associated with it.  Contact an administrator
- `user_auth_restricted` - Authentication for this user has been restricted
- `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
- `error_retrieving_player_results` - Error retrieving player results
- `failed_to_retrieve_roles` - Failed to retrieve roles
- `amazon_disabled` - Amazon authentication is currently disabled
- `amazon_token_empty` - Amazon access token is empty
- `amazon_invalid_access_token` - Amazon access token is invalid
- `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
- `anon_disabled` - Anon authentication is currently disabled
- `anon_token_empty` - Anon access token is empty
- `apple_disabled` - Apple authentication is currently disabled
- `apple_token_empty` - Apple access token is empty
- `apple_failed_key_lookup` - Failed to retrieve keys from Apple
- `apple_token_exchange_failed` - Problem exchanging code for token with Apple
- `apple_token_key_not_valid` - public key not found
- `apple_token_not_valid` - Apple access token is not valid
- `authorization_code_not_found` - Authorization code not found or expired
- `basic_disabled` - Basic authentication is currently disabled
- `basic_token_empty` - Basic access token is empty
- `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
- `basic_auth_credentials_not_found` - Basic auth credentials not found
- `epic_disabled` - Epic authentication is currently disabled
- `epic_token_empty` - Epic access token is empty
- `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
- `epic_v1_token_invalid` - Epic v1 token is invalid
- `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
- `epic_v2_token_invalid` - Epic v2 token is invalid
- `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
- `google_disabled` - Google authentication is currently disabled
- `google_token_empty` - Google access token is empty
- `google_keys_not_available` - Google keys are not available.  Please contact an administrator
- `google_token_not_valid` - Google access token is not valid
- `google_token_exchange_failed` - Problem exchanging code for token with Google
- `nintendo_disabled` - Nintendo authentication is currently disabled
- `nintendo_token_empty` - Nintendo access token is empty
- `nintendo_env_credentials_not_found` - Nintendo environment credentials not found
- `nintendo_access_token_not_valid` - Nintendo access token is not valid
- `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
- `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
- `nintendo_ppid_conversion_failed` - error during PPID conversion
- `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
- `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
- `nintendo_ppid_missing` - PPID is missing for user
- `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
- `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
- `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
- `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
- `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
- `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
- `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
- `ps4_v1_token_empty` - PS4 v1 access token is empty
- `ps4_v1_token_expired` - PS4 v1 access token is expired
- `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
- `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
- `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
- `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
- `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
- `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
- `ps4_v3_token_empty` - PS4 v3 access token is empty
- `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
- `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
- `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
- `ps5_v3_token_empty` - PS5 v3 access token is empty
- `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
- `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
- `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
- `refresh_disabled` - Refresh authentication is currently disabled
- `refresh_token_empty` - Refresh token is empty
- `refresh_token_not_found` - Refresh token was not found or has expired
- `refresh_token_invalid_user` - Refresh token refrences invalid user
- `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
- `steam_disabled` - Steam authentication is currently disabled
- `steam_token_empty` - Steam code (Ticket) is empty
- `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
- `steam_user_vacbanned` - User is VAC banned
- `steam_user_publisherbanned` - User is publisher banned
- `twitch_disabled` - Twitch authentication is currently disabled
- `twitch_token_empty` - Twitch access token is empty
- `twitch_token_invalid` - Twitch access token is not valid
- `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
- `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
- `xbox_disabled` - Xbox authentication is currently disabled
- `xbox_xsts_token_empty` - Xbox XSTS token is empty
- `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
- `xbox_xtoken_invalid` - Xbox XToken is not valid
- `xbox_access_token_request_failed` - Problem requesting access token from Xbox
- `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
- `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

'

GET /users/v1/oauth/login/{platform}
- Responses changed
  - Modified response: 307
    - Headers changed
      - Modified header: location
        - Description changed from '
URL that the user should be redirected to complete the next step of the OAuth flow.

Redirects to the `redirect_uri` and may include the following query parameters:
- `state`: The state value that was provided in the original request.
- `error_code_v2`: The error code for the error that occurred during the OAuth flow.  May (but is not guaranteed to) contain one of the following:
    - `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
    - `no_redirects_configured` - No redirect urls setup for oauth.
    - `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
    - `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
    - `failed_to_verify_state` - Failed to verify the state associated with the request.
    - `failed_to_save_state` - Error occurred saving the state.
    - `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
    - `too_many_users` - Account has too many users associated with it.  Contact an administrator
    - `user_auth_restricted` - Authentication for this user has been restricted
    - `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
    - `error_retrieving_player_results` - Error retrieving player results
    - `failed_to_retrieve_roles` - Failed to retrieve roles
    - `amazon_disabled` - Amazon authentication is currently disabled
    - `amazon_token_empty` - Amazon access token is empty
    - `amazon_invalid_access_token` - Amazon access token is invalid
    - `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
    - `anon_disabled` - Anon authentication is currently disabled
    - `anon_token_empty` - Anon access token is empty
    - `apple_disabled` - Apple authentication is currently disabled
    - `apple_token_empty` - Apple access token is empty
    - `apple_failed_key_lookup` - Failed to retrieve keys from Apple
    - `apple_token_exchange_failed` - Problem exchanging code for token with Apple
    - `apple_token_key_not_valid` - public key not found
    - `apple_token_not_valid` - Apple access token is not valid
    - `authorization_code_not_found` - Authorization code not found or expired
    - `basic_disabled` - Basic authentication is currently disabled
    - `basic_token_empty` - Basic access token is empty
    - `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
    - `basic_auth_credentials_not_found` - Basic auth credentials not found
    - `epic_disabled` - Epic authentication is currently disabled
    - `epic_token_empty` - Epic access token is empty
    - `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
    - `epic_v1_token_invalid` - Epic v1 token is invalid
    - `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
    - `epic_v2_token_invalid` - Epic v2 token is invalid
    - `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
    - `google_disabled` - Google authentication is currently disabled
    - `google_token_empty` - Google access token is empty
    - `google_keys_not_available` - Google keys are not available.  Please contact an administrator
    - `google_token_not_valid` - Google access token is not valid
    - `google_token_exchange_failed` - Problem exchanging code for token with Google
    - `nintendo_disabled` - Nintendo authentication is currently disabled
    - `nintendo_token_empty` - Nintendo access token is empty
    - `nintendo_access_token_not_valid` - Nintendo access token is not valid
    - `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
    - `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
    - `nintendo_ppid_conversion_failed` - error during PPID conversion
    - `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
    - `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
    - `nintendo_ppid_missing` - PPID is missing for user
    - `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
    - `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
    - `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
    - `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
    - `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
    - `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
    - `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
    - `ps4_v1_token_empty` - PS4 v1 access token is empty
    - `ps4_v1_token_expired` - PS4 v1 access token is expired
    - `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
    - `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
    - `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
    - `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
    - `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
    - `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
    - `ps4_v3_token_empty` - PS4 v3 access token is empty
    - `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
    - `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
    - `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
    - `ps5_v3_token_empty` - PS5 v3 access token is empty
    - `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
    - `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
    - `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
    - `refresh_disabled` - Refresh authentication is currently disabled
    - `refresh_token_empty` - Refresh token is empty
    - `refresh_token_not_found` - Refresh token was not found or has expired
    - `refresh_token_invalid_user` - Refresh token refrences invalid user
    - `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
    - `steam_disabled` - Steam authentication is currently disabled
    - `steam_token_empty` - Steam code (Ticket) is empty
    - `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
    - `steam_user_vacbanned` - User is VAC banned
    - `steam_user_publisherbanned` - User is publisher banned
    - `twitch_disabled` - Twitch authentication is currently disabled
    - `twitch_token_empty` - Twitch access token is empty
    - `twitch_token_invalid` - Twitch access token is not valid
    - `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
    - `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
    - `xbox_disabled` - Xbox authentication is currently disabled
    - `xbox_xsts_token_empty` - Xbox XSTS token is empty
    - `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
    - `xbox_xtoken_invalid` - Xbox XToken is not valid
    - `xbox_access_token_request_failed` - Problem requesting access token from Xbox
    - `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
    - `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

- `error_description`: The description for the error that occurred during the OAuth flow.
- `error_code`: ***DEPRECATED*** - Use `error_code_v2` instead.  May (but is not guaranteed to) contain one of the following:
    - `NO_CODE_IN_REQUEST` - No code in request.
    - `NO_REDIRECTS_CONFIGURED` - No redirect urls setup for oauth.
    - `REDIRECT_URI_DOES_NOT_MATCH` - Redirect URI does not match a configured value.
    - `FAILED_TO_VERIFY_STATE` - Failed to verify the state associated with the request.
    - `FAILED_TO_SAVE_STATE` - Error occurred saving the state.
    - `FAILED_TO_SAVE_TOKENS` - Failed to save tokens.
    - `PORTAL_PROVIDER_DISABLED` - OAuth provider is disabled.
    - `ERROR_OCCURRED_DURING_EXCHANGE` - An error occurred while exchanging a code for token.

' to '
URL that the user should be redirected to complete the next step of the OAuth flow.

Redirects to the `redirect_uri` and may include the following query parameters:
- `state`: The state value that was provided in the original request.
- `error_code_v2`: The error code for the error that occurred during the OAuth flow.  May (but is not guaranteed to) contain one of the following:
    - `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
    - `no_redirects_configured` - No redirect urls setup for oauth.
    - `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
    - `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
    - `failed_to_verify_state` - Failed to verify the state associated with the request.
    - `failed_to_save_state` - Error occurred saving the state.
    - `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
    - `too_many_users` - Account has too many users associated with it.  Contact an administrator
    - `user_auth_restricted` - Authentication for this user has been restricted
    - `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
    - `error_retrieving_player_results` - Error retrieving player results
    - `failed_to_retrieve_roles` - Failed to retrieve roles
    - `amazon_disabled` - Amazon authentication is currently disabled
    - `amazon_token_empty` - Amazon access token is empty
    - `amazon_invalid_access_token` - Amazon access token is invalid
    - `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
    - `anon_disabled` - Anon authentication is currently disabled
    - `anon_token_empty` - Anon access token is empty
    - `apple_disabled` - Apple authentication is currently disabled
    - `apple_token_empty` - Apple access token is empty
    - `apple_failed_key_lookup` - Failed to retrieve keys from Apple
    - `apple_token_exchange_failed` - Problem exchanging code for token with Apple
    - `apple_token_key_not_valid` - public key not found
    - `apple_token_not_valid` - Apple access token is not valid
    - `authorization_code_not_found` - Authorization code not found or expired
    - `basic_disabled` - Basic authentication is currently disabled
    - `basic_token_empty` - Basic access token is empty
    - `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
    - `basic_auth_credentials_not_found` - Basic auth credentials not found
    - `epic_disabled` - Epic authentication is currently disabled
    - `epic_token_empty` - Epic access token is empty
    - `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
    - `epic_v1_token_invalid` - Epic v1 token is invalid
    - `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
    - `epic_v2_token_invalid` - Epic v2 token is invalid
    - `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
    - `google_disabled` - Google authentication is currently disabled
    - `google_token_empty` - Google access token is empty
    - `google_keys_not_available` - Google keys are not available.  Please contact an administrator
    - `google_token_not_valid` - Google access token is not valid
    - `google_token_exchange_failed` - Problem exchanging code for token with Google
    - `nintendo_disabled` - Nintendo authentication is currently disabled
    - `nintendo_token_empty` - Nintendo access token is empty
    - `nintendo_env_credentials_not_found` - Nintendo environment credentials not found
    - `nintendo_access_token_not_valid` - Nintendo access token is not valid
    - `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
    - `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
    - `nintendo_ppid_conversion_failed` - error during PPID conversion
    - `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
    - `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
    - `nintendo_ppid_missing` - PPID is missing for user
    - `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
    - `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
    - `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
    - `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
    - `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
    - `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
    - `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
    - `ps4_v1_token_empty` - PS4 v1 access token is empty
    - `ps4_v1_token_expired` - PS4 v1 access token is expired
    - `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
    - `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
    - `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
    - `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
    - `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
    - `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
    - `ps4_v3_token_empty` - PS4 v3 access token is empty
    - `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
    - `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
    - `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
    - `ps5_v3_token_empty` - PS5 v3 access token is empty
    - `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
    - `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
    - `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
    - `refresh_disabled` - Refresh authentication is currently disabled
    - `refresh_token_empty` - Refresh token is empty
    - `refresh_token_not_found` - Refresh token was not found or has expired
    - `refresh_token_invalid_user` - Refresh token refrences invalid user
    - `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
    - `steam_disabled` - Steam authentication is currently disabled
    - `steam_token_empty` - Steam code (Ticket) is empty
    - `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
    - `steam_user_vacbanned` - User is VAC banned
    - `steam_user_publisherbanned` - User is publisher banned
    - `twitch_disabled` - Twitch authentication is currently disabled
    - `twitch_token_empty` - Twitch access token is empty
    - `twitch_token_invalid` - Twitch access token is not valid
    - `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
    - `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
    - `xbox_disabled` - Xbox authentication is currently disabled
    - `xbox_xsts_token_empty` - Xbox XSTS token is empty
    - `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
    - `xbox_xtoken_invalid` - Xbox XToken is not valid
    - `xbox_access_token_request_failed` - Problem requesting access token from Xbox
    - `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
    - `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

- `error_description`: The description for the error that occurred during the OAuth flow.
- `error_code`: ***DEPRECATED*** - Use `error_code_v2` instead.  May (but is not guaranteed to) contain one of the following:
    - `NO_CODE_IN_REQUEST` - No code in request.
    - `NO_REDIRECTS_CONFIGURED` - No redirect urls setup for oauth.
    - `REDIRECT_URI_DOES_NOT_MATCH` - Redirect URI does not match a configured value.
    - `FAILED_TO_VERIFY_STATE` - Failed to verify the state associated with the request.
    - `FAILED_TO_SAVE_STATE` - Error occurred saving the state.
    - `FAILED_TO_SAVE_TOKENS` - Failed to save tokens.
    - `PORTAL_PROVIDER_DISABLED` - OAuth provider is disabled.
    - `ERROR_OCCURRED_DURING_EXCHANGE` - An error occurred while exchanging a code for token.

'

GET /users/v1/oauth/response/{platform}
- Responses changed
  - Modified response: 307
    - Headers changed
      - Modified header: location
        - Description changed from '
URL that the user should be redirected to complete the next step of the OAuth flow.

Redirects to the `redirect_uri` and may include the following query parameters:
- `code`: The authorization_code that can be exchanged for an access token for the user.
- `state`: The state value that was provided in the original request.
- `error_code_v2`: The error code for the error that occurred during the OAuth flow.  May (but is not guaranteed to) contain one of the following:
    - `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
    - `no_redirects_configured` - No redirect urls setup for oauth.
    - `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
    - `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
    - `failed_to_verify_state` - Failed to verify the state associated with the request.
    - `failed_to_save_state` - Error occurred saving the state.
    - `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
    - `too_many_users` - Account has too many users associated with it.  Contact an administrator
    - `user_auth_restricted` - Authentication for this user has been restricted
    - `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
    - `error_retrieving_player_results` - Error retrieving player results
    - `failed_to_retrieve_roles` - Failed to retrieve roles
    - `amazon_disabled` - Amazon authentication is currently disabled
    - `amazon_token_empty` - Amazon access token is empty
    - `amazon_invalid_access_token` - Amazon access token is invalid
    - `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
    - `anon_disabled` - Anon authentication is currently disabled
    - `anon_token_empty` - Anon access token is empty
    - `apple_disabled` - Apple authentication is currently disabled
    - `apple_token_empty` - Apple access token is empty
    - `apple_failed_key_lookup` - Failed to retrieve keys from Apple
    - `apple_token_exchange_failed` - Problem exchanging code for token with Apple
    - `apple_token_key_not_valid` - public key not found
    - `apple_token_not_valid` - Apple access token is not valid
    - `authorization_code_not_found` - Authorization code not found or expired
    - `basic_disabled` - Basic authentication is currently disabled
    - `basic_token_empty` - Basic access token is empty
    - `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
    - `basic_auth_credentials_not_found` - Basic auth credentials not found
    - `epic_disabled` - Epic authentication is currently disabled
    - `epic_token_empty` - Epic access token is empty
    - `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
    - `epic_v1_token_invalid` - Epic v1 token is invalid
    - `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
    - `epic_v2_token_invalid` - Epic v2 token is invalid
    - `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
    - `google_disabled` - Google authentication is currently disabled
    - `google_token_empty` - Google access token is empty
    - `google_keys_not_available` - Google keys are not available.  Please contact an administrator
    - `google_token_not_valid` - Google access token is not valid
    - `google_token_exchange_failed` - Problem exchanging code for token with Google
    - `nintendo_disabled` - Nintendo authentication is currently disabled
    - `nintendo_token_empty` - Nintendo access token is empty
    - `nintendo_access_token_not_valid` - Nintendo access token is not valid
    - `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
    - `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
    - `nintendo_ppid_conversion_failed` - error during PPID conversion
    - `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
    - `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
    - `nintendo_ppid_missing` - PPID is missing for user
    - `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
    - `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
    - `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
    - `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
    - `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
    - `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
    - `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
    - `ps4_v1_token_empty` - PS4 v1 access token is empty
    - `ps4_v1_token_expired` - PS4 v1 access token is expired
    - `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
    - `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
    - `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
    - `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
    - `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
    - `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
    - `ps4_v3_token_empty` - PS4 v3 access token is empty
    - `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
    - `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
    - `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
    - `ps5_v3_token_empty` - PS5 v3 access token is empty
    - `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
    - `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
    - `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
    - `refresh_disabled` - Refresh authentication is currently disabled
    - `refresh_token_empty` - Refresh token is empty
    - `refresh_token_not_found` - Refresh token was not found or has expired
    - `refresh_token_invalid_user` - Refresh token refrences invalid user
    - `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
    - `steam_disabled` - Steam authentication is currently disabled
    - `steam_token_empty` - Steam code (Ticket) is empty
    - `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
    - `steam_user_vacbanned` - User is VAC banned
    - `steam_user_publisherbanned` - User is publisher banned
    - `twitch_disabled` - Twitch authentication is currently disabled
    - `twitch_token_empty` - Twitch access token is empty
    - `twitch_token_invalid` - Twitch access token is not valid
    - `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
    - `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
    - `xbox_disabled` - Xbox authentication is currently disabled
    - `xbox_xsts_token_empty` - Xbox XSTS token is empty
    - `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
    - `xbox_xtoken_invalid` - Xbox XToken is not valid
    - `xbox_access_token_request_failed` - Problem requesting access token from Xbox
    - `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
    - `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

- `error_description`: The description for the error that occurred during the OAuth flow.
- `error_code`: ***DEPRECATED*** - Use `error_code_v2` instead.  May (but is not guaranteed to) contain one of the following:
    - `NO_CODE_IN_REQUEST` - No code in request.
    - `NO_REDIRECTS_CONFIGURED` - No redirect urls setup for oauth.
    - `REDIRECT_URI_DOES_NOT_MATCH` - Redirect URI does not match a configured value.
    - `FAILED_TO_VERIFY_STATE` - Failed to verify the state associated with the request.
    - `FAILED_TO_SAVE_STATE` - Error occurred saving the state.
    - `FAILED_TO_SAVE_TOKENS` - Failed to save tokens.
    - `PORTAL_PROVIDER_DISABLED` - OAuth provider is disabled.
    - `ERROR_OCCURRED_DURING_EXCHANGE` - An error occurred while exchanging a code for token.

' to '
URL that the user should be redirected to complete the next step of the OAuth flow.

Redirects to the `redirect_uri` and may include the following query parameters:
- `code`: The authorization_code that can be exchanged for an access token for the user.
- `state`: The state value that was provided in the original request.
- `error_code_v2`: The error code for the error that occurred during the OAuth flow.  May (but is not guaranteed to) contain one of the following:
    - `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
    - `no_redirects_configured` - No redirect urls setup for oauth.
    - `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
    - `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
    - `failed_to_verify_state` - Failed to verify the state associated with the request.
    - `failed_to_save_state` - Error occurred saving the state.
    - `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
    - `too_many_users` - Account has too many users associated with it.  Contact an administrator
    - `user_auth_restricted` - Authentication for this user has been restricted
    - `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
    - `error_retrieving_player_results` - Error retrieving player results
    - `failed_to_retrieve_roles` - Failed to retrieve roles
    - `amazon_disabled` - Amazon authentication is currently disabled
    - `amazon_token_empty` - Amazon access token is empty
    - `amazon_invalid_access_token` - Amazon access token is invalid
    - `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
    - `anon_disabled` - Anon authentication is currently disabled
    - `anon_token_empty` - Anon access token is empty
    - `apple_disabled` - Apple authentication is currently disabled
    - `apple_token_empty` - Apple access token is empty
    - `apple_failed_key_lookup` - Failed to retrieve keys from Apple
    - `apple_token_exchange_failed` - Problem exchanging code for token with Apple
    - `apple_token_key_not_valid` - public key not found
    - `apple_token_not_valid` - Apple access token is not valid
    - `authorization_code_not_found` - Authorization code not found or expired
    - `basic_disabled` - Basic authentication is currently disabled
    - `basic_token_empty` - Basic access token is empty
    - `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
    - `basic_auth_credentials_not_found` - Basic auth credentials not found
    - `epic_disabled` - Epic authentication is currently disabled
    - `epic_token_empty` - Epic access token is empty
    - `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
    - `epic_v1_token_invalid` - Epic v1 token is invalid
    - `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
    - `epic_v2_token_invalid` - Epic v2 token is invalid
    - `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
    - `google_disabled` - Google authentication is currently disabled
    - `google_token_empty` - Google access token is empty
    - `google_keys_not_available` - Google keys are not available.  Please contact an administrator
    - `google_token_not_valid` - Google access token is not valid
    - `google_token_exchange_failed` - Problem exchanging code for token with Google
    - `nintendo_disabled` - Nintendo authentication is currently disabled
    - `nintendo_token_empty` - Nintendo access token is empty
    - `nintendo_env_credentials_not_found` - Nintendo environment credentials not found
    - `nintendo_access_token_not_valid` - Nintendo access token is not valid
    - `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
    - `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
    - `nintendo_ppid_conversion_failed` - error during PPID conversion
    - `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
    - `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
    - `nintendo_ppid_missing` - PPID is missing for user
    - `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
    - `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
    - `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
    - `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
    - `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
    - `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
    - `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
    - `ps4_v1_token_empty` - PS4 v1 access token is empty
    - `ps4_v1_token_expired` - PS4 v1 access token is expired
    - `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
    - `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
    - `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
    - `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
    - `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
    - `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
    - `ps4_v3_token_empty` - PS4 v3 access token is empty
    - `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
    - `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
    - `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
    - `ps5_v3_token_empty` - PS5 v3 access token is empty
    - `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
    - `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
    - `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
    - `refresh_disabled` - Refresh authentication is currently disabled
    - `refresh_token_empty` - Refresh token is empty
    - `refresh_token_not_found` - Refresh token was not found or has expired
    - `refresh_token_invalid_user` - Refresh token refrences invalid user
    - `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
    - `steam_disabled` - Steam authentication is currently disabled
    - `steam_token_empty` - Steam code (Ticket) is empty
    - `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
    - `steam_user_vacbanned` - User is VAC banned
    - `steam_user_publisherbanned` - User is publisher banned
    - `twitch_disabled` - Twitch authentication is currently disabled
    - `twitch_token_empty` - Twitch access token is empty
    - `twitch_token_invalid` - Twitch access token is not valid
    - `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
    - `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
    - `xbox_disabled` - Xbox authentication is currently disabled
    - `xbox_xsts_token_empty` - Xbox XSTS token is empty
    - `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
    - `xbox_xtoken_invalid` - Xbox XToken is not valid
    - `xbox_access_token_request_failed` - Problem requesting access token from Xbox
    - `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
    - `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

- `error_description`: The description for the error that occurred during the OAuth flow.
- `error_code`: ***DEPRECATED*** - Use `error_code_v2` instead.  May (but is not guaranteed to) contain one of the following:
    - `NO_CODE_IN_REQUEST` - No code in request.
    - `NO_REDIRECTS_CONFIGURED` - No redirect urls setup for oauth.
    - `REDIRECT_URI_DOES_NOT_MATCH` - Redirect URI does not match a configured value.
    - `FAILED_TO_VERIFY_STATE` - Failed to verify the state associated with the request.
    - `FAILED_TO_SAVE_STATE` - Error occurred saving the state.
    - `FAILED_TO_SAVE_TOKENS` - Failed to save tokens.
    - `PORTAL_PROVIDER_DISABLED` - OAuth provider is disabled.
    - `ERROR_OCCURRED_DURING_EXCHANGE` - An error occurred while exchanging a code for token.

'

POST /users/v1/portaltoken/details
- Responses changed
  - Modified response: 403
    - Description changed from '
Error Codes:
- `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
- `no_redirects_configured` - No redirect urls setup for oauth.
- `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
- `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
- `failed_to_verify_state` - Failed to verify the state associated with the request.
- `failed_to_save_state` - Error occurred saving the state.
- `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
- `too_many_users` - Account has too many users associated with it.  Contact an administrator
- `user_auth_restricted` - Authentication for this user has been restricted
- `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
- `error_retrieving_player_results` - Error retrieving player results
- `failed_to_retrieve_roles` - Failed to retrieve roles
- `amazon_disabled` - Amazon authentication is currently disabled
- `amazon_token_empty` - Amazon access token is empty
- `amazon_invalid_access_token` - Amazon access token is invalid
- `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
- `anon_disabled` - Anon authentication is currently disabled
- `anon_token_empty` - Anon access token is empty
- `apple_disabled` - Apple authentication is currently disabled
- `apple_token_empty` - Apple access token is empty
- `apple_failed_key_lookup` - Failed to retrieve keys from Apple
- `apple_token_exchange_failed` - Problem exchanging code for token with Apple
- `apple_token_key_not_valid` - public key not found
- `apple_token_not_valid` - Apple access token is not valid
- `authorization_code_not_found` - Authorization code not found or expired
- `basic_disabled` - Basic authentication is currently disabled
- `basic_token_empty` - Basic access token is empty
- `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
- `basic_auth_credentials_not_found` - Basic auth credentials not found
- `epic_disabled` - Epic authentication is currently disabled
- `epic_token_empty` - Epic access token is empty
- `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
- `epic_v1_token_invalid` - Epic v1 token is invalid
- `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
- `epic_v2_token_invalid` - Epic v2 token is invalid
- `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
- `google_disabled` - Google authentication is currently disabled
- `google_token_empty` - Google access token is empty
- `google_keys_not_available` - Google keys are not available.  Please contact an administrator
- `google_token_not_valid` - Google access token is not valid
- `google_token_exchange_failed` - Problem exchanging code for token with Google
- `nintendo_disabled` - Nintendo authentication is currently disabled
- `nintendo_token_empty` - Nintendo access token is empty
- `nintendo_access_token_not_valid` - Nintendo access token is not valid
- `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
- `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
- `nintendo_ppid_conversion_failed` - error during PPID conversion
- `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
- `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
- `nintendo_ppid_missing` - PPID is missing for user
- `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
- `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
- `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
- `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
- `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
- `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
- `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
- `ps4_v1_token_empty` - PS4 v1 access token is empty
- `ps4_v1_token_expired` - PS4 v1 access token is expired
- `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
- `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
- `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
- `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
- `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
- `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
- `ps4_v3_token_empty` - PS4 v3 access token is empty
- `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
- `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
- `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
- `ps5_v3_token_empty` - PS5 v3 access token is empty
- `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
- `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
- `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
- `refresh_disabled` - Refresh authentication is currently disabled
- `refresh_token_empty` - Refresh token is empty
- `refresh_token_not_found` - Refresh token was not found or has expired
- `refresh_token_invalid_user` - Refresh token refrences invalid user
- `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
- `steam_disabled` - Steam authentication is currently disabled
- `steam_token_empty` - Steam code (Ticket) is empty
- `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
- `steam_user_vacbanned` - User is VAC banned
- `steam_user_publisherbanned` - User is publisher banned
- `twitch_disabled` - Twitch authentication is currently disabled
- `twitch_token_empty` - Twitch access token is empty
- `twitch_token_invalid` - Twitch access token is not valid
- `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
- `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
- `xbox_disabled` - Xbox authentication is currently disabled
- `xbox_xsts_token_empty` - Xbox XSTS token is empty
- `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
- `xbox_xtoken_invalid` - Xbox XToken is not valid
- `xbox_access_token_request_failed` - Problem requesting access token from Xbox
- `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
- `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

' to '
Error Codes:
- `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
- `no_redirects_configured` - No redirect urls setup for oauth.
- `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
- `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
- `failed_to_verify_state` - Failed to verify the state associated with the request.
- `failed_to_save_state` - Error occurred saving the state.
- `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
- `too_many_users` - Account has too many users associated with it.  Contact an administrator
- `user_auth_restricted` - Authentication for this user has been restricted
- `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
- `error_retrieving_player_results` - Error retrieving player results
- `failed_to_retrieve_roles` - Failed to retrieve roles
- `amazon_disabled` - Amazon authentication is currently disabled
- `amazon_token_empty` - Amazon access token is empty
- `amazon_invalid_access_token` - Amazon access token is invalid
- `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
- `anon_disabled` - Anon authentication is currently disabled
- `anon_token_empty` - Anon access token is empty
- `apple_disabled` - Apple authentication is currently disabled
- `apple_token_empty` - Apple access token is empty
- `apple_failed_key_lookup` - Failed to retrieve keys from Apple
- `apple_token_exchange_failed` - Problem exchanging code for token with Apple
- `apple_token_key_not_valid` - public key not found
- `apple_token_not_valid` - Apple access token is not valid
- `authorization_code_not_found` - Authorization code not found or expired
- `basic_disabled` - Basic authentication is currently disabled
- `basic_token_empty` - Basic access token is empty
- `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
- `basic_auth_credentials_not_found` - Basic auth credentials not found
- `epic_disabled` - Epic authentication is currently disabled
- `epic_token_empty` - Epic access token is empty
- `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
- `epic_v1_token_invalid` - Epic v1 token is invalid
- `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
- `epic_v2_token_invalid` - Epic v2 token is invalid
- `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
- `google_disabled` - Google authentication is currently disabled
- `google_token_empty` - Google access token is empty
- `google_keys_not_available` - Google keys are not available.  Please contact an administrator
- `google_token_not_valid` - Google access token is not valid
- `google_token_exchange_failed` - Problem exchanging code for token with Google
- `nintendo_disabled` - Nintendo authentication is currently disabled
- `nintendo_token_empty` - Nintendo access token is empty
- `nintendo_env_credentials_not_found` - Nintendo environment credentials not found
- `nintendo_access_token_not_valid` - Nintendo access token is not valid
- `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
- `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
- `nintendo_ppid_conversion_failed` - error during PPID conversion
- `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
- `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
- `nintendo_ppid_missing` - PPID is missing for user
- `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
- `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
- `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
- `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
- `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
- `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
- `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
- `ps4_v1_token_empty` - PS4 v1 access token is empty
- `ps4_v1_token_expired` - PS4 v1 access token is expired
- `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
- `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
- `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
- `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
- `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
- `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
- `ps4_v3_token_empty` - PS4 v3 access token is empty
- `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
- `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
- `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
- `ps5_v3_token_empty` - PS5 v3 access token is empty
- `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
- `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
- `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
- `refresh_disabled` - Refresh authentication is currently disabled
- `refresh_token_empty` - Refresh token is empty
- `refresh_token_not_found` - Refresh token was not found or has expired
- `refresh_token_invalid_user` - Refresh token refrences invalid user
- `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
- `steam_disabled` - Steam authentication is currently disabled
- `steam_token_empty` - Steam code (Ticket) is empty
- `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
- `steam_user_vacbanned` - User is VAC banned
- `steam_user_publisherbanned` - User is publisher banned
- `twitch_disabled` - Twitch authentication is currently disabled
- `twitch_token_empty` - Twitch access token is empty
- `twitch_token_invalid` - Twitch access token is not valid
- `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
- `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
- `xbox_disabled` - Xbox authentication is currently disabled
- `xbox_xsts_token_empty` - Xbox XSTS token is empty
- `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
- `xbox_xtoken_invalid` - Xbox XToken is not valid
- `xbox_access_token_request_failed` - Problem requesting access token from Xbox
- `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
- `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

'
## Changes for Thu Oct  5 11:02:12 EDT 2023
### New Endpoints: 1
--------------------
DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}  

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 25
--------------------------
POST /session/v1/match-made-session
- Description changed from 'Create a match session based on matchmaking results. Only used by the matchmaking system, and not players

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`


Required Session Permissions: None' to 'Create a match session based on matchmaking results. Only used by the matchmaking system, and not players

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`


Required Session Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session, and be made its leader

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

GET /session/v1/player/uuid/{player_uuid}/session

GET /session/v1/player/{player_uuid}/session

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

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/browser
- Description changed from 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

PATCH /session/v1/session/{session_id}/browser
- Description changed from 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/browser
- Description changed from 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:event`, `session:read-player:any`


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
	For any player (including themselves)any of: `session:update:any`, `session:update:event`, `session:*`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:event`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player/uuid endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player/uuid endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player/uuid endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player/uuid endpoint instead'

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:self`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin`'
## Changes for Fri Sep 29 16:36:12 EDT 2023
### New Endpoints: None
-----------------------

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 35
--------------------------
GET /session/v1/connection-info
- Description changed from 'Get public connection info for self

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Permissions: None' to 'Get public connection info for self

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Permissions: None'

GET /session/v1/instance-launch-templates/{instance_launch_template_id}
- Description changed from 'Get the config used to launch an instance by the launch template id. Launch template ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None
**DEPRECATED** - Use the /v1/instance-request-template endpoint instead. This endpoint does not support loading data from the developer-portal' to 'Get the config used to launch an instance by the launch template id. Launch template ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None
**DEPRECATED** - Use the /v1/instance-request-template endpoint instead. This endpoint does not support loading data from the developer-portal'

GET /session/v1/instance-request-template/{instance_request_template_id}
- Description changed from 'Get the config used to request an instance by the InstanceRequestTemplate ID. This ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get the config used to request an instance by the InstanceRequestTemplate ID. This ID can be found in
MatchMakingProfiles that are return by the `/v1/match-making-templates/` endpoint

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - Modified property: map_selection_list
              - Property 'AllOf' changed
                - Schema #/components/schemas/MapSelectionListV2 modified
                  - Properties changed
                    - Modified property: maps
                      - Items changed
                        - Required changed
                          - New required property: name
                          - Deleted required property: map_name
                        - Properties changed
                          - New property: name
                          - Deleted property: map_name

GET /session/v1/match-making-templates/{template_group_id}
- Description changed from 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`

            
Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead' to 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`

            
Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead'

GET /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}
- Description changed from 'Get information about a platform session

Required Permissions: 
	For any player (including themselves)any of: `session:read:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:read:any` auth permission' to 'Get information about a platform session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:read:any` auth permission'

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

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

GET /session/v1/player/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None'

GET /session/v1/queues
- Description changed from 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None
**DEPRECATED** - Use the V2 endpoint instead' to 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None
**DEPRECATED** - Use the V2 endpoint instead'

GET /session/v1/regions
- Description changed from 'Get all of the enabled regions and their configuration

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get all of the enabled regions and their configuration

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


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
	For any player (including themselves)any of: `session:read:self`, `session:read:any`, `session:*`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:any`, `session:*`, `session:read:self`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/browser
- Description changed from 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Delete the session from the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

PATCH /session/v1/session/{session_id}/browser
- Description changed from 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Update the browser info for the session

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

POST /session/v1/session/{session_id}/browser
- Description changed from 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:browser`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission' to 'Register session in the public browser

Required Permissions: 
	For any player (including themselves)any of: `session:update:browser`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:*` auth permission'

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read:event`, `session:read-player:any`, `session:*`


Required Session Permissions: None' to 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:event`, `session:read-player:any`


Required Session Permissions: None'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:event`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:update:event`, `session:*`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance/fubar
- Description changed from 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:update:fubar`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:fubar`


Required Session Permissions: `SessionPermissions.session_admin`'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player/uuid endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player/uuid endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:self`, `session:promote:any`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:self`


Required Session Permissions: `SessionPermissions.session_admin`'

GET /session/v1/template
- Description changed from 'Get the config about all session templates

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get the config about all session templates

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None'

GET /session/v1/template/{session_type}
- Description changed from 'Get config about a session template by ID

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get config about a session template by ID

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None'

GET /session/v2/match-making-templates/{template_group_id}
- Description changed from 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead' to 'Get match making templates, rules, and profiles for a template group. Groups can be found on the queue information
from the `queues` config endpoints

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None
**DEPRECATED** Use the V2 endpoint instead'
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Required changed
            - New required property: match_making_template_group_id
            - Deleted required property: template_group_id
          - Properties changed
            - New property: match_making_template_group_id
            - Deleted property: template_group_id
            - Modified property: template_options
              - Items changed
                - Properties changed
                  - Modified property: profiles
                    - Items changed
                      - Required changed
                        - New required property: match_making_profile_id
                        - Deleted required property: profile_id
                      - Properties changed
                        - New property: match_making_profile_id
                        - Deleted property: profile_id
- Deprecated changed from true to false

GET /session/v2/queues
- Description changed from 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:read:config`, `session:*`


Required Session Permissions: None' to 'Get all the available and active queues that sessions can try to join

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:config`


Required Session Permissions: None'
## Changes for Thu Sep 28 15:43:31 EDT 2023
### New Endpoints: None
-----------------------

### Deleted Endpoints: None
---------------------------

### Modified Endpoints: 40
--------------------------
GET /session/v1/browser
- Description changed from 'Get all public sessions of a specific type

Required Permissions: 
	For any player (including themselves)any of: `session:read:browser`, `session:*`


Required Permissions: None' to 'Get all public sessions of a specific type

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:browser`


Required Permissions: None'

POST /session/v1/match-made-session
- Description changed from 'Create a match session based on matchmaking results. Only used by the matchmaking system, and not players

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`


Required Session Permissions: None' to 'Create a match session based on matchmaking results. Only used by the matchmaking system, and not players

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`


Required Session Permissions: None'

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Description changed from 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/me
- Description changed from 'Join a platform session by ID, and the parent session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a platform session by ID, and the parent session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

DELETE /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Description changed from 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Leave a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/player/{player_uuid}
- Description changed from 'Join a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a platform session by platform ID and parent platform session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

POST /session/v1/platform/{platform}/platform-session/{platform_session_id_base64}/session/{session_id}
- Description changed from 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session, and be made its leader

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:platform`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission' to 'Add a platform session to an existing RallyHere session. The requesting player will be added to the platform session, and be made its leader

Required Permissions: 
	For any player (including themselves)any of: `session:update:platform`, `session:*`


Required Session Permissions: `SessionPermissions.active_in_session` for users that do not have the `session:update:any` auth permission'

GET /session/v1/player/id/{player_id}/session
- Description changed from 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player/uuid endpoint instead' to 'Get Sessions associated with a player by id

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None

**DEPRECATED** - Use player/uuid endpoint instead'

GET /session/v1/player/uuid/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

GET /session/v1/player/{player_uuid}/session
- Description changed from 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read-player:any`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None' to 'Get Sessions associated with a player by uuid

Required Permissions: 
	For any player (including themselves)any of: `session:read-player:any`, `session:*`
	For the player themselves: `session:read-player:self`

Required Session Permissions: None'

POST /session/v1/session
- Description changed from 'Join the first publicly available session of given type. If there is no public session, and the session type
permits player made sessions, create a new session and put the player in it

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:create`


Required Session Permissions: None' to 'Join the first publicly available session of given type. If there is no public session, and the session type
permits player made sessions, create a new session and put the player in it

Required Permissions: 
	For any player (including themselves)any of: `session:create`, `session:*`


Required Session Permissions: None'

GET /session/v1/session/allocation/{allocation_id}
- Description changed from 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:allocation`


Required Session Permissions: None' to 'Get session by allocation ID. Returns the same limited results as getting the session by session id

Required Permissions: 
	For any player (including themselves)any of: `session:read:allocation`, `session:*`


Required Session Permissions: None'

GET /session/v1/session/{session_id}
- Description changed from 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:read:any`, `session:read:self`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission' to 'Get Session by ID. This request will return limited results for non-members of the session, such as excluding info for 
how to connect to the instance. Elevated permissions can bypass that restriction

Required Permissions: 
	For any player (including themselves)any of: `session:read:self`, `session:read:any`, `session:*`


Required Session Permissions: None for limited results. `SessionPermissions.active_in_session` to get complete results for users who do not have the `session:read:any` auth permission'

PATCH /session/v1/session/{session_id}
- Description changed from 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission' to 'Update session info by session id

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin` for users who do not have the `session:update:any` auth permission'

GET /session/v1/session/{session_id}/event
- Description changed from 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read:event`, `session:*`, `session:read-player:any`


Required Session Permissions: None' to 'Get all events for the session.  Empty list means there is no event history for it.

Required Permissions: 
	For any player (including themselves)any of: `session:read:event`, `session:read-player:any`, `session:*`


Required Session Permissions: None'

POST /session/v1/session/{session_id}/event
- Description changed from 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:any`, `session:update:event`


Required Session Permissions: None' to 'Create an event in the log for this session.
Internal session operations will create new events that are accessible from the get request.

Player clients and instances are expected to create events here when something occurs on their clients that is
relevant.

Required Permissions: 
	For any player (including themselves)any of: `session:update:any`, `session:*`, `session:update:event`


Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/instance
- Description changed from 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Unregister the instance from the session.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/instance
- Description changed from 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission' to 'Update info about the instance. If the instance was a result of the instance allocation system, then it will have an allocation id.
Allocated instances must send their allocation id for updates to ensure they are still the proper allocation.

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_host` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance
- Description changed from 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Request an instance be spawned for the session, or register self as a host of the instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/instance/fubar
- Description changed from 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:fubar`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Report an instance as fubar with a reason and optional metadata. Results will be graphed on your product's grafana page

Required Permissions: 
	For any player (including themselves)any of: `session:update:fubar`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`'

DELETE /session/v1/session/{session_id}/match
- Description changed from 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Unregister the match from the session.
               
Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

PATCH /session/v1/session/{session_id}/match
- Description changed from 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Update info about a match

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

POST /session/v1/session/{session_id}/match
- Description changed from 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission' to 'Begin a new match for the current session, on the current instance

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

             
Required Session Permissions: `SessionPermissions.session_admin` if user does not have the `session:update:any` auth permission'

DELETE /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`, `session:update-player:self`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player/uuid endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for players operating on themselves.
`SessionPermissions.session_admin` for operating on other players in your session

**DEPRECATED** - Use the player/uuid endpoint instead'

POST /session/v1/session/{session_id}/player/id/{player_id}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player/uuid endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited.
`SessionPermissions.session_admin` for other operations

**DEPRECATED** - Use the player/uuid endpoint instead'

POST /session/v1/session/{session_id}/player/me
- Description changed from 'Join a session with currently authed player

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None' to 'Join a session with currently authed player

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update-player:any`
	For the player themselves: `session:update-player:self`

Required Session Permissions: None'

DELETE /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

POST /session/v1/session/{session_id}/player/uuid/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations
**DEPRECATED** - Use player/{player_uuid} endpoint instead'

DELETE /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:any`, `session:*`, `session:update-player:self`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session' to 'Kick or Remove a player from a session, or cancel an invite for a player to the session

Required Permissions: 
	For any player (including themselves)any of: `session:update-player:self`, `session:*`, `session:update-player:any`


Required Session Permissions: None for users operating on themselves. 
`SessionPermissions.session_admin` for operating on other players in your session'

POST /session/v1/session/{session_id}/player/{player_uuid}
- Description changed from 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:promote:any`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations' to 'Add or invite a player to the session, or change the status of a player already in the session

Required Permissions: 
	For any player (including themselves)any of: `session:promote:any`, `session:*`, `session:promote:self`


Required Session Permissions: None if session is publicly joinable or the player has been invited. 
`SessionPermissions.session_admin` for other operations'

DELETE /session/v1/session/{session_id}/queue
- Description changed from 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`

               
Required Session Permissions: `SessionPermissions.session_admin`' to 'Remove session from a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`

               
Required Session Permissions: `SessionPermissions.session_admin`'

POST /session/v1/session/{session_id}/queue
- Description changed from 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:*`, `session:update:self`, `session:update:any`


Required Session Permissions: `SessionPermissions.session_admin`' to 'Add session to a matchmaking queue

Required Permissions: 
	For any player (including themselves)any of: `session:update:self`, `session:update:any`, `session:*`


Required Session Permissions: `SessionPermissions.session_admin`'

GET /session/v2/match-making-templates/{template_group_id}

GET /settings/v1/setting_type
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - AdditionalProperties changed
            - Properties changed
              - Modified property: versions
                - AdditionalProperties changed
                  - Properties changed
                    - New property: custom_data

GET /settings/v1/setting_type/{setting_type_id}/v
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - AdditionalProperties changed
            - Properties changed
              - New property: custom_data

GET /settings/v1/setting_type/{setting_type_id}/v/{setting_version_id}
- Responses changed
  - Modified response: 200
    - Content changed
      - Modified media type: application/json
        - Schema changed
          - Properties changed
            - New property: custom_data

POST /users/v1/login
- Responses changed
  - Modified response: 403
    - Description changed from 'User authentication failed.  See error code and description for further details.

Error Codes:
- `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
- `no_redirects_configured` - No redirect urls setup for oauth.
- `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
- `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
- `failed_to_verify_state` - Failed to verify the state associated with the request.
- `failed_to_save_state` - Error occurred saving the state.
- `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
- `too_many_users` - Account has too many users associated with it.  Contact an administrator
- `user_auth_restricted` - Authentication for this user has been restricted
- `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
- `error_retrieving_player_results` - Error retrieving player results
- `failed_to_retrieve_roles` - Failed to retrieve roles
- `amazon_disabled` - Amazon authentication is currently disabled
- `amazon_token_empty` - Amazon access token is empty
- `amazon_invalid_access_token` - Amazon access token is invalid
- `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
- `anon_disabled` - Anon authentication is currently disabled
- `anon_token_empty` - Anon access token is empty
- `apple_disabled` - Apple authentication is currently disabled
- `apple_token_empty` - Apple access token is empty
- `apple_failed_key_lookup` - Failed to retrieve keys from Apple
- `apple_token_exchange_failed` - Problem exchanging code for token with Apple
- `apple_token_key_not_valid` - public key not found
- `apple_token_not_valid` - Apple access token is not valid
- `authorization_code_not_found` - Authorization code not found or expired
- `basic_disabled` - Basic authentication is currently disabled
- `basic_token_empty` - Basic access token is empty
- `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
- `basic_auth_credentials_not_found` - Basic auth credentials not found
- `epic_disabled` - Epic authentication is currently disabled
- `epic_token_empty` - Epic access token is empty
- `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
- `epic_v1_token_invalid` - Epic v1 token is invalid
- `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
- `epic_v2_token_invalid` - Epic v2 token is invalid
- `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
- `google_disabled` - Google authentication is currently disabled
- `google_token_empty` - Google access token is empty
- `google_keys_not_available` - Google keys are not available.  Please contact an administrator
- `google_token_not_valid` - Google access token is not valid
- `google_token_exchange_failed` - Problem exchanging code for token with Google
- `nintendo_disabled` - Nintendo authentication is currently disabled
- `nintendo_access_token_not_valid` - Nintendo access token is not valid
- `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
- `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
- `nintendo_ppid_conversion_failed` - error during PPID conversion
- `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
- `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
- `nintendo_ppid_missing` - PPID is missing for user
- `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
- `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
- `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
- `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
- `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
- `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
- `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
- `ps4_v1_token_empty` - PS4 v1 access token is empty
- `ps4_v1_token_expired` - PS4 v1 access token is expired
- `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
- `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
- `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
- `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
- `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
- `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
- `ps4_v3_token_empty` - PS4 v3 access token is empty
- `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
- `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
- `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
- `ps5_v3_token_empty` - PS5 v3 access token is empty
- `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
- `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
- `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
- `refresh_disabled` - Refresh authentication is currently disabled
- `refresh_token_empty` - Refresh token is empty
- `refresh_token_not_found` - Refresh token was not found or has expired
- `refresh_token_invalid_user` - Refresh token refrences invalid user
- `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
- `steam_disabled` - Steam authentication is currently disabled
- `steam_token_empty` - Steam code (Ticket) is empty
- `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
- `steam_user_vacbanned` - User is VAC banned
- `steam_user_publisherbanned` - User is publisher banned
- `twitch_disabled` - Twitch authentication is currently disabled
- `twitch_token_empty` - Twitch access token is empty
- `twitch_token_invalid` - Twitch access token is not valid
- `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
- `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
- `xbox_disabled` - Xbox authentication is currently disabled
- `xbox_xsts_token_empty` - Xbox XSTS token is empty
- `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
- `xbox_xtoken_invalid` - Xbox XToken is not valid
- `xbox_access_token_request_failed` - Problem requesting access token from Xbox
- `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
- `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

' to 'User authentication failed.  See error code and description for further details.

Error Codes:
- `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
- `no_redirects_configured` - No redirect urls setup for oauth.
- `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
- `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
- `failed_to_verify_state` - Failed to verify the state associated with the request.
- `failed_to_save_state` - Error occurred saving the state.
- `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
- `too_many_users` - Account has too many users associated with it.  Contact an administrator
- `user_auth_restricted` - Authentication for this user has been restricted
- `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
- `error_retrieving_player_results` - Error retrieving player results
- `failed_to_retrieve_roles` - Failed to retrieve roles
- `amazon_disabled` - Amazon authentication is currently disabled
- `amazon_token_empty` - Amazon access token is empty
- `amazon_invalid_access_token` - Amazon access token is invalid
- `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
- `anon_disabled` - Anon authentication is currently disabled
- `anon_token_empty` - Anon access token is empty
- `apple_disabled` - Apple authentication is currently disabled
- `apple_token_empty` - Apple access token is empty
- `apple_failed_key_lookup` - Failed to retrieve keys from Apple
- `apple_token_exchange_failed` - Problem exchanging code for token with Apple
- `apple_token_key_not_valid` - public key not found
- `apple_token_not_valid` - Apple access token is not valid
- `authorization_code_not_found` - Authorization code not found or expired
- `basic_disabled` - Basic authentication is currently disabled
- `basic_token_empty` - Basic access token is empty
- `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
- `basic_auth_credentials_not_found` - Basic auth credentials not found
- `epic_disabled` - Epic authentication is currently disabled
- `epic_token_empty` - Epic access token is empty
- `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
- `epic_v1_token_invalid` - Epic v1 token is invalid
- `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
- `epic_v2_token_invalid` - Epic v2 token is invalid
- `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
- `google_disabled` - Google authentication is currently disabled
- `google_token_empty` - Google access token is empty
- `google_keys_not_available` - Google keys are not available.  Please contact an administrator
- `google_token_not_valid` - Google access token is not valid
- `google_token_exchange_failed` - Problem exchanging code for token with Google
- `nintendo_disabled` - Nintendo authentication is currently disabled
- `nintendo_token_empty` - Nintendo access token is empty
- `nintendo_access_token_not_valid` - Nintendo access token is not valid
- `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
- `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
- `nintendo_ppid_conversion_failed` - error during PPID conversion
- `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
- `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
- `nintendo_ppid_missing` - PPID is missing for user
- `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
- `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
- `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
- `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
- `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
- `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
- `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
- `ps4_v1_token_empty` - PS4 v1 access token is empty
- `ps4_v1_token_expired` - PS4 v1 access token is expired
- `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
- `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
- `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
- `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
- `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
- `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
- `ps4_v3_token_empty` - PS4 v3 access token is empty
- `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
- `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
- `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
- `ps5_v3_token_empty` - PS5 v3 access token is empty
- `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
- `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
- `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
- `refresh_disabled` - Refresh authentication is currently disabled
- `refresh_token_empty` - Refresh token is empty
- `refresh_token_not_found` - Refresh token was not found or has expired
- `refresh_token_invalid_user` - Refresh token refrences invalid user
- `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
- `steam_disabled` - Steam authentication is currently disabled
- `steam_token_empty` - Steam code (Ticket) is empty
- `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
- `steam_user_vacbanned` - User is VAC banned
- `steam_user_publisherbanned` - User is publisher banned
- `twitch_disabled` - Twitch authentication is currently disabled
- `twitch_token_empty` - Twitch access token is empty
- `twitch_token_invalid` - Twitch access token is not valid
- `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
- `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
- `xbox_disabled` - Xbox authentication is currently disabled
- `xbox_xsts_token_empty` - Xbox XSTS token is empty
- `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
- `xbox_xtoken_invalid` - Xbox XToken is not valid
- `xbox_access_token_request_failed` - Problem requesting access token from Xbox
- `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
- `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

'

GET /users/v1/oauth/login/{platform}
- Responses changed
  - Modified response: 307
    - Headers changed
      - Modified header: location
        - Description changed from '
URL that the user should be redirected to complete the next step of the OAuth flow.

Redirects to the `redirect_uri` and may include the following query parameters:
- `state`: The state value that was provided in the original request.
- `error_code_v2`: The error code for the error that occurred during the OAuth flow.  May (but is not guaranteed to) contain one of the following:
    - `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
    - `no_redirects_configured` - No redirect urls setup for oauth.
    - `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
    - `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
    - `failed_to_verify_state` - Failed to verify the state associated with the request.
    - `failed_to_save_state` - Error occurred saving the state.
    - `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
    - `too_many_users` - Account has too many users associated with it.  Contact an administrator
    - `user_auth_restricted` - Authentication for this user has been restricted
    - `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
    - `error_retrieving_player_results` - Error retrieving player results
    - `failed_to_retrieve_roles` - Failed to retrieve roles
    - `amazon_disabled` - Amazon authentication is currently disabled
    - `amazon_token_empty` - Amazon access token is empty
    - `amazon_invalid_access_token` - Amazon access token is invalid
    - `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
    - `anon_disabled` - Anon authentication is currently disabled
    - `anon_token_empty` - Anon access token is empty
    - `apple_disabled` - Apple authentication is currently disabled
    - `apple_token_empty` - Apple access token is empty
    - `apple_failed_key_lookup` - Failed to retrieve keys from Apple
    - `apple_token_exchange_failed` - Problem exchanging code for token with Apple
    - `apple_token_key_not_valid` - public key not found
    - `apple_token_not_valid` - Apple access token is not valid
    - `authorization_code_not_found` - Authorization code not found or expired
    - `basic_disabled` - Basic authentication is currently disabled
    - `basic_token_empty` - Basic access token is empty
    - `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
    - `basic_auth_credentials_not_found` - Basic auth credentials not found
    - `epic_disabled` - Epic authentication is currently disabled
    - `epic_token_empty` - Epic access token is empty
    - `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
    - `epic_v1_token_invalid` - Epic v1 token is invalid
    - `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
    - `epic_v2_token_invalid` - Epic v2 token is invalid
    - `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
    - `google_disabled` - Google authentication is currently disabled
    - `google_token_empty` - Google access token is empty
    - `google_keys_not_available` - Google keys are not available.  Please contact an administrator
    - `google_token_not_valid` - Google access token is not valid
    - `google_token_exchange_failed` - Problem exchanging code for token with Google
    - `nintendo_disabled` - Nintendo authentication is currently disabled
    - `nintendo_access_token_not_valid` - Nintendo access token is not valid
    - `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
    - `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
    - `nintendo_ppid_conversion_failed` - error during PPID conversion
    - `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
    - `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
    - `nintendo_ppid_missing` - PPID is missing for user
    - `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
    - `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
    - `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
    - `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
    - `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
    - `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
    - `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
    - `ps4_v1_token_empty` - PS4 v1 access token is empty
    - `ps4_v1_token_expired` - PS4 v1 access token is expired
    - `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
    - `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
    - `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
    - `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
    - `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
    - `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
    - `ps4_v3_token_empty` - PS4 v3 access token is empty
    - `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
    - `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
    - `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
    - `ps5_v3_token_empty` - PS5 v3 access token is empty
    - `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
    - `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
    - `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
    - `refresh_disabled` - Refresh authentication is currently disabled
    - `refresh_token_empty` - Refresh token is empty
    - `refresh_token_not_found` - Refresh token was not found or has expired
    - `refresh_token_invalid_user` - Refresh token refrences invalid user
    - `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
    - `steam_disabled` - Steam authentication is currently disabled
    - `steam_token_empty` - Steam code (Ticket) is empty
    - `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
    - `steam_user_vacbanned` - User is VAC banned
    - `steam_user_publisherbanned` - User is publisher banned
    - `twitch_disabled` - Twitch authentication is currently disabled
    - `twitch_token_empty` - Twitch access token is empty
    - `twitch_token_invalid` - Twitch access token is not valid
    - `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
    - `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
    - `xbox_disabled` - Xbox authentication is currently disabled
    - `xbox_xsts_token_empty` - Xbox XSTS token is empty
    - `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
    - `xbox_xtoken_invalid` - Xbox XToken is not valid
    - `xbox_access_token_request_failed` - Problem requesting access token from Xbox
    - `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
    - `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

- `error_description`: The description for the error that occurred during the OAuth flow.
- `error_code`: ***DEPRECATED*** - Use `error_code_v2` instead.  May (but is not guaranteed to) contain one of the following:
    - `NO_CODE_IN_REQUEST` - No code in request.
    - `NO_REDIRECTS_CONFIGURED` - No redirect urls setup for oauth.
    - `REDIRECT_URI_DOES_NOT_MATCH` - Redirect URI does not match a configured value.
    - `FAILED_TO_VERIFY_STATE` - Failed to verify the state associated with the request.
    - `FAILED_TO_SAVE_STATE` - Error occurred saving the state.
    - `FAILED_TO_SAVE_TOKENS` - Failed to save tokens.
    - `PORTAL_PROVIDER_DISABLED` - OAuth provider is disabled.
    - `ERROR_OCCURRED_DURING_EXCHANGE` - An error occurred while exchanging a code for token.

' to '
URL that the user should be redirected to complete the next step of the OAuth flow.

Redirects to the `redirect_uri` and may include the following query parameters:
- `state`: The state value that was provided in the original request.
- `error_code_v2`: The error code for the error that occurred during the OAuth flow.  May (but is not guaranteed to) contain one of the following:
    - `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
    - `no_redirects_configured` - No redirect urls setup for oauth.
    - `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
    - `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
    - `failed_to_verify_state` - Failed to verify the state associated with the request.
    - `failed_to_save_state` - Error occurred saving the state.
    - `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
    - `too_many_users` - Account has too many users associated with it.  Contact an administrator
    - `user_auth_restricted` - Authentication for this user has been restricted
    - `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
    - `error_retrieving_player_results` - Error retrieving player results
    - `failed_to_retrieve_roles` - Failed to retrieve roles
    - `amazon_disabled` - Amazon authentication is currently disabled
    - `amazon_token_empty` - Amazon access token is empty
    - `amazon_invalid_access_token` - Amazon access token is invalid
    - `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
    - `anon_disabled` - Anon authentication is currently disabled
    - `anon_token_empty` - Anon access token is empty
    - `apple_disabled` - Apple authentication is currently disabled
    - `apple_token_empty` - Apple access token is empty
    - `apple_failed_key_lookup` - Failed to retrieve keys from Apple
    - `apple_token_exchange_failed` - Problem exchanging code for token with Apple
    - `apple_token_key_not_valid` - public key not found
    - `apple_token_not_valid` - Apple access token is not valid
    - `authorization_code_not_found` - Authorization code not found or expired
    - `basic_disabled` - Basic authentication is currently disabled
    - `basic_token_empty` - Basic access token is empty
    - `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
    - `basic_auth_credentials_not_found` - Basic auth credentials not found
    - `epic_disabled` - Epic authentication is currently disabled
    - `epic_token_empty` - Epic access token is empty
    - `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
    - `epic_v1_token_invalid` - Epic v1 token is invalid
    - `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
    - `epic_v2_token_invalid` - Epic v2 token is invalid
    - `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
    - `google_disabled` - Google authentication is currently disabled
    - `google_token_empty` - Google access token is empty
    - `google_keys_not_available` - Google keys are not available.  Please contact an administrator
    - `google_token_not_valid` - Google access token is not valid
    - `google_token_exchange_failed` - Problem exchanging code for token with Google
    - `nintendo_disabled` - Nintendo authentication is currently disabled
    - `nintendo_token_empty` - Nintendo access token is empty
    - `nintendo_access_token_not_valid` - Nintendo access token is not valid
    - `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
    - `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
    - `nintendo_ppid_conversion_failed` - error during PPID conversion
    - `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
    - `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
    - `nintendo_ppid_missing` - PPID is missing for user
    - `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
    - `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
    - `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
    - `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
    - `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
    - `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
    - `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
    - `ps4_v1_token_empty` - PS4 v1 access token is empty
    - `ps4_v1_token_expired` - PS4 v1 access token is expired
    - `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
    - `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
    - `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
    - `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
    - `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
    - `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
    - `ps4_v3_token_empty` - PS4 v3 access token is empty
    - `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
    - `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
    - `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
    - `ps5_v3_token_empty` - PS5 v3 access token is empty
    - `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
    - `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
    - `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
    - `refresh_disabled` - Refresh authentication is currently disabled
    - `refresh_token_empty` - Refresh token is empty
    - `refresh_token_not_found` - Refresh token was not found or has expired
    - `refresh_token_invalid_user` - Refresh token refrences invalid user
    - `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
    - `steam_disabled` - Steam authentication is currently disabled
    - `steam_token_empty` - Steam code (Ticket) is empty
    - `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
    - `steam_user_vacbanned` - User is VAC banned
    - `steam_user_publisherbanned` - User is publisher banned
    - `twitch_disabled` - Twitch authentication is currently disabled
    - `twitch_token_empty` - Twitch access token is empty
    - `twitch_token_invalid` - Twitch access token is not valid
    - `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
    - `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
    - `xbox_disabled` - Xbox authentication is currently disabled
    - `xbox_xsts_token_empty` - Xbox XSTS token is empty
    - `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
    - `xbox_xtoken_invalid` - Xbox XToken is not valid
    - `xbox_access_token_request_failed` - Problem requesting access token from Xbox
    - `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
    - `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

- `error_description`: The description for the error that occurred during the OAuth flow.
- `error_code`: ***DEPRECATED*** - Use `error_code_v2` instead.  May (but is not guaranteed to) contain one of the following:
    - `NO_CODE_IN_REQUEST` - No code in request.
    - `NO_REDIRECTS_CONFIGURED` - No redirect urls setup for oauth.
    - `REDIRECT_URI_DOES_NOT_MATCH` - Redirect URI does not match a configured value.
    - `FAILED_TO_VERIFY_STATE` - Failed to verify the state associated with the request.
    - `FAILED_TO_SAVE_STATE` - Error occurred saving the state.
    - `FAILED_TO_SAVE_TOKENS` - Failed to save tokens.
    - `PORTAL_PROVIDER_DISABLED` - OAuth provider is disabled.
    - `ERROR_OCCURRED_DURING_EXCHANGE` - An error occurred while exchanging a code for token.

'

GET /users/v1/oauth/response/{platform}
- Responses changed
  - Modified response: 307
    - Headers changed
      - Modified header: location
        - Description changed from '
URL that the user should be redirected to complete the next step of the OAuth flow.

Redirects to the `redirect_uri` and may include the following query parameters:
- `code`: The authorization_code that can be exchanged for an access token for the user.
- `state`: The state value that was provided in the original request.
- `error_code_v2`: The error code for the error that occurred during the OAuth flow.  May (but is not guaranteed to) contain one of the following:
    - `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
    - `no_redirects_configured` - No redirect urls setup for oauth.
    - `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
    - `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
    - `failed_to_verify_state` - Failed to verify the state associated with the request.
    - `failed_to_save_state` - Error occurred saving the state.
    - `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
    - `too_many_users` - Account has too many users associated with it.  Contact an administrator
    - `user_auth_restricted` - Authentication for this user has been restricted
    - `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
    - `error_retrieving_player_results` - Error retrieving player results
    - `failed_to_retrieve_roles` - Failed to retrieve roles
    - `amazon_disabled` - Amazon authentication is currently disabled
    - `amazon_token_empty` - Amazon access token is empty
    - `amazon_invalid_access_token` - Amazon access token is invalid
    - `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
    - `anon_disabled` - Anon authentication is currently disabled
    - `anon_token_empty` - Anon access token is empty
    - `apple_disabled` - Apple authentication is currently disabled
    - `apple_token_empty` - Apple access token is empty
    - `apple_failed_key_lookup` - Failed to retrieve keys from Apple
    - `apple_token_exchange_failed` - Problem exchanging code for token with Apple
    - `apple_token_key_not_valid` - public key not found
    - `apple_token_not_valid` - Apple access token is not valid
    - `authorization_code_not_found` - Authorization code not found or expired
    - `basic_disabled` - Basic authentication is currently disabled
    - `basic_token_empty` - Basic access token is empty
    - `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
    - `basic_auth_credentials_not_found` - Basic auth credentials not found
    - `epic_disabled` - Epic authentication is currently disabled
    - `epic_token_empty` - Epic access token is empty
    - `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
    - `epic_v1_token_invalid` - Epic v1 token is invalid
    - `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
    - `epic_v2_token_invalid` - Epic v2 token is invalid
    - `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
    - `google_disabled` - Google authentication is currently disabled
    - `google_token_empty` - Google access token is empty
    - `google_keys_not_available` - Google keys are not available.  Please contact an administrator
    - `google_token_not_valid` - Google access token is not valid
    - `google_token_exchange_failed` - Problem exchanging code for token with Google
    - `nintendo_disabled` - Nintendo authentication is currently disabled
    - `nintendo_access_token_not_valid` - Nintendo access token is not valid
    - `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
    - `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
    - `nintendo_ppid_conversion_failed` - error during PPID conversion
    - `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
    - `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
    - `nintendo_ppid_missing` - PPID is missing for user
    - `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
    - `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
    - `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
    - `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
    - `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
    - `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
    - `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
    - `ps4_v1_token_empty` - PS4 v1 access token is empty
    - `ps4_v1_token_expired` - PS4 v1 access token is expired
    - `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
    - `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
    - `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
    - `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
    - `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
    - `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
    - `ps4_v3_token_empty` - PS4 v3 access token is empty
    - `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
    - `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
    - `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
    - `ps5_v3_token_empty` - PS5 v3 access token is empty
    - `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
    - `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
    - `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
    - `refresh_disabled` - Refresh authentication is currently disabled
    - `refresh_token_empty` - Refresh token is empty
    - `refresh_token_not_found` - Refresh token was not found or has expired
    - `refresh_token_invalid_user` - Refresh token refrences invalid user
    - `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
    - `steam_disabled` - Steam authentication is currently disabled
    - `steam_token_empty` - Steam code (Ticket) is empty
    - `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
    - `steam_user_vacbanned` - User is VAC banned
    - `steam_user_publisherbanned` - User is publisher banned
    - `twitch_disabled` - Twitch authentication is currently disabled
    - `twitch_token_empty` - Twitch access token is empty
    - `twitch_token_invalid` - Twitch access token is not valid
    - `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
    - `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
    - `xbox_disabled` - Xbox authentication is currently disabled
    - `xbox_xsts_token_empty` - Xbox XSTS token is empty
    - `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
    - `xbox_xtoken_invalid` - Xbox XToken is not valid
    - `xbox_access_token_request_failed` - Problem requesting access token from Xbox
    - `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
    - `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

- `error_description`: The description for the error that occurred during the OAuth flow.
- `error_code`: ***DEPRECATED*** - Use `error_code_v2` instead.  May (but is not guaranteed to) contain one of the following:
    - `NO_CODE_IN_REQUEST` - No code in request.
    - `NO_REDIRECTS_CONFIGURED` - No redirect urls setup for oauth.
    - `REDIRECT_URI_DOES_NOT_MATCH` - Redirect URI does not match a configured value.
    - `FAILED_TO_VERIFY_STATE` - Failed to verify the state associated with the request.
    - `FAILED_TO_SAVE_STATE` - Error occurred saving the state.
    - `FAILED_TO_SAVE_TOKENS` - Failed to save tokens.
    - `PORTAL_PROVIDER_DISABLED` - OAuth provider is disabled.
    - `ERROR_OCCURRED_DURING_EXCHANGE` - An error occurred while exchanging a code for token.

' to '
URL that the user should be redirected to complete the next step of the OAuth flow.

Redirects to the `redirect_uri` and may include the following query parameters:
- `code`: The authorization_code that can be exchanged for an access token for the user.
- `state`: The state value that was provided in the original request.
- `error_code_v2`: The error code for the error that occurred during the OAuth flow.  May (but is not guaranteed to) contain one of the following:
    - `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
    - `no_redirects_configured` - No redirect urls setup for oauth.
    - `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
    - `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
    - `failed_to_verify_state` - Failed to verify the state associated with the request.
    - `failed_to_save_state` - Error occurred saving the state.
    - `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
    - `too_many_users` - Account has too many users associated with it.  Contact an administrator
    - `user_auth_restricted` - Authentication for this user has been restricted
    - `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
    - `error_retrieving_player_results` - Error retrieving player results
    - `failed_to_retrieve_roles` - Failed to retrieve roles
    - `amazon_disabled` - Amazon authentication is currently disabled
    - `amazon_token_empty` - Amazon access token is empty
    - `amazon_invalid_access_token` - Amazon access token is invalid
    - `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
    - `anon_disabled` - Anon authentication is currently disabled
    - `anon_token_empty` - Anon access token is empty
    - `apple_disabled` - Apple authentication is currently disabled
    - `apple_token_empty` - Apple access token is empty
    - `apple_failed_key_lookup` - Failed to retrieve keys from Apple
    - `apple_token_exchange_failed` - Problem exchanging code for token with Apple
    - `apple_token_key_not_valid` - public key not found
    - `apple_token_not_valid` - Apple access token is not valid
    - `authorization_code_not_found` - Authorization code not found or expired
    - `basic_disabled` - Basic authentication is currently disabled
    - `basic_token_empty` - Basic access token is empty
    - `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
    - `basic_auth_credentials_not_found` - Basic auth credentials not found
    - `epic_disabled` - Epic authentication is currently disabled
    - `epic_token_empty` - Epic access token is empty
    - `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
    - `epic_v1_token_invalid` - Epic v1 token is invalid
    - `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
    - `epic_v2_token_invalid` - Epic v2 token is invalid
    - `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
    - `google_disabled` - Google authentication is currently disabled
    - `google_token_empty` - Google access token is empty
    - `google_keys_not_available` - Google keys are not available.  Please contact an administrator
    - `google_token_not_valid` - Google access token is not valid
    - `google_token_exchange_failed` - Problem exchanging code for token with Google
    - `nintendo_disabled` - Nintendo authentication is currently disabled
    - `nintendo_token_empty` - Nintendo access token is empty
    - `nintendo_access_token_not_valid` - Nintendo access token is not valid
    - `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
    - `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
    - `nintendo_ppid_conversion_failed` - error during PPID conversion
    - `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
    - `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
    - `nintendo_ppid_missing` - PPID is missing for user
    - `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
    - `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
    - `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
    - `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
    - `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
    - `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
    - `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
    - `ps4_v1_token_empty` - PS4 v1 access token is empty
    - `ps4_v1_token_expired` - PS4 v1 access token is expired
    - `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
    - `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
    - `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
    - `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
    - `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
    - `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
    - `ps4_v3_token_empty` - PS4 v3 access token is empty
    - `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
    - `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
    - `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
    - `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
    - `ps5_v3_token_empty` - PS5 v3 access token is empty
    - `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
    - `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
    - `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
    - `refresh_disabled` - Refresh authentication is currently disabled
    - `refresh_token_empty` - Refresh token is empty
    - `refresh_token_not_found` - Refresh token was not found or has expired
    - `refresh_token_invalid_user` - Refresh token refrences invalid user
    - `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
    - `steam_disabled` - Steam authentication is currently disabled
    - `steam_token_empty` - Steam code (Ticket) is empty
    - `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
    - `steam_user_vacbanned` - User is VAC banned
    - `steam_user_publisherbanned` - User is publisher banned
    - `twitch_disabled` - Twitch authentication is currently disabled
    - `twitch_token_empty` - Twitch access token is empty
    - `twitch_token_invalid` - Twitch access token is not valid
    - `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
    - `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
    - `xbox_disabled` - Xbox authentication is currently disabled
    - `xbox_xsts_token_empty` - Xbox XSTS token is empty
    - `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
    - `xbox_xtoken_invalid` - Xbox XToken is not valid
    - `xbox_access_token_request_failed` - Problem requesting access token from Xbox
    - `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
    - `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

- `error_description`: The description for the error that occurred during the OAuth flow.
- `error_code`: ***DEPRECATED*** - Use `error_code_v2` instead.  May (but is not guaranteed to) contain one of the following:
    - `NO_CODE_IN_REQUEST` - No code in request.
    - `NO_REDIRECTS_CONFIGURED` - No redirect urls setup for oauth.
    - `REDIRECT_URI_DOES_NOT_MATCH` - Redirect URI does not match a configured value.
    - `FAILED_TO_VERIFY_STATE` - Failed to verify the state associated with the request.
    - `FAILED_TO_SAVE_STATE` - Error occurred saving the state.
    - `FAILED_TO_SAVE_TOKENS` - Failed to save tokens.
    - `PORTAL_PROVIDER_DISABLED` - OAuth provider is disabled.
    - `ERROR_OCCURRED_DURING_EXCHANGE` - An error occurred while exchanging a code for token.

'

POST /users/v1/portaltoken/details
- Responses changed
  - Modified response: 403
    - Description changed from '
Error Codes:
- `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
- `no_redirects_configured` - No redirect urls setup for oauth.
- `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
- `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
- `failed_to_verify_state` - Failed to verify the state associated with the request.
- `failed_to_save_state` - Error occurred saving the state.
- `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
- `too_many_users` - Account has too many users associated with it.  Contact an administrator
- `user_auth_restricted` - Authentication for this user has been restricted
- `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
- `error_retrieving_player_results` - Error retrieving player results
- `failed_to_retrieve_roles` - Failed to retrieve roles
- `amazon_disabled` - Amazon authentication is currently disabled
- `amazon_token_empty` - Amazon access token is empty
- `amazon_invalid_access_token` - Amazon access token is invalid
- `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
- `anon_disabled` - Anon authentication is currently disabled
- `anon_token_empty` - Anon access token is empty
- `apple_disabled` - Apple authentication is currently disabled
- `apple_token_empty` - Apple access token is empty
- `apple_failed_key_lookup` - Failed to retrieve keys from Apple
- `apple_token_exchange_failed` - Problem exchanging code for token with Apple
- `apple_token_key_not_valid` - public key not found
- `apple_token_not_valid` - Apple access token is not valid
- `authorization_code_not_found` - Authorization code not found or expired
- `basic_disabled` - Basic authentication is currently disabled
- `basic_token_empty` - Basic access token is empty
- `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
- `basic_auth_credentials_not_found` - Basic auth credentials not found
- `epic_disabled` - Epic authentication is currently disabled
- `epic_token_empty` - Epic access token is empty
- `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
- `epic_v1_token_invalid` - Epic v1 token is invalid
- `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
- `epic_v2_token_invalid` - Epic v2 token is invalid
- `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
- `google_disabled` - Google authentication is currently disabled
- `google_token_empty` - Google access token is empty
- `google_keys_not_available` - Google keys are not available.  Please contact an administrator
- `google_token_not_valid` - Google access token is not valid
- `google_token_exchange_failed` - Problem exchanging code for token with Google
- `nintendo_disabled` - Nintendo authentication is currently disabled
- `nintendo_access_token_not_valid` - Nintendo access token is not valid
- `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
- `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
- `nintendo_ppid_conversion_failed` - error during PPID conversion
- `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
- `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
- `nintendo_ppid_missing` - PPID is missing for user
- `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
- `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
- `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
- `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
- `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
- `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
- `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
- `ps4_v1_token_empty` - PS4 v1 access token is empty
- `ps4_v1_token_expired` - PS4 v1 access token is expired
- `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
- `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
- `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
- `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
- `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
- `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
- `ps4_v3_token_empty` - PS4 v3 access token is empty
- `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
- `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
- `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
- `ps5_v3_token_empty` - PS5 v3 access token is empty
- `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
- `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
- `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
- `refresh_disabled` - Refresh authentication is currently disabled
- `refresh_token_empty` - Refresh token is empty
- `refresh_token_not_found` - Refresh token was not found or has expired
- `refresh_token_invalid_user` - Refresh token refrences invalid user
- `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
- `steam_disabled` - Steam authentication is currently disabled
- `steam_token_empty` - Steam code (Ticket) is empty
- `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
- `steam_user_vacbanned` - User is VAC banned
- `steam_user_publisherbanned` - User is publisher banned
- `twitch_disabled` - Twitch authentication is currently disabled
- `twitch_token_empty` - Twitch access token is empty
- `twitch_token_invalid` - Twitch access token is not valid
- `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
- `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
- `xbox_disabled` - Xbox authentication is currently disabled
- `xbox_xsts_token_empty` - Xbox XSTS token is empty
- `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
- `xbox_xtoken_invalid` - Xbox XToken is not valid
- `xbox_access_token_request_failed` - Problem requesting access token from Xbox
- `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
- `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

' to '
Error Codes:
- `internal_error` - An internal error occurred.  The request may succeed if retried.  If not, contact an administrator.
- `no_redirects_configured` - No redirect urls setup for oauth.
- `redirect_uri_does_not_match` - Redirect URI does not match a configured value.
- `error_occurred_during_exchange` - An error occurred while exchanging a code for token.
- `failed_to_verify_state` - Failed to verify the state associated with the request.
- `failed_to_save_state` - Error occurred saving the state.
- `failed_to_save_tokens` - Problem saving tokens.  Contact an administrator
- `too_many_users` - Account has too many users associated with it.  Contact an administrator
- `user_auth_restricted` - Authentication for this user has been restricted
- `user_needs_agreements` - User has not accepted all required agreements.  See response for list of agreements required
- `error_retrieving_player_results` - Error retrieving player results
- `failed_to_retrieve_roles` - Failed to retrieve roles
- `amazon_disabled` - Amazon authentication is currently disabled
- `amazon_token_empty` - Amazon access token is empty
- `amazon_invalid_access_token` - Amazon access token is invalid
- `amazon_token_exchange_failed` - Problem exchanging code for token with Amazon
- `anon_disabled` - Anon authentication is currently disabled
- `anon_token_empty` - Anon access token is empty
- `apple_disabled` - Apple authentication is currently disabled
- `apple_token_empty` - Apple access token is empty
- `apple_failed_key_lookup` - Failed to retrieve keys from Apple
- `apple_token_exchange_failed` - Problem exchanging code for token with Apple
- `apple_token_key_not_valid` - public key not found
- `apple_token_not_valid` - Apple access token is not valid
- `authorization_code_not_found` - Authorization code not found or expired
- `basic_disabled` - Basic authentication is currently disabled
- `basic_token_empty` - Basic access token is empty
- `basic_auth_incorrect_format` - Basic auth should be formatted like `USERNAME:PASSWORD`
- `basic_auth_credentials_not_found` - Basic auth credentials not found
- `epic_disabled` - Epic authentication is currently disabled
- `epic_token_empty` - Epic access token is empty
- `epic_v1_token_key_id_invalid` - Epic v1 token contains an invalid key id
- `epic_v1_token_invalid` - Epic v1 token is invalid
- `epic_v2_keys_not_available` - Epic v2 keys are not available.  Please contact an administrator
- `epic_v2_token_invalid` - Epic v2 token is invalid
- `epic_oauth_token_exchange_failed` - Problem exchanging code for token with Epic
- `google_disabled` - Google authentication is currently disabled
- `google_token_empty` - Google access token is empty
- `google_keys_not_available` - Google keys are not available.  Please contact an administrator
- `google_token_not_valid` - Google access token is not valid
- `google_token_exchange_failed` - Problem exchanging code for token with Google
- `nintendo_disabled` - Nintendo authentication is currently disabled
- `nintendo_token_empty` - Nintendo access token is empty
- `nintendo_access_token_not_valid` - Nintendo access token is not valid
- `nintendo_no_environment_matches_env_id` - Nintendo environment not found for given environment ID
- `nintendo_retrieve_client_credentials_failed` - Problem retrieving client credentials from Nintendo.  This commonly occurs while converting between NAID and PPID.
- `nintendo_ppid_conversion_failed` - error during PPID conversion
- `nintendo_ppid_conversion_too_many_accounts_found` - too many accounts found during PPID conversion
- `nintendo_ppid_conversion_no_accounts_found` - no accounts found during PPID conversion
- `nintendo_ppid_missing` - PPID is missing for user
- `nintendo_ppid_key_not_valid` - Nintendo access token key is not valid
- `nintendo_service_key_url_not_found` - Nintendo service key url not found.  This usually indicates that the corresponding Nintendo environment has a mismatch between Nintendo account URL and Nintendo Service Account URL.
- `nintendo_service_access_token_not_valid` - Nintendo service access token is not valid
- `nintendo_service_access_token_for_wrong_app` - Nintendo service access token is for the wrong app
- `nintendo_oauth_env_not_found` - Nintendo oauth environment not found.  Check that the environment is configured correctly.
- `nintendo_token_exchange_failed` - Problem exchanging code for token with Nintendo
- `ps4_v1_disabled` - PS4 v1 authentication is currently disabled
- `ps4_v1_token_empty` - PS4 v1 access token is empty
- `ps4_v1_token_expired` - PS4 v1 access token is expired
- `ps4_v1_token_exchange_failed` - Problem exchanging code for token with PS4
- `ps4_v1_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v1_id_token_not_valid` - PS4 v1 id token is not valid
- `ps4_v1_token_details_disabled` - PS4 v1 token details are disabled
- `ps4_v1_token_details_request_failed` - Problem requesting token details from PS4
- `ps4_v3_disabled` - PS4 v3 authentication is currently disabled
- `ps4_v3_token_details_disabled` - PS4 v3 token details are disabled
- `ps4_v3_token_empty` - PS4 v3 access token is empty
- `ps4_v3_id_token_request_failed` - Problem requesting id token from PS4
- `ps4_v3_id_token_not_valid` - PS4 v3 id token is not valid
- `ps5_v3_disabled` - PS5 v3 authentication is currently disabled
- `ps5_v3_token_details_disabled` - PS5 v3 token details are disabled
- `ps5_v3_token_empty` - PS5 v3 access token is empty
- `ps5_v3_id_token_request_failed` - Problem requesting id token from PS5
- `ps5_v3_id_token_not_valid` - PS5 v3 id token is not valid
- `psn_environment_permission_denied` - PSN Environment permission was denied.  This usually means that the Client ID/Secret do not match.  This error can also occur for `sp-int` or `prod-qa` if the environment is not whitelisted to access the PSN environment.
- `refresh_disabled` - Refresh authentication is currently disabled
- `refresh_token_empty` - Refresh token is empty
- `refresh_token_not_found` - Refresh token was not found or has expired
- `refresh_token_invalid_user` - Refresh token refrences invalid user
- `refresh_token_client_id_mismatch` - Client ID for new token request did not match original token
- `steam_disabled` - Steam authentication is currently disabled
- `steam_token_empty` - Steam code (Ticket) is empty
- `steam_token_exchange_failed` - Problem exchanging code (ticket) for token with Steam
- `steam_user_vacbanned` - User is VAC banned
- `steam_user_publisherbanned` - User is publisher banned
- `twitch_disabled` - Twitch authentication is currently disabled
- `twitch_token_empty` - Twitch access token is empty
- `twitch_token_invalid` - Twitch access token is not valid
- `twitch_keys_not_available` - Twitch keys are not available.  Please contact an administrator
- `twitch_token_exchange_failed` - Problem exchanging code for token with Twitch
- `xbox_disabled` - Xbox authentication is currently disabled
- `xbox_xsts_token_empty` - Xbox XSTS token is empty
- `xbox_xsts_token_invalid` - Xbox XSTS token is not valid
- `xbox_xtoken_invalid` - Xbox XToken is not valid
- `xbox_access_token_request_failed` - Problem requesting access token from Xbox
- `xbox_xsts_token_exchange_failed` - Problem exchanging access token for XSTS token with Xbox
- `xbox_xtoken_exchange_failed` - Problem exchanging XSTS token for XToken with Xbox

'
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
