package com.google.common.reflect;

import com.google.common.annotations.Beta;
import com.google.common.annotations.VisibleForTesting;
import com.google.common.base.Preconditions;
import com.google.common.base.Splitter;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.ImmutableSet.Builder;
import com.google.common.collect.ImmutableSortedSet.Builder;
import com.google.common.collect.Maps;
import com.google.common.collect.Ordering;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLClassLoader;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map.Entry;
import java.util.jar.Attributes;
import java.util.jar.Manifest;
import java.util.logging.Logger;
import javax.annotation.Nullable;

@Beta
public final class ClassPath
{
  private static final String CLASS_FILE_NAME_EXTENSION = ".class";
  private static final Splitter CLASS_PATH_ATTRIBUTE_SEPARATOR = Splitter.on(" ").omitEmptyStrings();
  private static final Logger logger = Logger.getLogger(ClassPath.class.getName());
  private final ImmutableSet<ResourceInfo> resources;

  private ClassPath(ImmutableSet<ResourceInfo> paramImmutableSet)
  {
    this.resources = paramImmutableSet;
  }

  private static void browse(URI paramURI, ClassLoader paramClassLoader, ImmutableSet.Builder<ResourceInfo> paramBuilder)
    throws IOException
  {
    if (paramURI.getScheme().equals("file"))
      browseFrom(new File(paramURI), paramClassLoader, paramBuilder);
  }

  private static void browseDirectory(File paramFile, ClassLoader paramClassLoader, ImmutableSet.Builder<ResourceInfo> paramBuilder)
  {
    browseDirectory(paramFile, paramClassLoader, "", paramBuilder);
  }

  private static void browseDirectory(File paramFile, ClassLoader paramClassLoader, String paramString, ImmutableSet.Builder<ResourceInfo> paramBuilder)
  {
    File[] arrayOfFile = paramFile.listFiles();
    int i = arrayOfFile.length;
    int j = 0;
    if (j < i)
    {
      File localFile = arrayOfFile[j];
      String str = localFile.getName();
      if (localFile.isDirectory())
        browseDirectory(localFile, paramClassLoader, paramString + str + "/", paramBuilder);
      while (true)
      {
        j++;
        break;
        if (!str.equals("MANIFEST.MF"))
          paramBuilder.add(ResourceInfo.of(paramString + str, paramClassLoader));
      }
    }
  }

  @VisibleForTesting
  static void browseFrom(File paramFile, ClassLoader paramClassLoader, ImmutableSet.Builder<ResourceInfo> paramBuilder)
    throws IOException
  {
    if (!paramFile.exists())
      return;
    if (paramFile.isDirectory())
    {
      browseDirectory(paramFile, paramClassLoader, paramBuilder);
      return;
    }
    browseJar(paramFile, paramClassLoader, paramBuilder);
  }

  // ERROR //
  private static void browseJar(File paramFile, ClassLoader paramClassLoader, ImmutableSet.Builder<ResourceInfo> paramBuilder)
    throws IOException
  {
    // Byte code:
    //   0: new 130	java/util/jar/JarFile
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 133	java/util/jar/JarFile:<init>	(Ljava/io/File;)V
    //   8: astore_3
    //   9: aload_0
    //   10: aload_3
    //   11: invokevirtual 137	java/util/jar/JarFile:getManifest	()Ljava/util/jar/Manifest;
    //   14: invokestatic 141	com/google/common/reflect/ClassPath:getClassPathFromManifest	(Ljava/io/File;Ljava/util/jar/Manifest;)Lcom/google/common/collect/ImmutableSet;
    //   17: invokevirtual 147	com/google/common/collect/ImmutableSet:iterator	()Ljava/util/Iterator;
    //   20: astore 6
    //   22: aload 6
    //   24: invokeinterface 152 1 0
    //   29: ifeq +33 -> 62
    //   32: aload 6
    //   34: invokeinterface 156 1 0
    //   39: checkcast 58	java/net/URI
    //   42: aload_1
    //   43: aload_2
    //   44: invokestatic 158	com/google/common/reflect/ClassPath:browse	(Ljava/net/URI;Ljava/lang/ClassLoader;Lcom/google/common/collect/ImmutableSet$Builder;)V
    //   47: goto -25 -> 22
    //   50: astore 4
    //   52: aload_3
    //   53: invokevirtual 161	java/util/jar/JarFile:close	()V
    //   56: aload 4
    //   58: athrow
    //   59: astore 11
    //   61: return
    //   62: aload_3
    //   63: invokevirtual 165	java/util/jar/JarFile:entries	()Ljava/util/Enumeration;
    //   66: astore 7
    //   68: aload 7
    //   70: invokeinterface 170 1 0
    //   75: ifeq +53 -> 128
    //   78: aload 7
    //   80: invokeinterface 173 1 0
    //   85: checkcast 175	java/util/jar/JarEntry
    //   88: astore 9
    //   90: aload 9
    //   92: invokevirtual 176	java/util/jar/JarEntry:isDirectory	()Z
    //   95: ifne -27 -> 68
    //   98: aload 9
    //   100: invokevirtual 177	java/util/jar/JarEntry:getName	()Ljava/lang/String;
    //   103: ldc 179
    //   105: invokevirtual 183	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   108: ifne -40 -> 68
    //   111: aload_2
    //   112: aload 9
    //   114: invokevirtual 177	java/util/jar/JarEntry:getName	()Ljava/lang/String;
    //   117: aload_1
    //   118: invokestatic 113	com/google/common/reflect/ClassPath$ResourceInfo:of	(Ljava/lang/String;Ljava/lang/ClassLoader;)Lcom/google/common/reflect/ClassPath$ResourceInfo;
    //   121: invokevirtual 119	com/google/common/collect/ImmutableSet$Builder:add	(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet$Builder;
    //   124: pop
    //   125: goto -57 -> 68
    //   128: aload_3
    //   129: invokevirtual 161	java/util/jar/JarFile:close	()V
    //   132: return
    //   133: astore 8
    //   135: return
    //   136: astore 5
    //   138: goto -82 -> 56
    //
    // Exception table:
    //   from	to	target	type
    //   9	22	50	finally
    //   22	47	50	finally
    //   62	68	50	finally
    //   68	125	50	finally
    //   0	9	59	java/io/IOException
    //   128	132	133	java/io/IOException
    //   52	56	136	java/io/IOException
  }

