package com.google.common.reflect;

import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Objects;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableList.Builder;
import com.google.common.collect.Iterables;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.Nullable;

final class Types
{
  private static final Joiner COMMA_JOINER = Joiner.on(", ").useForNull("null");
  private static final Function<Type, String> TYPE_TO_STRING = new Function()
  {
    public String apply(Type paramAnonymousType)
    {
      return Types.toString(paramAnonymousType);
    }
  };

  static boolean containsTypeVariable(@Nullable Type paramType)
  {
    boolean bool2;
    if ((paramType instanceof TypeVariable))
      bool2 = true;
    boolean bool3;
    do
    {
      boolean bool1;
      do
      {
        return bool2;
        if ((paramType instanceof GenericArrayType))
          return containsTypeVariable(((GenericArrayType)paramType).getGenericComponentType());
        if ((paramType instanceof ParameterizedType))
          return containsTypeVariable(((ParameterizedType)paramType).getActualTypeArguments());
        bool1 = paramType instanceof WildcardType;
        bool2 = false;
      }
      while (!bool1);
      WildcardType localWildcardType = (WildcardType)paramType;
      if (containsTypeVariable(localWildcardType.getUpperBounds()))
        break;
      bool3 = containsTypeVariable(localWildcardType.getLowerBounds());
      bool2 = false;
    }
    while (!bool3);
    return true;
  }

  private static boolean containsTypeVariable(Type[] paramArrayOfType)
  {
    int i = paramArrayOfType.length;
    for (int j = 0; j < i; j++)
      if (containsTypeVariable(paramArrayOfType[j]))
        return true;
    return false;
  }

