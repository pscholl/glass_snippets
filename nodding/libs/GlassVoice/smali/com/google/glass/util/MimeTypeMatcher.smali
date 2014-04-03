.class public Lcom/google/glass/util/MimeTypeMatcher;
.super Ljava/lang/Object;
.source "MimeTypeMatcher.java"


# instance fields
.field public acceptsAll:Z

.field public baseTypeMatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public fullMatches:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/MimeTypeMatcher;->baseTypeMatches:Ljava/util/List;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/util/MimeTypeMatcher;->fullMatches:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMatchPattern(Ljava/lang/String;)Z
    .locals 8
    .parameter "pattern"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 28
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v4

    .line 33
    :cond_1
    const/16 v6, 0x3b

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 34
    .local v1, semiColonIndex:I
    if-ltz v1, :cond_2

    .line 35
    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 38
    :cond_2
    const/16 v6, 0x2f

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 39
    .local v2, slashIndex:I
    if-lez v2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v2, v6, :cond_0

    .line 43
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, baseType:Ljava/lang/String;
    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, subType:Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 46
    const-string v4, "*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 47
    iput-boolean v5, p0, Lcom/google/glass/util/MimeTypeMatcher;->acceptsAll:Z

    move v4, v5

    .line 48
    goto :goto_0

    .line 50
    :cond_3
    iget-object v4, p0, Lcom/google/glass/util/MimeTypeMatcher;->baseTypeMatches:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v5

    .line 51
    goto :goto_0

    .line 52
    :cond_4
    const-string v6, "*"

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 55
    iget-object v4, p0, Lcom/google/glass/util/MimeTypeMatcher;->fullMatches:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v5

    .line 56
    goto :goto_0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 5
    .parameter "mimeType"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 64
    iget-boolean v4, p0, Lcom/google/glass/util/MimeTypeMatcher;->acceptsAll:Z

    if-eqz v4, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v2

    .line 67
    :cond_1
    if-nez p1, :cond_2

    move v2, v3

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    iget-object v4, p0, Lcom/google/glass/util/MimeTypeMatcher;->fullMatches:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    iget-object v4, p0, Lcom/google/glass/util/MimeTypeMatcher;->baseTypeMatches:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    .local v0, baseTypeMatch:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .end local v0           #baseTypeMatch:Ljava/lang/String;
    :cond_4
    move v2, v3

    .line 78
    goto :goto_0
.end method
