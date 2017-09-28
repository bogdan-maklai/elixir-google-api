# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Calendar.V3.Model.Event do
  @moduledoc """
  

  ## Attributes

  - anyoneCanAddSelf (Boolean): Whether anyone can invite themselves to the event (currently works for Google+ events only). Optional. The default is False. Defaults to: `null`.
  - attachments (List[EventAttachment]): File attachments for the event. Currently only Google Drive attachments are supported. In order to modify attachments the supportsAttachments request parameter should be set to true. There can be at most 25 attachments per event, Defaults to: `null`.
  - attendees (List[EventAttendee]): The attendees of the event. See the Events with attendees guide for more information on scheduling events with other calendar users. Defaults to: `null`.
  - attendeesOmitted (Boolean): Whether attendees may have been omitted from the event&#39;s representation. When retrieving an event, this may be due to a restriction specified by the maxAttendee query parameter. When updating an event, this can be used to only update the participant&#39;s response. Optional. The default is False. Defaults to: `null`.
  - colorId (String): The color of the event. This is an ID referring to an entry in the event section of the colors definition (see the  colors endpoint). Optional. Defaults to: `null`.
  - created (DateTime): Creation time of the event (as a RFC3339 timestamp). Read-only. Defaults to: `null`.
  - creator (EventCreator):  Defaults to: `null`.
  - description (String): Description of the event. Optional. Defaults to: `null`.
  - end (EventDateTime): The (exclusive) end time of the event. For a recurring event, this is the end time of the first instance. Defaults to: `null`.
  - endTimeUnspecified (Boolean): Whether the end time is actually unspecified. An end time is still provided for compatibility reasons, even if this attribute is set to True. The default is False. Defaults to: `null`.
  - etag (String): ETag of the resource. Defaults to: `null`.
  - extendedProperties (EventExtendedProperties):  Defaults to: `null`.
  - gadget (EventGadget):  Defaults to: `null`.
  - guestsCanInviteOthers (Boolean): Whether attendees other than the organizer can invite others to the event. Optional. The default is True. Defaults to: `null`.
  - guestsCanModify (Boolean): Whether attendees other than the organizer can modify the event. Optional. The default is False. Defaults to: `null`.
  - guestsCanSeeOtherGuests (Boolean): Whether attendees other than the organizer can see who the event&#39;s attendees are. Optional. The default is True. Defaults to: `null`.
  - hangoutLink (String): An absolute link to the Google+ hangout associated with this event. Read-only. Defaults to: `null`.
  - htmlLink (String): An absolute link to this event in the Google Calendar Web UI. Read-only. Defaults to: `null`.
  - iCalUID (String): Event unique identifier as defined in RFC5545. It is used to uniquely identify events accross calendaring systems and must be supplied when importing events via the import method. Note that the icalUID and the id are not identical and only one of them should be supplied at event creation time. One difference in their semantics is that in recurring events, all occurrences of one event have different ids while they all share the same icalUIDs. Defaults to: `null`.
  - id (String): Opaque identifier of the event. When creating new single or recurring events, you can specify their IDs. Provided IDs must follow these rules:   - characters allowed in the ID are those used in base32hex encoding, i.e. lowercase letters a-v and digits 0-9, see section 3.1.2 in RFC2938  - the length of the ID must be between 5 and 1024 characters  - the ID must be unique per calendar  Due to the globally distributed nature of the system, we cannot guarantee that ID collisions will be detected at event creation time. To minimize the risk of collisions we recommend using an established UUID algorithm such as one described in RFC4122. If you do not specify an ID, it will be automatically generated by the server. Note that the icalUID and the id are not identical and only one of them should be supplied at event creation time. One difference in their semantics is that in recurring events, all occurrences of one event have different ids while they all share the same icalUIDs. Defaults to: `null`.
  - kind (String): Type of the resource (\&quot;calendar#event\&quot;). Defaults to: `null`.
  - location (String): Geographic location of the event as free-form text. Optional. Defaults to: `null`.
  - locked (Boolean): Whether this is a locked event copy where no changes can be made to the main event fields \&quot;summary\&quot;, \&quot;description\&quot;, \&quot;location\&quot;, \&quot;start\&quot;, \&quot;end\&quot; or \&quot;recurrence\&quot;. The default is False. Read-Only. Defaults to: `null`.
  - organizer (EventOrganizer):  Defaults to: `null`.
  - originalStartTime (EventDateTime): For an instance of a recurring event, this is the time at which this event would start according to the recurrence data in the recurring event identified by recurringEventId. Immutable. Defaults to: `null`.
  - privateCopy (Boolean): Whether this is a private event copy where changes are not shared with other copies on other calendars. Optional. Immutable. The default is False. Defaults to: `null`.
  - recurrence (List[String]): List of RRULE, EXRULE, RDATE and EXDATE lines for a recurring event, as specified in RFC5545. Note that DTSTART and DTEND lines are not allowed in this field; event start and end times are specified in the start and end fields. This field is omitted for single events or instances of recurring events. Defaults to: `null`.
  - recurringEventId (String): For an instance of a recurring event, this is the id of the recurring event to which this instance belongs. Immutable. Defaults to: `null`.
  - reminders (EventReminders):  Defaults to: `null`.
  - sequence (Integer): Sequence number as per iCalendar. Defaults to: `null`.
  - source (EventSource):  Defaults to: `null`.
  - start (EventDateTime): The (inclusive) start time of the event. For a recurring event, this is the start time of the first instance. Defaults to: `null`.
  - status (String): Status of the event. Optional. Possible values are:   - \&quot;confirmed\&quot; - The event is confirmed. This is the default status.  - \&quot;tentative\&quot; - The event is tentatively confirmed.  - \&quot;cancelled\&quot; - The event is cancelled. Defaults to: `null`.
  - summary (String): Title of the event. Defaults to: `null`.
  - transparency (String): Whether the event blocks time on the calendar. Optional. Possible values are:   - \&quot;opaque\&quot; - Default value. The event does block time on the calendar. This is equivalent to setting Show me as to Busy in the Calendar UI.  - \&quot;transparent\&quot; - The event does not block time on the calendar. This is equivalent to setting Show me as to Available in the Calendar UI. Defaults to: `null`.
  - updated (DateTime): Last modification time of the event (as a RFC3339 timestamp). Read-only. Defaults to: `null`.
  - visibility (String): Visibility of the event. Optional. Possible values are:   - \&quot;default\&quot; - Uses the default visibility for events on the calendar. This is the default value.  - \&quot;public\&quot; - The event is public and event details are visible to all readers of the calendar.  - \&quot;private\&quot; - The event is private and only event attendees may view event details.  - \&quot;confidential\&quot; - The event is private. This value is provided for compatibility reasons. Defaults to: `null`.
  """

  defstruct [
    :"anyoneCanAddSelf",
    :"attachments",
    :"attendees",
    :"attendeesOmitted",
    :"colorId",
    :"created",
    :"creator",
    :"description",
    :"end",
    :"endTimeUnspecified",
    :"etag",
    :"extendedProperties",
    :"gadget",
    :"guestsCanInviteOthers",
    :"guestsCanModify",
    :"guestsCanSeeOtherGuests",
    :"hangoutLink",
    :"htmlLink",
    :"iCalUID",
    :"id",
    :"kind",
    :"location",
    :"locked",
    :"organizer",
    :"originalStartTime",
    :"privateCopy",
    :"recurrence",
    :"recurringEventId",
    :"reminders",
    :"sequence",
    :"source",
    :"start",
    :"status",
    :"summary",
    :"transparency",
    :"updated",
    :"visibility"
  ]
