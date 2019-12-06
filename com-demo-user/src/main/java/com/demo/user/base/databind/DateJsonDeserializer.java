package com.demo.user.base.databind;

import cn.hutool.core.date.DateUtil;
import cn.hutool.core.util.StrUtil;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;

import java.io.IOException;
import java.util.Date;

/**
 *
 * Date转json
 *
 * @author Faker
 * @version 1.0
 * @since 2019-12-06 11:39:03
 */
public class DateJsonDeserializer extends JsonDeserializer<Date> {

    @Override
    public Date deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
        String source = jsonParser.getText();
        if (StrUtil.isEmpty(source)) {
            return null;
        }
        return DateUtil.parseDateTime(source);
    }

}
