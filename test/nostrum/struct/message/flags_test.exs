defmodule Nostrum.Struct.Message.FlagsTest do
  use ExUnit.Case, async: true

  alias Nostrum.Struct.Message.Flags

  doctest Flags

  describe "test flag serialise deserialise" do
    test "from_integer/1" do
      flags = Flags.from_integer(258)

      assert(crossposted == false)
      assert(is_crosspost == true)
      assert(suppress_embeds == false)
      assert(source_message_deleted == false)
      assert(urgent == false)
      assert(has_thread == false)
      assert(ephemeral == false)
      assert(loading == false)
      assert(failed_to_mention_some_roles_in_thread == true)
      assert(suppress_notifications == false)
      assert(is_voice_message == false)
      assert(has_snapshot == false)
      assert(is_components_v2 == false)
    end

    test "to_integer/1" do
      %Flags{
        crossposted: false,
        is_crosspost: true,
        suppress_embeds: false,
        source_message_deleted: false,
        urgent: false,
        has_thread: false,
        ephemeral: false,
        loading: false,
        failed_to_mention_some_roles_in_thread: true,
        suppress_notifications: false,
        is_voice_message: false,
        has_snapshot: false,
        is_components_v2: false
      }

      assert(Flags.to_integer(flags) == 258)
    end
  end
end
