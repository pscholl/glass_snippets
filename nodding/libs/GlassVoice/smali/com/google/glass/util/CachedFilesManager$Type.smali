.class public final enum Lcom/google/glass/util/CachedFilesManager$Type;
.super Ljava/lang/Enum;
.source "CachedFilesManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/CachedFilesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/glass/util/CachedFilesManager$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/glass/util/CachedFilesManager$Type;

.field public static final enum ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

.field public static final enum AUDIO:Lcom/google/glass/util/CachedFilesManager$Type;

.field public static final enum BUG_REPORT:Lcom/google/glass/util/CachedFilesManager$Type;

.field public static final enum BUNDLE_STORE:Lcom/google/glass/util/CachedFilesManager$Type;

.field public static final enum GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

.field public static final enum HTML:Lcom/google/glass/util/CachedFilesManager$Type;

.field public static final enum ICON:Lcom/google/glass/util/CachedFilesManager$Type;

.field public static final enum NONE:Lcom/google/glass/util/CachedFilesManager$Type;

.field public static final enum PICTURE:Lcom/google/glass/util/CachedFilesManager$Type;

.field public static final enum PROTO_BUFFER:Lcom/google/glass/util/CachedFilesManager$Type;

.field public static final enum SCREENSHOT:Lcom/google/glass/util/CachedFilesManager$Type;

.field public static final enum SHARE:Lcom/google/glass/util/CachedFilesManager$Type;

.field public static final enum THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

.field public static final enum VIDEO:Lcom/google/glass/util/CachedFilesManager$Type;