  private static void disallowPrimitiveType(Type[] paramArrayOfType, String paramString)
  {
    int i = paramArrayOfType.length;
    int j = 0;
    if (j < i)
    {
      Type localType = paramArrayOfType[j];
      Class localClass;
      if ((localType instanceof Class))
      {
        localClass = (Class)localType;
        if (localClass.isPrimitive())
          break label67;
      }
      label67: for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool, "Primitive type '%s' used as %s", new Object[] { localClass, paramString });
        j++;
        break;
      }
    }
  }

  private static Iterable<Type> filterUpperBounds(Iterable<Type> paramIterable)
  {
    return Iterables.filter(paramIterable, Predicates.not(Predicates.equalTo(Object.class)));
  }

  static Class<?> getArrayClass(Class<?> paramClass)
  {
    return Array.newInstance(paramClass, 0).getClass();
  }

  @Nullable
  static Type getComponentType(Type paramType)
  {
    Preconditions.checkNotNull(paramType);
    if ((paramType instanceof Class))
      return ((Class)paramType).getComponentType();
    if ((paramType instanceof GenericArrayType))
      return ((GenericArrayType)paramType).getGenericComponentType();
    if ((paramType instanceof WildcardType))
      return subtypeOfComponentType(((WildcardType)paramType).getUpperBounds());
    if ((paramType instanceof TypeVariable))
      return subtypeOfComponentType(((TypeVariable)paramType).getBounds());
    return null;
  }

  static Type newArrayType(Type paramType)
  {
    int i = 1;
    if ((paramType instanceof WildcardType))
    {
      WildcardType localWildcardType = (WildcardType)paramType;
      Type[] arrayOfType1 = localWildcardType.getLowerBounds();
      if (arrayOfType1.length <= i);
      int m;
      for (int k = i; ; m = 0)
      {
        Preconditions.checkArgument(k, "Wildcard cannot have more than one lower bounds.");
        if (arrayOfType1.length != i)
          break;
        return supertypeOf(newArrayType(arrayOfType1[0]));
      }
      Type[] arrayOfType2 = localWildcardType.getUpperBounds();
      if (arrayOfType2.length == i);
      while (true)
      {
        Preconditions.checkArgument(i, "Wildcard should have only one upper bound.");
        return subtypeOf(newArrayType(arrayOfType2[0]));
        int j = 0;
      }
    }
    return JavaVersion.CURRENT.newArrayType(paramType);
  }

  static ParameterizedType newParameterizedType(Class<?> paramClass, Type[] paramArrayOfType)
  {
    return new ParameterizedTypeImpl(ClassOwnership.JVM_BEHAVIOR.getOwnerType(paramClass), paramClass, paramArrayOfType);
  }

  static ParameterizedType newParameterizedTypeWithOwner(@Nullable Type paramType, Class<?> paramClass, Type[] paramArrayOfType)
  {
    if (paramType == null)
      return newParameterizedType(paramClass, paramArrayOfType);
    Preconditions.checkNotNull(paramArrayOfType);
    if (paramClass.getEnclosingClass() != null);
    for (boolean bool = true; ; bool = false)
    {
      Preconditions.checkArgument(bool, "Owner type for unenclosed %s", new Object[] { paramClass });
      return new ParameterizedTypeImpl(paramType, paramClass, paramArrayOfType);
    }
  }

  static <D extends GenericDeclaration> TypeVariable<D> newTypeVariable(D paramD, String paramString, Type[] paramArrayOfType)
  {
    if (paramArrayOfType.length == 0)
    {
      paramArrayOfType = new Type[1];
      paramArrayOfType[0] = Object.class;
    }
    return new TypeVariableImpl(paramD, paramString, paramArrayOfType);
  }

  @VisibleForTesting
  static WildcardType subtypeOf(Type paramType)
  {
    return new WildcardTypeImpl(new Type[0], new Type[] { paramType });
  }

  @Nullable
  private static Type subtypeOfComponentType(Type[] paramArrayOfType)
  {
    int i = paramArrayOfType.length;
    for (int j = 0; j < i; j++)
    {
      Type localType = getComponentType(paramArrayOfType[j]);
      if (localType != null)
      {
        if ((localType instanceof Class))
        {
          Class localClass = (Class)localType;
          if (localClass.isPrimitive())
            return localClass;
        }
        return subtypeOf(localType);
      }
    }
    return null;
  }

  @VisibleForTesting
  static WildcardType supertypeOf(Type paramType)
  {
    return new WildcardTypeImpl(new Type[] { paramType }, new Type[] { Object.class });
  }

  private static Type[] toArray(Collection<Type> paramCollection)
  {
    return (Type[])paramCollection.toArray(new Type[paramCollection.size()]);
  }

  static String toString(Type paramType)
  {
    if ((paramType instanceof Class))
      return ((Class)paramType).getName();
    return paramType.toString();
  }

  private static abstract enum ClassOwnership
  {
    static final ClassOwnership JVM_BEHAVIOR = detectJvmBehavior();

    static
    {
      // Byte code:
      //   0: new 15	com/google/common/reflect/Types$ClassOwnership$1
      //   3: dup
      //   4: ldc 16
      //   6: iconst_0
      //   7: invokespecial 20	com/google/common/reflect/Types$ClassOwnership$1:<init>	(Ljava/lang/String;I)V
      //   10: putstatic 22	com/google/common/reflect/Types$ClassOwnership:OWNED_BY_ENCLOSING_CLASS	Lcom/google/common/reflect/Types$ClassOwnership;
      //   13: new 24	com/google/common/reflect/Types$ClassOwnership$2
      //   16: dup
      //   17: ldc 25
      //   19: iconst_1
      //   20: invokespecial 26	com/google/common/reflect/Types$ClassOwnership$2:<init>	(Ljava/lang/String;I)V
      //   23: putstatic 28	com/google/common/reflect/Types$ClassOwnership:LOCAL_CLASS_HAS_NO_OWNER	Lcom/google/common/reflect/Types$ClassOwnership;
      //   26: iconst_2
      //   27: anewarray 2	com/google/common/reflect/Types$ClassOwnership
      //   30: astore_0
      //   31: aload_0
      //   32: iconst_0
      //   33: getstatic 22	com/google/common/reflect/Types$ClassOwnership:OWNED_BY_ENCLOSING_CLASS	Lcom/google/common/reflect/Types$ClassOwnership;
      //   36: aastore
      //   37: aload_0
      //   38: iconst_1
      //   39: getstatic 28	com/google/common/reflect/Types$ClassOwnership:LOCAL_CLASS_HAS_NO_OWNER	Lcom/google/common/reflect/Types$ClassOwnership;
      //   42: aastore
      //   43: aload_0
      //   44: putstatic 30	com/google/common/reflect/Types$ClassOwnership:$VALUES	[Lcom/google/common/reflect/Types$ClassOwnership;
      //   47: invokestatic 34	com/google/common/reflect/Types$ClassOwnership:detectJvmBehavior	()Lcom/google/common/reflect/Types$ClassOwnership;
      //   50: putstatic 36	com/google/common/reflect/Types$ClassOwnership:JVM_BEHAVIOR	Lcom/google/common/reflect/Types$ClassOwnership;
      //   53: return
    }

    private static ClassOwnership detectJvmBehavior()
    {
      ParameterizedType localParameterizedType = (ParameterizedType)new 1LocalClass()
      {
      }
      .getClass().getGenericSuperclass();
      for (ClassOwnership localClassOwnership : values())
        if (localClassOwnership.getOwnerType(1LocalClass.class) == localParameterizedType.getOwnerType())
          return localClassOwnership;
      throw new AssertionError();
    }

    @Nullable
    abstract Class<?> getOwnerType(Class<?> paramClass);
  }

  private static final class GenericArrayTypeImpl
    implements GenericArrayType, Serializable
  {
    private static final long serialVersionUID;
    private final Type componentType;

    GenericArrayTypeImpl(Type paramType)
    {
      this.componentType = Types.JavaVersion.CURRENT.usedInGenericType(paramType);
    }

    public boolean equals(Object paramObject)
    {
      if ((paramObject instanceof Serializable))
      {
        GenericArrayType localGenericArrayType = (Serializable)paramObject;
        return Objects.equal(getGenericComponentType(), localGenericArrayType.getGenericComponentType());
      }
      return false;
    }

    public Type getGenericComponentType()
    {
      return this.componentType;
    }

    public int hashCode()
    {
      return this.componentType.hashCode();
    }

    public String toString()
    {
      return Types.toString(this.componentType) + "[]";
    }
  }

  static abstract enum JavaVersion
  {
    static final JavaVersion CURRENT;

    static
    {
      JavaVersion[] arrayOfJavaVersion = new JavaVersion[2];
      arrayOfJavaVersion[0] = JAVA6;
      arrayOfJavaVersion[1] = JAVA7;
      $VALUES = arrayOfJavaVersion;
      if ((new TypeCapture()
      {
      }
      .capture() instanceof Class));
      for (JavaVersion localJavaVersion = JAVA7; ; localJavaVersion = JAVA6)
      {
        CURRENT = localJavaVersion;
        return;
      }
    }

    abstract Type newArrayType(Type paramType);

    final ImmutableList<Type> usedInGenericType(Type[] paramArrayOfType)
    {
      ImmutableList.Builder localBuilder = ImmutableList.builder();
      int i = paramArrayOfType.length;
      for (int j = 0; j < i; j++)
        localBuilder.add(usedInGenericType(paramArrayOfType[j]));
      return localBuilder.build();
    }

    abstract Type usedInGenericType(Type paramType);
  }

  private static final class ParameterizedTypeImpl
    implements ParameterizedType, Serializable
  {
    private static final long serialVersionUID;
    private final ImmutableList<Type> argumentsList;
    private final Type ownerType;
    private final Class<?> rawType;

    ParameterizedTypeImpl(@Nullable Type paramType, Class<?> paramClass, Type[] paramArrayOfType)
    {
      Preconditions.checkNotNull(paramClass);
      if (paramArrayOfType.length == paramClass.getTypeParameters().length);
      for (boolean bool = true; ; bool = false)
      {
        Preconditions.checkArgument(bool);
        Types.disallowPrimitiveType(paramArrayOfType, "type parameter");
        this.ownerType = paramType;
        this.rawType = paramClass;
        this.argumentsList = Types.JavaVersion.CURRENT.usedInGenericType(paramArrayOfType);
        return;
      }
    }

    public boolean equals(Object paramObject)
    {
      if (!(paramObject instanceof Serializable));
      ParameterizedType localParameterizedType;
      do
      {
        return false;
        localParameterizedType = (Serializable)paramObject;
      }
      while ((!getRawType().equals(localParameterizedType.getRawType())) || (!Objects.equal(getOwnerType(), localParameterizedType.getOwnerType())) || (!Arrays.equals(getActualTypeArguments(), localParameterizedType.getActualTypeArguments())));
      return true;
    }

    public Type[] getActualTypeArguments()
    {
      return Types.toArray(this.argumentsList);
    }

    public Type getOwnerType()
    {
      return this.ownerType;
    }

    public Type getRawType()
    {
      return this.rawType;
    }

    public int hashCode()
    {
      if (this.ownerType == null);
      for (int i = 0; ; i = this.ownerType.hashCode())
        return i ^ this.argumentsList.hashCode() ^ this.rawType.hashCode();
    }

    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder();
      if (this.ownerType != null)
        localStringBuilder.append(Types.toString(this.ownerType)).append('.');
      localStringBuilder.append(this.rawType.getName()).append('<').append(Types.COMMA_JOINER.join(Iterables.transform(this.argumentsList, Types.TYPE_TO_STRING))).append('>');
      return localStringBuilder.toString();
    }
  }

  private static final class TypeVariableImpl<D extends GenericDeclaration>
    implements TypeVariable<D>
  {
    private final ImmutableList<Type> bounds;
    private final D genericDeclaration;
    private final String name;

    TypeVariableImpl(D paramD, String paramString, Type[] paramArrayOfType)
    {
      Types.disallowPrimitiveType(paramArrayOfType, "bound for type variable");
      this.genericDeclaration = ((GenericDeclaration)Preconditions.checkNotNull(paramD));
      this.name = ((String)Preconditions.checkNotNull(paramString));
      this.bounds = ImmutableList.copyOf(paramArrayOfType);
    }

    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof TypeVariable;
      boolean bool2 = false;
      if (bool1)
      {
        TypeVariable localTypeVariable = (TypeVariable)paramObject;
        boolean bool3 = this.name.equals(localTypeVariable.getName());
        bool2 = false;
        if (bool3)
        {
          boolean bool4 = this.genericDeclaration.equals(localTypeVariable.getGenericDeclaration());
          bool2 = false;
          if (bool4)
            bool2 = true;
        }
      }
      return bool2;
    }

    public Type[] getBounds()
    {
      return Types.toArray(this.bounds);
    }

    public D getGenericDeclaration()
    {
      return this.genericDeclaration;
    }

    public String getName()
    {
      return this.name;
    }

    public int hashCode()
    {
      return this.genericDeclaration.hashCode() ^ this.name.hashCode();
    }

    public String toString()
    {
      return this.name;
    }
  }

  static final class WildcardTypeImpl
    implements WildcardType, Serializable
  {
    private static final long serialVersionUID;
    private final ImmutableList<Type> lowerBounds;
    private final ImmutableList<Type> upperBounds;

    WildcardTypeImpl(Type[] paramArrayOfType1, Type[] paramArrayOfType2)
    {
      Types.disallowPrimitiveType(paramArrayOfType1, "lower bound for wildcard");
      Types.disallowPrimitiveType(paramArrayOfType2, "upper bound for wildcard");
      this.lowerBounds = Types.JavaVersion.CURRENT.usedInGenericType(paramArrayOfType1);
      this.upperBounds = Types.JavaVersion.CURRENT.usedInGenericType(paramArrayOfType2);
    }

    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof Serializable;
      boolean bool2 = false;
      if (bool1)
      {
        WildcardType localWildcardType = (Serializable)paramObject;
        boolean bool3 = this.lowerBounds.equals(Arrays.asList(localWildcardType.getLowerBounds()));
        bool2 = false;
        if (bool3)
        {
          boolean bool4 = this.upperBounds.equals(Arrays.asList(localWildcardType.getUpperBounds()));
          bool2 = false;
          if (bool4)
            bool2 = true;
        }
      }
      return bool2;
    }

    public Type[] getLowerBounds()
    {
      return Types.toArray(this.lowerBounds);
    }

    public Type[] getUpperBounds()
    {
      return Types.toArray(this.upperBounds);
    }

    public int hashCode()
    {
      return this.lowerBounds.hashCode() ^ this.upperBounds.hashCode();
    }

    public String toString()
    {
      StringBuilder localStringBuilder = new StringBuilder("?");
      Iterator localIterator1 = this.lowerBounds.iterator();
      while (localIterator1.hasNext())
      {
        Type localType2 = (Type)localIterator1.next();
        localStringBuilder.append(" super ").append(Types.toString(localType2));
      }
      Iterator localIterator2 = Types.filterUpperBounds(this.upperBounds).iterator();
      while (localIterator2.hasNext())
      {
        Type localType1 = (Type)localIterator2.next();
        localStringBuilder.append(" extends ").append(Types.toString(localType1));
      }
      return localStringBuilder.toString();
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.reflect.Types
 * JD-Core Version:    0.6.2
 */