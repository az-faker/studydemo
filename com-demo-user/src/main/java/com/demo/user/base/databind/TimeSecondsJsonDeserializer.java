package com.demo.user.base.databind;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;

import java.io.IOException;
import java.util.Date;

/**
 *
 * 长整型的秒转HaoDate
 *
 * @author Faker
 * @version 1.0
 * @since 2019-12-06 11:39:03
 */
public class TimeSecondsJsonDeserializer extends JsonDeserializer<Date> {

    @Override
    public Date deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        Long source = Long.valueOf(jsonParser.getText());
        return new Date(source * 1000);
    }

}