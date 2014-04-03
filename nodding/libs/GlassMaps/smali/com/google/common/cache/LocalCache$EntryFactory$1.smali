.class final enum Lcom/google/common/cache/LocalCache$EntryFactory$1;
.super Lcom/google/common/cache/LocalCache$EntryFactory;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/cache/LocalCache$EntryFactory;-><init>(Ljava/lang/String;ILcom/google/common/cache/k;)V

    return-void
.end method


# virtual methods
.method final newEntry(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/y;)Lcom/google/common/cache/y;
    .locals 1

    new-instance v0, Lcom/google/common/cache/ad;

    invoke-direct {v0, p2, p3, p4}, Lcom/google/common/cache/ad;-><init>(Ljava/lang/Object;ILcom/google/common/cache/y;)V

    return-object v0
.end method
