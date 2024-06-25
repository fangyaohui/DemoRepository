package com.example.annotationdemo.processor;

import com.example.annotationdemo.annotation.Data;
import com.google.auto.service.AutoService;
import lombok.extern.slf4j.Slf4j;

import javax.annotation.processing.*;
import javax.lang.model.SourceVersion;
import javax.lang.model.element.Element;
import javax.lang.model.element.TypeElement;
import java.util.Set;

/**
 * @author fangyaohui
 * @version 0.0.3
 * @description DataProcessor
 * @since 2024/6/25 21:10
 */

// 该注解省去了手动在/resources/META-INF/services/下创建javax.annotation.processing.Processor文件
@AutoService(Processor.class)
@Slf4j
@SupportedAnnotationTypes("Data")
@SupportedSourceVersion(SourceVersion.RELEASE_8)
public class DataProcessor extends AbstractProcessor {


    @Override
    public boolean process(Set<? extends TypeElement> annotations, RoundEnvironment roundEnv) {

        Set<? extends Element> elements = roundEnv.getElementsAnnotatedWith(Data.class);
        for (Element element : elements){
            log.info("当前类=" + element.getSimpleName());
            String fieldName = element.getSimpleName().toString();
            log.info("fieldName = " + fieldName);
            String capitalizedFieldName = fieldName.substring(0,1).toUpperCase() + fieldName.substring(1);
            log.info("capitalizedFieldName = " + capitalizedFieldName);


        }

        return false;
    }
}