# instance fields
.field public prefix:Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 51
    new-instance v0, Lcom/google/glass/util/CachedFilesManager$Type;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, Lcom/google/glass/util/CachedFilesManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->NONE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 52
    new-instance v0, Lcom/google/glass/util/CachedFilesManager$Type;

    const-string v1, "ATTACHMENT"

    const-string v2, "a_"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/glass/util/CachedFilesManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 53
    new-instance v0, Lcom/google/glass/util/CachedFilesManager$Type;

    const-string v1, "AUDIO"

    const-string v2, "o_"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/glass/util/CachedFilesManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->AUDIO:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 54
    new-instance v0, Lcom/google/glass/util/CachedFilesManager$Type;

    const-string v1, "BUG_REPORT"

    const-string v2, "b_"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/glass/util/CachedFilesManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->BUG_REPORT:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 55
    new-instance v0, Lcom/google/glass/util/CachedFilesManager$Type;

    const-string v1, "BUNDLE_STORE"

    const-string v2, "bs_"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/glass/util/CachedFilesManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->BUNDLE_STORE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 56
    new-instance v0, Lcom/google/glass/util/CachedFilesManager$Type;

    const-string v1, "GLASSWARE_ICON"

    const/4 v2, 0x5

    const-string v3, "gi_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 57
    new-instance v0, Lcom/google/glass/util/CachedFilesManager$Type;

    const-string v1, "HTML"

    const/4 v2, 0x6

    const-string v3, "h_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->HTML:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 58
    new-instance v0, Lcom/google/glass/util/CachedFilesManager$Type;

    const-string v1, "ICON"

    const/4 v2, 0x7

    const-string v3, "i_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 59
    new-instance v0, Lcom/google/glass/util/CachedFilesManager$Type;

    const-string v1, "PICTURE"

    const/16 v2, 0x8

    const-string v3, "p_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->PICTURE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 60
    new-instance v0, Lcom/google/glass/util/CachedFilesManager$Type;

    const-string v1, "PROTO_BUFFER"

    const/16 v2, 0x9

    const-string v3, "pb_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->PROTO_BUFFER:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 61
    new-instance v0, Lcom/google/glass/util/CachedFilesManager$Type;

    const-string v1, "SCREENSHOT"

    const/16 v2, 0xa

    const-string v3, "ss_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->SCREENSHOT:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 62
    new-instance v0, Lcom/google/glass/util/CachedFilesManager$Type;

    const-string v1, "SHARE"

    const/16 v2, 0xb

    const-string v3, "s_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->SHARE:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 63
    new-instance v0, Lcom/google/glass/util/CachedFilesManager$Type;

    const-string v1, "THUMBNAIL"

    const/16 v2, 0xc

    const-string v3, "t_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 64
    new-instance v0, Lcom/google/glass/util/CachedFilesManager$Type;

    const-string v1, "VIDEO"

    const/16 v2, 0xd

    const-string v3, "v_"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/util/CachedFilesManager$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->VIDEO:Lcom/google/glass/util/CachedFilesManager$Type;

    .line 50
    const/16 v0, 0xe

    new-array v0, v0, [Lcom/google/glass/util/CachedFilesManager$Type;

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->NONE:Lcom/google/glass/util/CachedFilesManager$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->ATTACHMENT:Lcom/google/glass/util/CachedFilesManager$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->AUDIO:Lcom/google/glass/util/CachedFilesManager$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->BUG_REPORT:Lcom/google/glass/util/CachedFilesManager$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/glass/util/CachedFilesManager$Type;->BUNDLE_STORE:Lcom/google/glass/util/CachedFilesManager$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->GLASSWARE_ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->HTML:Lcom/google/glass/util/CachedFilesManager$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->ICON:Lcom/google/glass/util/CachedFilesManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->PICTURE:Lcom/google/glass/util/CachedFilesManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->PROTO_BUFFER:Lcom/google/glass/util/CachedFilesManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->SCREENSHOT:Lcom/google/glass/util/CachedFilesManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->SHARE:Lcom/google/glass/util/CachedFilesManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->THUMBNAIL:Lcom/google/glass/util/CachedFilesManager$Type;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/google/glass/util/CachedFilesManager$Type;->VIDEO:Lcom/google/glass/util/CachedFilesManager$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->$VALUES:[Lcom/google/glass/util/CachedFilesManager$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 71
    iput-object p3, p0, Lcom/google/glass/util/CachedFilesManager$Type;->prefix:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;
    .locals 6
    .parameter "fileName"

    .prologue
    .line 75
    invoke-static {}, Lcom/google/glass/util/CachedFilesManager$Type;->values()[Lcom/google/glass/util/CachedFilesManager$Type;

    move-result-object v0

    .local v0, arr$:[Lcom/google/glass/util/CachedFilesManager$Type;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    .line 76
    .local v4, type:Lcom/google/glass/util/CachedFilesManager$Type;
    iget-object v3, v4, Lcom/google/glass/util/CachedFilesManager$Type;->prefix:Ljava/lang/String;

    .line 77
    .local v3, prefix:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    .end local v3           #prefix:Ljava/lang/String;
    .end local v4           #type:Lcom/google/glass/util/CachedFilesManager$Type;
    :goto_1
    return-object v4

    .line 75
    .restart local v3       #prefix:Ljava/lang/String;
    .restart local v4       #type:Lcom/google/glass/util/CachedFilesManager$Type;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    .end local v3           #prefix:Ljava/lang/String;
    .end local v4           #type:Lcom/google/glass/util/CachedFilesManager$Type;
    :cond_1
    sget-object v4, Lcom/google/glass/util/CachedFilesManager$Type;->NONE:Lcom/google/glass/util/CachedFilesManager$Type;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/glass/util/CachedFilesManager$Type;
    .locals 1
    .parameter "name"

    .prologue
    .line 50
    const-class v0, Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/glass/util/CachedFilesManager$Type;

    return-object v0
.end method

.method public static values()[Lcom/google/glass/util/CachedFilesManager$Type;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/google/glass/util/CachedFilesManager$Type;->$VALUES:[Lcom/google/glass/util/CachedFilesManager$Type;

    invoke-virtual {v0}, [Lcom/google/glass/util/CachedFilesManager$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/glass/util/CachedFilesManager$Type;

    return-object v0
.end method