  public static ClassPath from(ClassLoader paramClassLoader)
    throws IOException
  {
    ImmutableSortedSet.Builder localBuilder = new ImmutableSortedSet.Builder(Ordering.usingToString());
    Iterator localIterator = getClassPathEntries(paramClassLoader).entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      browse((URI)localEntry.getKey(), (ClassLoader)localEntry.getValue(), localBuilder);
    }
    return new ClassPath(localBuilder.build());
  }

  @VisibleForTesting
  static String getClassName(String paramString)
  {
    return paramString.substring(0, paramString.length() - ".class".length()).replace('/', '.');
  }

  @VisibleForTesting
  static ImmutableMap<URI, ClassLoader> getClassPathEntries(ClassLoader paramClassLoader)
  {
    LinkedHashMap localLinkedHashMap = Maps.newLinkedHashMap();
    ClassLoader localClassLoader = paramClassLoader.getParent();
    if (localClassLoader != null)
      localLinkedHashMap.putAll(getClassPathEntries(localClassLoader));
    if ((paramClassLoader instanceof URLClassLoader))
    {
      URL[] arrayOfURL = ((URLClassLoader)paramClassLoader).getURLs();
      int i = arrayOfURL.length;
      int j = 0;
      while (j < i)
      {
        URL localURL = arrayOfURL[j];
        try
        {
          URI localURI = localURL.toURI();
          if (!localLinkedHashMap.containsKey(localURI))
            localLinkedHashMap.put(localURI, paramClassLoader);
          j++;
        }
        catch (URISyntaxException localURISyntaxException)
        {
          throw new IllegalArgumentException(localURISyntaxException);
        }
      }
    }
    return ImmutableMap.copyOf(localLinkedHashMap);
  }

  @VisibleForTesting
  static URI getClassPathEntry(File paramFile, String paramString)
    throws URISyntaxException
  {
    URI localURI = new URI(paramString);
    if (localURI.isAbsolute())
      return localURI;
    return new File(paramFile.getParentFile(), paramString.replace('/', File.separatorChar)).toURI();
  }

  @VisibleForTesting
  static ImmutableSet<URI> getClassPathFromManifest(File paramFile, @Nullable Manifest paramManifest)
  {
    if (paramManifest == null)
      return ImmutableSet.of();
    ImmutableSet.Builder localBuilder = ImmutableSet.builder();
    String str1 = paramManifest.getMainAttributes().getValue("Class-Path");
    if (str1 != null)
    {
      Iterator localIterator = CLASS_PATH_ATTRIBUTE_SEPARATOR.split(str1).iterator();
      while (localIterator.hasNext())
      {
        String str2 = (String)localIterator.next();
        try
        {
          URI localURI = getClassPathEntry(paramFile, str2);
          localBuilder.add(localURI);
        }
        catch (URISyntaxException localURISyntaxException)
        {
          logger.warning("Invalid Class-Path entry: " + str2);
        }
      }
    }
    return localBuilder.build();
  }

  public ImmutableSet<ResourceInfo> getResources()
  {
    return this.resources;
  }

  public ImmutableSet<ClassInfo> getTopLevelClasses()
  {
    ImmutableSet.Builder localBuilder = ImmutableSet.builder();
    Iterator localIterator = this.resources.iterator();
    while (localIterator.hasNext())
    {
      ResourceInfo localResourceInfo = (ResourceInfo)localIterator.next();
      if ((localResourceInfo instanceof ClassInfo))
        localBuilder.add((ClassInfo)localResourceInfo);
    }
    return localBuilder.build();
  }

  public ImmutableSet<ClassInfo> getTopLevelClasses(String paramString)
  {
    Preconditions.checkNotNull(paramString);
    ImmutableSet.Builder localBuilder = ImmutableSet.builder();
    Iterator localIterator = getTopLevelClasses().iterator();
    while (localIterator.hasNext())
    {
      ClassInfo localClassInfo = (ClassInfo)localIterator.next();
      if (localClassInfo.getPackageName().equals(paramString))
        localBuilder.add(localClassInfo);
    }
    return localBuilder.build();
  }

  public ImmutableSet<ClassInfo> getTopLevelClassesRecursive(String paramString)
  {
    Preconditions.checkNotNull(paramString);
    String str = paramString + '.';
    ImmutableSet.Builder localBuilder = ImmutableSet.builder();
    Iterator localIterator = getTopLevelClasses().iterator();
    while (localIterator.hasNext())
    {
      ClassInfo localClassInfo = (ClassInfo)localIterator.next();
      if (localClassInfo.getName().startsWith(str))
        localBuilder.add(localClassInfo);
    }
    return localBuilder.build();
  }

  @Beta
  public static final class ClassInfo extends ClassPath.ResourceInfo
  {
    private final String className;

    ClassInfo(String paramString, ClassLoader paramClassLoader)
    {
      super(paramClassLoader);
      this.className = ClassPath.getClassName(paramString);
    }

    public String getName()
    {
      return this.className;
    }

    public String getPackageName()
    {
      return Reflection.getPackageName(this.className);
    }

    public String getSimpleName()
    {
      String str = getPackageName();
      if (str.length() == 0)
        return this.className;
      return this.className.substring(1 + str.length());
    }

    public Class<?> load()
    {
      try
      {
        Class localClass = this.loader.loadClass(this.className);
        return localClass;
      }
      catch (ClassNotFoundException localClassNotFoundException)
      {
        throw new IllegalStateException(localClassNotFoundException);
      }
    }

    public String toString()
    {
      return this.className;
    }
  }

  @Beta
  public static class ResourceInfo
  {
    final ClassLoader loader;
    private final String resourceName;

    ResourceInfo(String paramString, ClassLoader paramClassLoader)
    {
      this.resourceName = ((String)Preconditions.checkNotNull(paramString));
      this.loader = ((ClassLoader)Preconditions.checkNotNull(paramClassLoader));
    }

    static ResourceInfo of(String paramString, ClassLoader paramClassLoader)
    {
      if ((paramString.endsWith(".class")) && (!paramString.contains("$")))
        return new ClassPath.ClassInfo(paramString, paramClassLoader);
      return new ResourceInfo(paramString, paramClassLoader);
    }

    public boolean equals(Object paramObject)
    {
      boolean bool1 = paramObject instanceof ResourceInfo;
      boolean bool2 = false;
      if (bool1)
      {
        ResourceInfo localResourceInfo = (ResourceInfo)paramObject;
        boolean bool3 = this.resourceName.equals(localResourceInfo.resourceName);
        bool2 = false;
        if (bool3)
        {
          ClassLoader localClassLoader1 = this.loader;
          ClassLoader localClassLoader2 = localResourceInfo.loader;
          bool2 = false;
          if (localClassLoader1 == localClassLoader2)
            bool2 = true;
        }
      }
      return bool2;
    }

    public final String getResourceName()
    {
      return this.resourceName;
    }

    public int hashCode()
    {
      return this.resourceName.hashCode();
    }

    public String toString()
    {
      return this.resourceName;
    }

    public final URL url()
    {
      URL localURL = this.loader.getResource(this.resourceName);
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.resourceName;
      return (URL)Preconditions.checkNotNull(localURL, "Failed to load resource: %s", arrayOfObject);
    }
  }
}

/* Location:           /home/phil/workspace/glass_hello_world/libs/GlassVoice-dex2jar.jar
 * Qualified Name:     com.google.common.reflect.ClassPath
 * JD-Core Version:    0.6.2
 */