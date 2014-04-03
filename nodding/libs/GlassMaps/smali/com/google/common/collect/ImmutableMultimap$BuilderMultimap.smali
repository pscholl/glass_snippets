.class Lcom/google/common/collect/ImmutableMultimap$BuilderMultimap;
.super Lcom/google/common/collect/AbstractMapBasedMultimap;


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lcom/google/common/collect/AbstractMapBasedMultimap;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method createCollection()Ljava/util/Collection;
    .locals 1

    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method
