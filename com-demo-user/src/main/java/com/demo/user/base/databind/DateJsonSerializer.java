package com.demo.user.base.databind;

import cn.hutool.core.date.DateUtil;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializerProvider;

import java.io.IOException;
import java.util.Date;

/**
 *
 * json转Date
 *
 * @author Faker
 * @version 1.0
 * @since 2019-12-06 11:39:03
 */
public class DateJsonSerializer extends JsonSerializer<Date> {

    @Override
    public void serialize(Date date, JsonGenerator jsonGenerator, SerializerProvider serializerProvider)
            throws IOException {
        if (null == date) {
            jsonGenerator.writeString("");
        } else {
            jsonGenerator.writeString(DateUtil.formatDateTime(date));
        }
    }

}