end

defimpl Poison.Decoder, for: GoogleApi.Calendar.V3.Model.Event do
  import GoogleApi.Calendar.V3.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"attachments", :list, GoogleApi.Calendar.V3.Model.EventAttachment, options)
    |> deserialize(:"attendees", :list, GoogleApi.Calendar.V3.Model.EventAttendee, options)
    |> deserialize(:"creator", :struct, GoogleApi.Calendar.V3.Model.EventCreator, options)
    |> deserialize(:"end", :struct, GoogleApi.Calendar.V3.Model.EventDateTime, options)
    |> deserialize(:"extendedProperties", :struct, GoogleApi.Calendar.V3.Model.EventExtendedProperties, options)
    |> deserialize(:"gadget", :struct, GoogleApi.Calendar.V3.Model.EventGadget, options)
    |> deserialize(:"organizer", :struct, GoogleApi.Calendar.V3.Model.EventOrganizer, options)
    |> deserialize(:"originalStartTime", :struct, GoogleApi.Calendar.V3.Model.EventDateTime, options)
    |> deserialize(:"reminders", :struct, GoogleApi.Calendar.V3.Model.EventReminders, options)
    |> deserialize(:"source", :struct, GoogleApi.Calendar.V3.Model.EventSource, options)
    |> deserialize(:"start", :struct, GoogleApi.Calendar.V3.Model.EventDateTime, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Calendar.V3.Model.Event do
  def encode(value, options) do
    GoogleApi.Calendar.V3.Deserializer.serialize_non_nil(value, options)
  end
end

