.class public final Lcom/google/common/base/Predicates;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/common/base/x;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ","

    invoke-static {v0}, Lcom/google/common/base/x;->a(Ljava/lang/String;)Lcom/google/common/base/x;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/Predicates;->a:Lcom/google/common/base/x;

    return-void
.end method

.method public static a()Lcom/google/common/base/aj;
    .locals 1

    sget-object v0, Lcom/google/common/base/Predicates$ObjectPredicate;->ALWAYS_TRUE:Lcom/google/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lcom/google/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lcom/google/common/base/aj;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/google/common/base/aj;)Lcom/google/common/base/aj;
    .locals 1

    new-instance v0, Lcom/google/common/base/Predicates$NotPredicate;

    invoke-direct {v0, p0}, Lcom/google/common/base/Predicates$NotPredicate;-><init>(Lcom/google/common/base/aj;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/base/aj;
    .locals 2

    if-nez p0, :cond_0

    invoke-static {}, Lcom/google/common/base/Predicates;->c()Lcom/google/common/base/aj;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/base/Predicates$IsEqualToPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$IsEqualToPredicate;-><init>(Ljava/lang/Object;Lcom/google/common/base/ak;)V

    goto :goto_0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/common/base/aj;
    .locals 2

    new-instance v0, Lcom/google/common/base/Predicates$InPredicate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/base/Predicates$InPredicate;-><init>(Ljava/util/Collection;Lcom/google/common/base/ak;)V

    return-object v0
.end method

.method static synthetic b()Lcom/google/common/base/x;
    .locals 1

    sget-object v0, Lcom/google/common/base/Predicates;->a:Lcom/google/common/base/x;

    return-object v0
.end method

.method private static c()Lcom/google/common/base/aj;
    .locals 1

    sget-object v0, Lcom/google/common/base/Predicates$ObjectPredicate;->IS_NULL:Lcom/google/common/base/Predicates$ObjectPredicate;

    invoke-virtual {v0}, Lcom/google/common/base/Predicates$ObjectPredicate;->withNarrowedType()Lcom/google/common/base/aj;

    move-result-object v0

    return-object v0
.end method
