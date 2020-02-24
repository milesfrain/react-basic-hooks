module Example where

import Prelude

import Effect (Effect)
import Effect.Console (log)
import React.Basic.DOM as R
import React.Basic.Events (handler_)
import React.Basic.Hooks (ReactComponent, component)

mkExample :: Effect (ReactComponent {})
mkExample = do
  component "Button" \_ -> React.do
    pure $
      R.div_
        [ R.button
          { onClick: handler_ $ log "hello"
          , children: [ R.text "Hello in the console" ]
          }
        ]


