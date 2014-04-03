.class final Lcom/google/glass/logging/StackTraceUtils;
.super Ljava/lang/Object;
.source "StackTraceUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallerClassName(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 7
    .parameter "throwable"
    .parameter "skipFrameCount"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 28
    const-string v1, "null throwable"

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    if-ltz p1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "skipFrameCount must be >= 0, was: [%s]"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v1, v4, v5}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 32
    .local v0, stackTraceElement:[Ljava/lang/StackTraceElement;
    array-length v1, v0

    add-int/lit8 v4, p1, 0x1

    if-lt v1, v4, :cond_1

    move v1, v2

    :goto_1
    const-string v4, "Unexpected stack trace length (should be >= %s): [%s]"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v2

    invoke-static {v1, v4, v5}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 37
    aget-object v1, v0, p1

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .end local v0           #stackTraceElement:[Ljava/lang/StackTraceElement;
    :cond_0
    move v1, v3

    .line 29
    goto :goto_0

    .restart local v0       #stackTraceElement:[Ljava/lang/StackTraceElement;
    :cond_1
    move v1, v3

    .line 32
    goto :goto_1
.end method

.method public static getSimpleClassName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "fullClassName"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-static {p0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    const-string v4, "null or empty fullClassName"

    invoke-static {v1, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 50
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, simpleClassName:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    move v1, v2

    :goto_2
    const-string v4, "empty simple class name for : [%s]"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-static {v1, v4, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-object v0

    .end local v0           #simpleClassName:Ljava/lang/String;
    :cond_0
    move v1, v3

    .line 49
    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 50
    goto :goto_1

    .restart local v0       #simpleClassName:Ljava/lang/String;
    :cond_2
    move v1, v3

    .line 53
    goto :goto_2
.end method
