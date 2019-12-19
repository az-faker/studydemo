package com.demo.user.databind;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;

import java.util.Collections;
import java.util.Map;

public class SpacePhoneContentDeserializer extends JsonDeserializer<Map<Long, String>> {

    @Override
    public Map<Long, String> deserialize(JsonParser jsonParser, DeserializationContext context) {
        try {
            return jsonParser.readValueAs(new TypeReference<Map<Long, String>>() {
            });
        } catch (Exception e) {
            return Collections.emptyMap();
        }
    }

}
