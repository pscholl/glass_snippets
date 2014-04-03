package com.google.common.annotations;

import java.lang.annotation.Annotation;
import java.lang.annotation.Documented;
import java.lang.annotation.Target;

@Documented
@Target({java.lang.annotation.ElementType.PARAMETER})
@GoogleInternal
@GwtCompatible
public @interface CompileTimeConstant
{
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.annotations.CompileTimeConstant
 * JD-Core Version:    0.6.2
 */